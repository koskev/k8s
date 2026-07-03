{
  new(terraformName, backend, project, roleset):: {
    _type:: 'tf',
    resource+: {
      vault_gcp_secret_roleset+: { [terraformName]+: {
        backend: backend,
        project: project,
        roleset: roleset,
      } },
    },
    '#withBackend': { 'function': { help: |||
      Path where the GCP secrets engine is mounted. 
    ||| } },
    withBackend(value):: self {
      resource+: {
        vault_gcp_secret_roleset+: { [terraformName]+: { backend: value } },
      },
    },
    withId(value):: self {
      resource+: {
        vault_gcp_secret_roleset+: { [terraformName]+: { id: value } },
      },
    },
    '#withNamespace': { 'function': { help: |||
      Target namespace. (requires Enterprise) 
    ||| } },
    withNamespace(value):: self {
      resource+: {
        vault_gcp_secret_roleset+: { [terraformName]+: { namespace: value } },
      },
    },
    '#withProject': { 'function': { help: |||
      Name of the GCP project that this roleset's service account will belong to. 
    ||| } },
    withProject(value):: self {
      resource+: {
        vault_gcp_secret_roleset+: { [terraformName]+: { project: value } },
      },
    },
    '#withRoleset': { 'function': { help: |||
      Name of the RoleSet to create 
    ||| } },
    withRoleset(value):: self {
      resource+: {
        vault_gcp_secret_roleset+: { [terraformName]+: { roleset: value } },
      },
    },
    '#withSecretType': { 'function': { help: |||
      Type of secret generated for this role set. Defaults to `access_token`. Accepted values: `access_token`, `service_account_key` 
    ||| } },
    withSecretType(value):: self {
      resource+: {
        vault_gcp_secret_roleset+: { [terraformName]+: { secret_type: value } },
      },
    },
    '#withServiceAccountEmail': { 'function': { help: |||
      Email of the service account created by Vault for this Roleset 
    ||| } },
    withServiceAccountEmail(value):: self {
      resource+: {
        vault_gcp_secret_roleset+: { [terraformName]+: { service_account_email: value } },
      },
    },
    '#withTokenScopes': { 'function': { help: |||
      List of OAuth scopes to assign to `access_token` secrets generated under this role set (`access_token` role sets only)  
    ||| } },
    withTokenScopes(value):: self {
      resource+: {
        vault_gcp_secret_roleset+: { [terraformName]+: { token_scopes: value } },
      },
    },
  },
}
