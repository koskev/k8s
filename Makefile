AUTHENTIK_TF_FILE=tf/authentik/main.tf.json
VAULT_ADDR?="https://vault.kokev.de"

.PHONY: all
all: apply

build-authentik:
	jsonnet ./tf/authentik/main.jsonnet -J tf/authentik -J lib > $(AUTHENTIK_TF_FILE)

apply-authentik: build-authentik login
	tofu -chdir=tf/authentik init
	tofu -chdir=tf/authentik apply

%-openbao: login
	tofu -chdir=tf/openbao $*

.PHONY: login
login:
	bao token lookup || bao login -method=oidc 

.PHONY: apply
apply: apply-openbao

.PHONY: plan
plan: plan-openbao


.PHONY: clean
clean:
	rm $(AUTHENTIK_TF_FILE)

.PHONY: test
test:

