build-%: env-SECRET_ID env-ROLE_ID 
	mkdir -p build
	jsonnet --ext-code PARAMS="{secret_id: \"${SECRET_ID}\", role_id: \"${ROLE_ID}\"}" ./configs/$*.jsonnet > build/build.json
	packer build -on-error ask build/build.json

get-id-%:
	bao read auth/approle/role/$*/role-id
	bao write -f auth/approle/role/$*/secret-id

env-%:
	@ if [ "${${*}}" = "" ]; then \
		echo "Environment variable $* not set"; \
		exit 1; \
	fi

