{
  new(terraformName, backend):: {
    _type:: 'tf',
    resource+: {
      vault_pki_secret_backend_config_cluster+: { [terraformName]+: {
        backend: backend,
      } },
    },
    withBackend(value):: self {
      resource+: {
        vault_pki_secret_backend_config_cluster+: { [terraformName]+: { backend: value } },
      },
    },
    withPath(value):: self {
      resource+: {
        vault_pki_secret_backend_config_cluster+: { [terraformName]+: { path: value } },
      },
    },
    withNamespace(value):: self {
      resource+: {
        vault_pki_secret_backend_config_cluster+: { [terraformName]+: { namespace: value } },
      },
    },
    withAiaPath(value):: self {
      resource+: {
        vault_pki_secret_backend_config_cluster+: { [terraformName]+: { aia_path: value } },
      },
    },
    withId(value):: self {
      resource+: {
        vault_pki_secret_backend_config_cluster+: { [terraformName]+: { id: value } },
      },
    },
  },
}
