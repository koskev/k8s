{
  new(terraformName, backend):: {
    _type:: 'tf',
    resource+: {
      vault_pki_secret_backend_config_issuers+: { [terraformName]+: {
        backend: backend,
      } },
    },
    '#withBackend':: { 'function': { help: |||
      Full path where PKI backend is mounted. 
    ||| } },
    withBackend(value):: self {
      resource+: {
        vault_pki_secret_backend_config_issuers+: { [terraformName]+: { backend: value } },
      },
    },
    '#withDefault':: { 'function': { help: |||
      Specifies the default issuer by ID. 
    ||| } },
    withDefault(value):: self {
      resource+: {
        vault_pki_secret_backend_config_issuers+: { [terraformName]+: { default: value } },
      },
    },
    '#withDefaultFollowsLatestIssuer':: { 'function': { help: |||
      Specifies whether a root creation or an issuer import operation updates the default issuer to the newly added issuer. 
    ||| } },
    withDefaultFollowsLatestIssuer(value):: self {
      resource+: {
        vault_pki_secret_backend_config_issuers+: { [terraformName]+: { default_follows_latest_issuer: value } },
      },
    },
    withId(value):: self {
      resource+: {
        vault_pki_secret_backend_config_issuers+: { [terraformName]+: { id: value } },
      },
    },
    '#withNamespace':: { 'function': { help: |||
      Target namespace. (requires Enterprise) 
    ||| } },
    withNamespace(value):: self {
      resource+: {
        vault_pki_secret_backend_config_issuers+: { [terraformName]+: { namespace: value } },
      },
    },
  },
}
