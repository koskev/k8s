{
  new(terraformName, name):: {
    _type:: 'tf',
    resource+: {
      vault_terraform_cloud_secret_role+: { [terraformName]+: {
        name: name,
      } },
    },
    withTeamId(value):: self {
      resource+: {
        vault_terraform_cloud_secret_role+: { [terraformName]+: { team_id: value } },
      },
    },
    withBackend(value):: self {
      resource+: {
        vault_terraform_cloud_secret_role+: { [terraformName]+: { backend: value } },
      },
    },
    withDescription(value):: self {
      resource+: {
        vault_terraform_cloud_secret_role+: { [terraformName]+: { description: value } },
      },
    },
    withNamespace(value):: self {
      resource+: {
        vault_terraform_cloud_secret_role+: { [terraformName]+: { namespace: value } },
      },
    },
    withCredentialType(value):: self {
      resource+: {
        vault_terraform_cloud_secret_role+: { [terraformName]+: { credential_type: value } },
      },
    },
    withOrganization(value):: self {
      resource+: {
        vault_terraform_cloud_secret_role+: { [terraformName]+: { organization: value } },
      },
    },
    withTtl(value):: self {
      resource+: {
        vault_terraform_cloud_secret_role+: { [terraformName]+: { ttl: value } },
      },
    },
    withMaxTtl(value):: self {
      resource+: {
        vault_terraform_cloud_secret_role+: { [terraformName]+: { max_ttl: value } },
      },
    },
    withUserId(value):: self {
      resource+: {
        vault_terraform_cloud_secret_role+: { [terraformName]+: { user_id: value } },
      },
    },
    withName(value):: self {
      resource+: {
        vault_terraform_cloud_secret_role+: { [terraformName]+: { name: value } },
      },
    },
    withId(value):: self {
      resource+: {
        vault_terraform_cloud_secret_role+: { [terraformName]+: { id: value } },
      },
    },
  },
}
