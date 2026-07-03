{
  new(terraformName, backend, service_account_email, static_account):: {
    _type:: 'tf',
    resource+: {
      vault_gcp_secret_static_account+: { [terraformName]+: {
        backend: backend,
        service_account_email: service_account_email,
        static_account: static_account,
      } },
    },
    '#withBackend': { 'function': { help: |||
      Path where the GCP secrets engine is mounted. 
    ||| } },
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
    '#withNamespace': { 'function': { help: |||
      Target namespace. (requires Enterprise) 
    ||| } },
    withNamespace(value):: self {
      resource+: {
        vault_gcp_secret_static_account+: { [terraformName]+: { namespace: value } },
      },
    },
    '#withSecretType': { 'function': { help: |||
      Type of secret generated for this static account. Defaults to `access_token`. Accepted values: `access_token`, `service_account_key` 
    ||| } },
    withSecretType(value):: self {
      resource+: {
        vault_gcp_secret_static_account+: { [terraformName]+: { secret_type: value } },
      },
    },
    '#withServiceAccountEmail': { 'function': { help: |||
      Email of the GCP service account. 
    ||| } },
    withServiceAccountEmail(value):: self {
      resource+: {
        vault_gcp_secret_static_account+: { [terraformName]+: { service_account_email: value } },
      },
    },
    '#withServiceAccountProject': { 'function': { help: |||
      Project of the GCP Service Account managed by this static account 
    ||| } },
    withServiceAccountProject(value):: self {
      resource+: {
        vault_gcp_secret_static_account+: { [terraformName]+: { service_account_project: value } },
      },
    },
    '#withStaticAccount': { 'function': { help: |||
      Name of the Static Account to create 
    ||| } },
    withStaticAccount(value):: self {
      resource+: {
        vault_gcp_secret_static_account+: { [terraformName]+: { static_account: value } },
      },
    },
    '#withTokenScopes': { 'function': { help: |||
      List of OAuth scopes to assign to `access_token` secrets generated under this static account (`access_token` static accounts only)  
    ||| } },
    withTokenScopes(value):: self {
      resource+: {
        vault_gcp_secret_static_account+: { [terraformName]+: { token_scopes: value } },
      },
    },
  },
}
