{
  new(terraformName, backend):: {
    _type:: 'tf',
    resource+: {
      vault_pki_secret_backend_config_issuers+: { [terraformName]+: {
        backend: backend,
      } },
    },
    withBackend(value):: self {
      resource+: {
        vault_pki_secret_backend_config_issuers+: { [terraformName]+: { backend: value } },
      },
    },
    withId(value):: self {
      resource+: {
        vault_pki_secret_backend_config_issuers+: { [terraformName]+: { id: value } },
      },
    },
    withDefaultFollowsLatestIssuer(value):: self {
      resource+: {
        vault_pki_secret_backend_config_issuers+: { [terraformName]+: { default_follows_latest_issuer: value } },
      },
    },
    withDefault(value):: self {
      resource+: {
        vault_pki_secret_backend_config_issuers+: { [terraformName]+: { default: value } },
      },
    },
    withNamespace(value):: self {
      resource+: {
        vault_pki_secret_backend_config_issuers+: { [terraformName]+: { namespace: value } },
      },
    },
  },
}
