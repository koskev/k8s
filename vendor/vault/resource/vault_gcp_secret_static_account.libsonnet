{
  new(terraformName, backend, static_account, service_account_email):: {
    _type:: 'tf',
    resource+: {
      vault_gcp_secret_static_account+: { [terraformName]+: {
        backend: backend,
        static_account: static_account,
        service_account_email: service_account_email,
      } },
    },
    withBackend(value):: self {
      resource+: {
        vault_gcp_secret_static_account+: { [terraformName]+: { backend: value } },
      },
    },
    withId(value):: self {
      resource+: {
        vault_gcp_secret_static_account+: { [terraformName]+: { id: value } },
      },
    },
    withSecretType(value):: self {
      resource+: {
        vault_gcp_secret_static_account+: { [terraformName]+: { secret_type: value } },
      },
    },
    withStaticAccount(value):: self {
      resource+: {
        vault_gcp_secret_static_account+: { [terraformName]+: { static_account: value } },
      },
    },
    withNamespace(value):: self {
      resource+: {
        vault_gcp_secret_static_account+: { [terraformName]+: { namespace: value } },
      },
    },
    withTokenScopes(value):: self {
      resource+: {
        vault_gcp_secret_static_account+: { [terraformName]+: { token_scopes: value } },
      },
    },
    withServiceAccountEmail(value):: self {
      resource+: {
        vault_gcp_secret_static_account+: { [terraformName]+: { service_account_email: value } },
      },
    },
    withServiceAccountProject(value):: self {
      resource+: {
        vault_gcp_secret_static_account+: { [terraformName]+: { service_account_project: value } },
      },
    },
  },
}
