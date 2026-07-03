{
  new(terraformName, backend, service_account_email, impersonated_account):: {
    _type:: 'tf',
    resource+: {
      vault_gcp_secret_impersonated_account+: { [terraformName]+: {
        backend: backend,
        service_account_email: service_account_email,
        impersonated_account: impersonated_account,
      } },
    },
    withBackend(value):: self {
      resource+: {
        vault_gcp_secret_impersonated_account+: { [terraformName]+: { backend: value } },
      },
    },
    withServiceAccountProject(value):: self {
      resource+: {
        vault_gcp_secret_impersonated_account+: { [terraformName]+: { service_account_project: value } },
      },
    },
    withNamespace(value):: self {
      resource+: {
        vault_gcp_secret_impersonated_account+: { [terraformName]+: { namespace: value } },
      },
    },
    withServiceAccountEmail(value):: self {
      resource+: {
        vault_gcp_secret_impersonated_account+: { [terraformName]+: { service_account_email: value } },
      },
    },
    withTtl(value):: self {
      resource+: {
        vault_gcp_secret_impersonated_account+: { [terraformName]+: { ttl: value } },
      },
    },
    withImpersonatedAccount(value):: self {
      resource+: {
        vault_gcp_secret_impersonated_account+: { [terraformName]+: { impersonated_account: value } },
      },
    },
    withId(value):: self {
      resource+: {
        vault_gcp_secret_impersonated_account+: { [terraformName]+: { id: value } },
      },
    },
    withTokenScopes(value):: self {
      resource+: {
        vault_gcp_secret_impersonated_account+: { [terraformName]+: { token_scopes: value } },
      },
    },
  },
}
