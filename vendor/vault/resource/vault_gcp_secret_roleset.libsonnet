{
  new(terraformName, project, backend, roleset):: {
    _type:: 'tf',
    resource+: {
      vault_gcp_secret_roleset+: { [terraformName]+: {
        project: project,
        backend: backend,
        roleset: roleset,
      } },
    },
    withId(value):: self {
      resource+: {
        vault_gcp_secret_roleset+: { [terraformName]+: { id: value } },
      },
    },
    withNamespace(value):: self {
      resource+: {
        vault_gcp_secret_roleset+: { [terraformName]+: { namespace: value } },
      },
    },
    withSecretType(value):: self {
      resource+: {
        vault_gcp_secret_roleset+: { [terraformName]+: { secret_type: value } },
      },
    },
    withProject(value):: self {
      resource+: {
        vault_gcp_secret_roleset+: { [terraformName]+: { project: value } },
      },
    },
    withServiceAccountEmail(value):: self {
      resource+: {
        vault_gcp_secret_roleset+: { [terraformName]+: { service_account_email: value } },
      },
    },
    withBackend(value):: self {
      resource+: {
        vault_gcp_secret_roleset+: { [terraformName]+: { backend: value } },
      },
    },
    withTokenScopes(value):: self {
      resource+: {
        vault_gcp_secret_roleset+: { [terraformName]+: { token_scopes: value } },
      },
    },
    withRoleset(value):: self {
      resource+: {
        vault_gcp_secret_roleset+: { [terraformName]+: { roleset: value } },
      },
    },
  },
}
