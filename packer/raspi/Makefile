all: env-NAME env-SECRET_ID env-ROLE_ID env-VAULT_ADDR
	mkdir -p build
	jsonnet ./debian-arm64.jsonnet > build/debian-arm64.json
	packer build -on-error ask build/debian-arm64.json

env-%:
	@ if [ "${${*}}" = "" ]; then \
		echo "Environment variable $* not set"; \
		exit 1; \
	fi

