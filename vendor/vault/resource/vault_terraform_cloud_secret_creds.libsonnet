{
  new(terraformName, role, backend):: {
    _type:: 'tf',
    resource+: {
      vault_terraform_cloud_secret_creds+: { [terraformName]+: {
        role: role,
        backend: backend,
      } },
    },
    withToken(value):: self {
      resource+: {
        vault_terraform_cloud_secret_creds+: { [terraformName]+: { token: value } },
      },
    },
    withRole(value):: self {
      resource+: {
        vault_terraform_cloud_secret_creds+: { [terraformName]+: { role: value } },
      },
    },
    withLeaseId(value):: self {
      resource+: {
        vault_terraform_cloud_secret_creds+: { [terraformName]+: { lease_id: value } },
      },
    },
    withNamespace(value):: self {
      resource+: {
        vault_terraform_cloud_secret_creds+: { [terraformName]+: { namespace: value } },
      },
    },
    withTeamId(value):: self {
      resource+: {
        vault_terraform_cloud_secret_creds+: { [terraformName]+: { team_id: value } },
      },
    },
    withId(value):: self {
      resource+: {
        vault_terraform_cloud_secret_creds+: { [terraformName]+: { id: value } },
      },
    },
    withBackend(value):: self {
      resource+: {
        vault_terraform_cloud_secret_creds+: { [terraformName]+: { backend: value } },
      },
    },
    withTokenId(value):: self {
      resource+: {
        vault_terraform_cloud_secret_creds+: { [terraformName]+: { token_id: value } },
      },
    },
    withOrganization(value):: self {
      resource+: {
        vault_terraform_cloud_secret_creds+: { [terraformName]+: { organization: value } },
      },
    },
  },
}
