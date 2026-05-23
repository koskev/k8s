AUTHENTIK_TF_FILE=tf/authentik/main.tf.json

.PHONY: all
all: apply

build-authentik:
	jsonnet ./tf/authentik/main.jsonnet -J tf/authentik -J lib > $(AUTHENTIK_TF_FILE)

apply-authentik: build-authentik
	tofu -chdir=tf/authentik init
	tofu -chdir=tf/authentik apply


.PHONY: apply
apply: apply-authentik


.PHONY: clean
clean:
	rm $(AUTHENTIK_TF_FILE)

.PHONY: test
test:

