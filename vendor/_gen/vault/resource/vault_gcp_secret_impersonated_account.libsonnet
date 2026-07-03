{
  new(terraformName, backend, impersonated_account, service_account_email):: {
    _type:: 'tf',
    resource+: {
      vault_gcp_secret_impersonated_account+: { [terraformName]+: {
        backend: backend,
        impersonated_account: impersonated_account,
        service_account_email: service_account_email,
      } },
    },
    '#withBackend': { 'function': { help: |||
      Path where the GCP secrets engine is mounted. 
    ||| } },
    withBackend(value):: self {
      resource+: {
        vault_gcp_secret_impersonated_account+: { [terraformName]+: { backend: value } },
      },
    },
    withId(value):: self {
      resource+: {
        vault_gcp_secret_impersonated_account+: { [terraformName]+: { id: value } },
      },
    },
    '#withImpersonatedAccount': { 'function': { help: |||
      Name of the Impersonated Account to create 
    ||| } },
    withImpersonatedAccount(value):: self {
      resource+: {
        vault_gcp_secret_impersonated_account+: { [terraformName]+: { impersonated_account: value } },
      },
    },
    '#withNamespace': { 'function': { help: |||
      Target namespace. (requires Enterprise) 
    ||| } },
    withNamespace(value):: self {
      resource+: {
        vault_gcp_secret_impersonated_account+: { [terraformName]+: { namespace: value } },
      },
    },
    '#withServiceAccountEmail': { 'function': { help: |||
      Email of the GCP service account. 
    ||| } },
    withServiceAccountEmail(value):: self {
      resource+: {
        vault_gcp_secret_impersonated_account+: { [terraformName]+: { service_account_email: value } },
      },
    },
    '#withServiceAccountProject': { 'function': { help: |||
      Project of the GCP Service Account managed by this impersonated account 
    ||| } },
    withServiceAccountProject(value):: self {
      resource+: {
        vault_gcp_secret_impersonated_account+: { [terraformName]+: { service_account_project: value } },
      },
    },
    '#withTokenScopes': { 'function': { help: |||
      List of OAuth scopes to assign to `access_token` secrets generated under this impersonated account (`access_token` impersonated accounts only)  
    ||| } },
    withTokenScopes(value):: self {
      resource+: {
        vault_gcp_secret_impersonated_account+: { [terraformName]+: { token_scopes: value } },
      },
    },
    '#withTtl': { 'function': { help: |||
      Time to live. 
    ||| } },
    withTtl(value):: self {
      resource+: {
        vault_gcp_secret_impersonated_account+: { [terraformName]+: { ttl: value } },
      },
    },
  },
}
