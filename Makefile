AUTHENTIK_TF_FILE = tf/authentik/main.tf.json
VAULT_ADDR ?= "https://vault.kokev.de"
BUILD_DIR ?= build

.PHONY: all
all: apply

build-authentik:
	jsonnet ./tf/authentik/main.jsonnet -J tf/authentik -J lib > $(AUTHENTIK_TF_FILE)

apply-authentik: build-authentik login
	tofu -chdir=tf/authentik init
	tofu -chdir=tf/authentik apply

%-openbao: login
	tofu -chdir=tf/openbao $*

tf-%: login
	tofu -chdir=$(BUILD_DIR) $*


ENTRYPOINTS := $(subst ./,,$(shell find ./argocd -name 'entrypoint.jsonnet'))
TF_JSON_FILES := $(addprefix $(BUILD_DIR)/,$(subst /,__,$(ENTRYPOINTS:.jsonnet=.tf.json)))
SCRIPT_FILES := $(addprefix $(BUILD_DIR)/,$(subst /,__,$(ENTRYPOINTS:.jsonnet=.sh)))

.PHONY: FORCE
FORCE:

.SECONDEXPANSION:
$(BUILD_DIR)/%.tf.json : $$(shell echo $$* | tr '__' '/').jsonnet FORCE
	@mkdir -p $(dir $@)
	jsonnet -J . -J lib --tla-str type="tf" $< | jq -e 'select((. | length) > 0)' > $@ || rm $@

$(BUILD_DIR)/%.sh : $$(shell echo $$* | tr '__' '/').jsonnet FORCE
	@mkdir -p $(dir $@)
	jsonnet -J . -J lib --tla-str type="script" $< | jq -e -r 'select((. | length) > 0) | .[]' > $@ || rm $@

.PHONY: build
build: $(TF_JSON_FILES) $(SCRIPT_FILES)
	ln -sf $$(pwd)/tf/openbao/* $(BUILD_DIR)
	sh $(BUILD_DIR)/*.sh

.PHONY: login
login:
	bao token lookup || bao login -method=oidc 

.PHONY: apply
apply: build tf-apply

.PHONY: plan
plan: build tf-plan

.PHONY: init
init: build tf-init


.PHONY: clean
clean:
	rm -r $(BUILD_DIR)

.PHONY: test
test:

