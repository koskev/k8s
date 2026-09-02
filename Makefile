AUTHENTIK_TF_FILE = tf/authentik/main.tf.json
CONFIG ?= test
VAULT_ADDR ?= "https://vault.kokev.de"
BUILD_DIR ?= build/$(CONFIG)
TF_STAGE ?= kubernetes
TF_BUILD_DIR ?= $(BUILD_DIR)/tf/$(TF_STAGE)
BRANCH ?= $(shell git rev-parse --abbrev-ref HEAD)
MERGED_CONFIG ?= (import 'defaultInput.libsonnet') + (import 'argocd/clusters/$(CONFIG)/config_$(CONFIG).libsonnet')

LOCKFILE_LOCATION ?= ./tf/$(CONFIG)/$(TF_STAGE)

.PHONY: all
all: apply

tf-%-nologin:
	VAULT_ADDR=$(VAULT_ADDR) DESEC_API_TOKEN=$$(bao kv get -field=token system/desec-terraform) tofu -chdir=$(TF_BUILD_DIR) $* $$EXTRA_PARAMS
	@mkdir -p $(LOCKFILE_LOCATION)
	cp $(TF_BUILD_DIR)/.terraform.lock.hcl $(LOCKFILE_LOCATION)/

# Terraform is so nice that it just blindly overrides symlinks AND hardlinks....
# Therefore we just copy it back to have any changes in git
.PHONY: tf-%
tf-%: login tf-%-nologin
	echo "hi"


ENTRYPOINTS := $(subst ./,,$(shell find ./argocd -name 'entrypoint.jsonnet'))
CONFIGS := $(subst ./,,$(shell find ./argocd -name 'config.libsonnet'))
TF_JSON_FILES := $(addprefix $(TF_BUILD_DIR)/,$(subst /,__,$(ENTRYPOINTS:.jsonnet=.tf.json)))
SCRIPT_FILES := $(addprefix $(BUILD_DIR)/,$(subst /,__,$(ENTRYPOINTS:.jsonnet=.sh)))
JSONNET_FILES := $(shell find ./argocd -name '*.*sonnet')

.PHONY: FORCE
FORCE:

$(TF_BUILD_DIR)/%.tf.json: $(JSONNET_FILES)
	@mkdir -p $(dir $@)
	jsonnet -J . -J lib --ext-str ARGOCD_BRANCH="$(BRANCH)" --tla-str type="tf" --tla-code input="$(MERGED_CONFIG)" --tla-str tfStage="$(TF_STAGE)" $$(echo $*.jsonnet | sed "s/__/\//g") > $@

$(BUILD_DIR)/%.sh: $(JSONNET_FILES)
	@mkdir -p $(dir $@)
	jsonnet -J . -J lib --ext-str ARGOCD_BRANCH="$(BRANCH)" --tla-str type="script" $$(echo $*.jsonnet | sed "s/__/\//g") | jq -r '.[]' > $@

config: $(CONFIGS)
	./scripts/build_config.py $^ > lib/defaultConfig.libsonnet

$(TF_BUILD_DIR)/bootstrap/providers.tf.json:
	@mkdir -p $(dir $@)
	echo "{terraform: {required_providers: (import 'lib/images.libsonnet').tf}}" | jsonnet - > $@

generate: $(TF_BUILD_DIR)/bootstrap/providers.tf.json
	tofu -chdir=$(dir $<) init
	terraform-jsonnet-gen -t $(dir $<) -o vendor/_gen

.PHONY: build
build: $(TF_JSON_FILES) $(SCRIPT_FILES) $(TF_BUILD_DIR)/$(subst /,__,argocd/clusters/$(CONFIG)/root.tf.json)
	ln -sf $$(pwd)/tf/openbao/* $(TF_BUILD_DIR)
	sh $(BUILD_DIR)/*.sh

.PHONY: login
login:
	VAULT_ADDR=$(VAULT_ADDR) bao token lookup || VAULT_ADDR=$(VAULT_ADDR) bao login -method=oidc

.PHONY: lint-tf
lint-tf: build
	tflint --chdir $(BUILD_DIR)

.PHONY: lint-jsonnet
lint-jsonnet: 
	grustonnet-lint -j . -j lib argocd lib

.PHONY: apply
apply: build tf-apply

.PHONY: plan
plan: build tf-plan

.PHONY: init
init: build tf-init-nologin

renovate.json: renovate.jsonnet
	jsonnet ./renovate.jsonnet > renovate.json


.PHONY: clean
clean:
	rm -r $(BUILD_DIR)

.PHONY: test
test:


.PHONY: reconcile-pause
reconcile-pause:
	kubectl -n argocd annotate secret argocd-secret argocd.argoproj.io/skip-reconcile=true
.PHONY: reconcile-resume
reconcile-resume:
	kubectl -n argocd annotate secret argocd-secret argocd.argoproj.io/skip-reconcile-


.PHONY: kind
kind:
	kind create cluster --name kind
	@[[ $$(podman inspect kind-control-plane --format '{{.HostConfig.PidsLimit}}') > 3000 ]] || echo "PID limit of podman it too low. Increase it if you run into any errors"
	podman ps -q --filter "label=io.x-k8s.kind.cluster=kind" | xargs -I {} podman exec {} mkdir /var/lib/postgres{1,2,3}
	nohup cloud-provider-kind --enable-lb-port-mapping &
	kind export kubeconfig --name kind
	kubectl apply -f ./test/coredns.yaml
	kubectl rollout restart deployment coredns -n kube-system
	VAULT_SKIP_VERIFY=true VAULT_ADDR="https://vault.0--1.nip.io" TF_STAGE="bootstrap" CONFIG="test" make init
	VAULT_SKIP_VERIFY=true VAULT_ADDR="https://vault.0--1.nip.io" TF_STAGE="bootstrap" CONFIG="test" make tf-apply-nologin
	kubectl wait --for=create namespace/ingress-traefik-external --timeout=5m
	kubectl -n ingress-traefik-external wait --for=create deployment/ingress-traefik-external --timeout=15m
	kubectl -n ingress-traefik-external rollout status deployment/ingress-traefik-external --timeout=15m
	./scripts/nft.sh
	# Make sure the vault is live and initialized
	kubectl -n openbao wait --for=create secret openbao-unsealer-secret --timeout=15m
	kubectl -n openbao rollout restart deployment openbao-unsealer-vault-unsealer
	kubectl -n openbao rollout status statefulset/openbao --timeout=15m
	VAULT_TOKEN=$$(kubectl -n openbao get secret openbao-unsealer-secret -o json | jq -r '.data.root_token' | base64 -d) VAULT_SKIP_VERIFY=true VAULT_ADDR="https://vault.0--1.nip.io" TF_STAGE="kubernetes" CONFIG="test" make init

	# Apply basic stuff only
	EXTRA_PARAMS="-target=vault_kv_secret_v2.secrets -target=vault_kubernetes_auth_backend_role.external-secrets -target=vault_policy.external-secrets -target=vault_kubernetes_auth_backend_config.example" VAULT_TOKEN=$$(kubectl -n openbao get secret openbao-unsealer-secret -o json | jq -r '.data.root_token' | base64 -d) VAULT_SKIP_VERIFY=true VAULT_ADDR="https://vault.0--1.nip.io" TF_STAGE="kubernetes" CONFIG="test" make apply
	# Restart the eso to force a reconcile
	kubectl -n external-secrets rollout restart deployment external-secrets
	# Make sure authelia lives for oidc
	kubectl -n authelia rollout restart deployment authelia
	kubectl -n authelia rollout status deployment authelia --timeout=15m
	VAULT_TOKEN=$$(kubectl -n openbao get secret openbao-unsealer-secret -o json | jq -r '.data.root_token' | base64 -d) VAULT_SKIP_VERIFY=true VAULT_ADDR="https://vault.0--1.nip.io" TF_STAGE="kubernetes" CONFIG="test" make apply

.PHONY: kind-destroy
kind-destroy:
	killall cloud-provider-kind || true
	kind delete cluster --name kind
