AUTHENTIK_TF_FILE = tf/authentik/main.tf.json
VAULT_ADDR ?= "https://vault.kokev.de"
BUILD_DIR ?= build

LOCKFILE_LOCATION ?= ./tf/openbao/

.PHONY: all
all: apply

# Terraform is so nice that it just blindly overrides symlinks AND hardlinks....
# Therefore we just copy it back to have any changes in git
tf-%: login
	tofu -chdir=$(BUILD_DIR) $*
	cp $(BUILD_DIR)/.terraform.lock.hcl $(LOCKFILE_LOCATION)/


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

