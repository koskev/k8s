CONFIG ?= home
VAULT_ADDR ?= "https://vault.kokev.de"
BUILD_DIR ?= build/$(CONFIG)
TF_STAGE ?= kubernetes
TF_BUILD_DIR ?= $(BUILD_DIR)/tf/$(TF_STAGE)
SH_BUILD_DIR ?= $(BUILD_DIR)/script
K8S_BUILD_DIR ?= $(BUILD_DIR)/k8s
BRANCH ?= $(shell git rev-parse --abbrev-ref HEAD)
MERGED_CONFIG ?= (import 'defaultInput.libsonnet') + (import 'argocd/clusters/$(CONFIG)/config_$(CONFIG).libsonnet')

LOCKFILE_LOCATION ?= ./tf/$(CONFIG)/$(TF_STAGE)

.PHONY: all
all: apply

tf-%-nologin:
	@mkdir -p $(LOCKFILE_LOCATION)
	cp $(LOCKFILE_LOCATION)/.terraform.lock.hcl $(TF_BUILD_DIR)/ || true
	VAULT_ADDR=$(VAULT_ADDR) DESEC_API_TOKEN=$$(bao kv get -field=token system/desec-terraform) tofu -chdir=$(TF_BUILD_DIR) $* $$EXTRA_PARAMS
	cp $(TF_BUILD_DIR)/.terraform.lock.hcl $(LOCKFILE_LOCATION)/

tf-shell:
	cd "$(TF_BUILD_DIR)" && VAULT_ADDR=$(VAULT_ADDR) DESEC_API_TOKEN=$$(bao kv get -field=token system/desec-terraform) $$SHELL


# Terraform is so nice that it just blindly overrides symlinks AND hardlinks....
# Therefore we just copy it back to have any changes in git
.PHONY: tf-%
tf-%: login tf-%-nologin
	@:

ENTRYPOINTS := $(subst ./,,$(shell find ./argocd -name 'entrypoint.jsonnet'))
CONFIGS := $(subst ./,,$(shell find ./argocd -name 'config.libsonnet'))
TF_JSON_FILES := $(addprefix $(TF_BUILD_DIR)/,$(subst /,__,$(ENTRYPOINTS:.jsonnet=.tf.json)))
SCRIPT_FILES := $(addprefix $(SH_BUILD_DIR)/,$(subst /,__,$(ENTRYPOINTS:.jsonnet=.sh)))
K8S_FILES := $(addprefix $(K8S_BUILD_DIR)/,$(subst /,__,$(ENTRYPOINTS:.jsonnet=.k8s.json)))
JSONNET_FILES := $(shell find ./argocd -name '*.*sonnet')

BASE_JSONNET_CMD := jsonnet -J . -J lib --ext-str ARGOCD_BRANCH="$(BRANCH)" --tla-code input="$(MERGED_CONFIG)"

.PHONY: FORCE
FORCE:

$(TF_BUILD_DIR)/%.tf.json: $(JSONNET_FILES)
	@mkdir -p $(dir $@)
	$(BASE_JSONNET_CMD) --tla-str type="tf" --tla-str tfStage="$(TF_STAGE)" $$(echo $*.jsonnet | sed "s/__/\//g") > $@

$(K8S_BUILD_DIR)/%.k8s.json: $(JSONNET_FILES)
	@mkdir -p $(dir $@)
	$(BASE_JSONNET_CMD) --tla-str type="argocd" $$(echo $*.jsonnet | sed "s/__/\//g") > $@

$(SH_BUILD_DIR)/%.sh: $(JSONNET_FILES)
	@mkdir -p $(dir $@)
	$(BASE_JSONNET_CMD) --tla-str type="script" $$(echo $*.jsonnet | sed "s/__/\//g") | jq -r '.[]' > $@

config: $(CONFIGS)
	./scripts/build_config.py $^ > lib/defaultConfig.libsonnet

$(TF_BUILD_DIR)/bootstrap/providers.tf.json:
	@mkdir -p $(dir $@)
	echo "{terraform: {required_providers: (import 'lib/images.libsonnet').tf}}" | jsonnet - > $@

generate: $(TF_BUILD_DIR)/bootstrap/providers.tf.json
	tofu -chdir=$(dir $<) init
	terraform-jsonnet-gen -t $(dir $<) -o vendor/_gen

.PHONY: build
build: $(TF_JSON_FILES) $(SCRIPT_FILES) $(K8S_FILES) $(TF_BUILD_DIR)/$(subst /,__,argocd/clusters/$(CONFIG)/root.tf.json)
	ln -sf $$(pwd)/tf/openbao/* $(TF_BUILD_DIR)
	sh $(SH_BUILD_DIR)/*.sh

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
init: build
	EXTRA_PARAMS="-lockfile=readonly" $(MAKE) tf-init-nologin

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
	./scripts/kind_cluster.sh

.PHONY: minikube
minikube:
	./scripts/minikube_cluster.sh

.PHONY: kind-destroy
kind-destroy:
	podman stop kind-metallb-proxy
	kind delete cluster --name kind


.PHONY: update-locks
update-locks:
	./scripts/upgrade_providers.sh
