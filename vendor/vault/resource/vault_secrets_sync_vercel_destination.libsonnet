{
  new(terraformName, name, project_id, deployment_environments, access_token):: {
    _type:: 'tf',
    resource+: {
      vault_secrets_sync_vercel_destination+: { [terraformName]+: {
        name: name,
        project_id: project_id,
        deployment_environments: deployment_environments,
        access_token: access_token,
      } },
    },
    withType(value):: self {
      resource+: {
        vault_secrets_sync_vercel_destination+: { [terraformName]+: { type: value } },
      },
    },
    withAllowedIpv4Addresses(value):: self {
      resource+: {
        vault_secrets_sync_vercel_destination+: { [terraformName]+: { allowed_ipv4_addresses: value } },
      },
    },
    withName(value):: self {
      resource+: {
        vault_secrets_sync_vercel_destination+: { [terraformName]+: { name: value } },
      },
    },
    withId(value):: self {
      resource+: {
        vault_secrets_sync_vercel_destination+: { [terraformName]+: { id: value } },
      },
    },
    withProjectId(value):: self {
      resource+: {
        vault_secrets_sync_vercel_destination+: { [terraformName]+: { project_id: value } },
      },
    },
    withAllowedIpv6Addresses(value):: self {
      resource+: {
        vault_secrets_sync_vercel_destination+: { [terraformName]+: { allowed_ipv6_addresses: value } },
      },
    },
    withDeploymentEnvironments(value):: self {
      resource+: {
        vault_secrets_sync_vercel_destination+: { [terraformName]+: { deployment_environments: value } },
      },
    },
    withDisableStrictNetworking(value):: self {
      resource+: {
        vault_secrets_sync_vercel_destination+: { [terraformName]+: { disable_strict_networking: value } },
      },
    },
    withSecretNameTemplate(value):: self {
      resource+: {
        vault_secrets_sync_vercel_destination+: { [terraformName]+: { secret_name_template: value } },
      },
    },
    withTeamId(value):: self {
      resource+: {
        vault_secrets_sync_vercel_destination+: { [terraformName]+: { team_id: value } },
      },
    },
    withAccessToken(value):: self {
      resource+: {
        vault_secrets_sync_vercel_destination+: { [terraformName]+: { access_token: value } },
      },
    },
    withAllowedPorts(value):: self {
      resource+: {
        vault_secrets_sync_vercel_destination+: { [terraformName]+: { allowed_ports: value } },
      },
    },
    withGranularity(value):: self {
      resource+: {
        vault_secrets_sync_vercel_destination+: { [terraformName]+: { granularity: value } },
      },
    },
    withNamespace(value):: self {
      resource+: {
        vault_secrets_sync_vercel_destination+: { [terraformName]+: { namespace: value } },
      },
    },
  },
}
