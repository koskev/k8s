{
  new(terraformName, public_key, mount):: {
    _type:: 'tf',
    resource+: {
      vault_mongodbatlas_secret_backend+: { [terraformName]+: {
        public_key: public_key,
        mount: mount,
      } },
    },
    withPrivateKeyWoVersion(value):: self {
      resource+: {
        vault_mongodbatlas_secret_backend+: { [terraformName]+: { private_key_wo_version: value } },
      },
    },
    withPrivateKeyWo(value):: self {
      resource+: {
        vault_mongodbatlas_secret_backend+: { [terraformName]+: { private_key_wo: value } },
      },
    },
    withNamespace(value):: self {
      resource+: {
        vault_mongodbatlas_secret_backend+: { [terraformName]+: { namespace: value } },
      },
    },
    withId(value):: self {
      resource+: {
        vault_mongodbatlas_secret_backend+: { [terraformName]+: { id: value } },
      },
    },
    withPublicKey(value):: self {
      resource+: {
        vault_mongodbatlas_secret_backend+: { [terraformName]+: { public_key: value } },
      },
    },
    withPrivateKey(value):: self {
      resource+: {
        vault_mongodbatlas_secret_backend+: { [terraformName]+: { private_key: value } },
      },
    },
    withMount(value):: self {
      resource+: {
        vault_mongodbatlas_secret_backend+: { [terraformName]+: { mount: value } },
      },
    },
    withPath(value):: self {
      resource+: {
        vault_mongodbatlas_secret_backend+: { [terraformName]+: { path: value } },
      },
    },
  },
}
