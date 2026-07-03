{
  new(terraformName, backend):: {
    _type:: 'tf',
    resource+: {
      vault_pki_secret_backend_config_cluster+: { [terraformName]+: {
        backend: backend,
      } },
    },
    '#withAiaPath': { 'function': { help: |||
      Path to the cluster's AIA distribution point. 
    ||| } },
    withAiaPath(value):: self {
      resource+: {
        vault_pki_secret_backend_config_cluster+: { [terraformName]+: { aia_path: value } },
      },
    },
    '#withBackend': { 'function': { help: |||
      Full path where PKI backend is mounted. 
    ||| } },
    withBackend(value):: self {
      resource+: {
        vault_pki_secret_backend_config_cluster+: { [terraformName]+: { backend: value } },
      },
    },
    withId(value):: self {
      resource+: {
        vault_pki_secret_backend_config_cluster+: { [terraformName]+: { id: value } },
      },
    },
    '#withNamespace': { 'function': { help: |||
      Target namespace. (requires Enterprise) 
    ||| } },
    withNamespace(value):: self {
      resource+: {
        vault_pki_secret_backend_config_cluster+: { [terraformName]+: { namespace: value } },
      },
    },
    '#withPath': { 'function': { help: |||
      Path to the cluster's API mount path. 
    ||| } },
    withPath(value):: self {
      resource+: {
        vault_pki_secret_backend_config_cluster+: { [terraformName]+: { path: value } },
      },
    },
  },
}
