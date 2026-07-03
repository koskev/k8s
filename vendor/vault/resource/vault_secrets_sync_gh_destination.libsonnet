{
  new(terraformName, name):: {
    _type:: 'tf',
    resource+: {
      vault_secrets_sync_gh_destination+: { [terraformName]+: {
        name: name,
      } },
    },
    withAllowedIpv4Addresses(value):: self {
      resource+: {
        vault_secrets_sync_gh_destination+: { [terraformName]+: { allowed_ipv4_addresses: value } },
      },
    },
    withRepositoryOwner(value):: self {
      resource+: {
        vault_secrets_sync_gh_destination+: { [terraformName]+: { repository_owner: value } },
      },
    },
    withAllowedPorts(value):: self {
      resource+: {
        vault_secrets_sync_gh_destination+: { [terraformName]+: { allowed_ports: value } },
      },
    },
    withRepositoryName(value):: self {
      resource+: {
        vault_secrets_sync_gh_destination+: { [terraformName]+: { repository_name: value } },
      },
    },
    withName(value):: self {
      resource+: {
        vault_secrets_sync_gh_destination+: { [terraformName]+: { name: value } },
      },
    },
    withEnvironmentName(value):: self {
      resource+: {
        vault_secrets_sync_gh_destination+: { [terraformName]+: { environment_name: value } },
      },
    },
    withType(value):: self {
      resource+: {
        vault_secrets_sync_gh_destination+: { [terraformName]+: { type: value } },
      },
    },
    withSecretsLocation(value):: self {
      resource+: {
        vault_secrets_sync_gh_destination+: { [terraformName]+: { secrets_location: value } },
      },
    },
    withId(value):: self {
      resource+: {
        vault_secrets_sync_gh_destination+: { [terraformName]+: { id: value } },
      },
    },
    withDisableStrictNetworking(value):: self {
      resource+: {
        vault_secrets_sync_gh_destination+: { [terraformName]+: { disable_strict_networking: value } },
      },
    },
    withSecretNameTemplate(value):: self {
      resource+: {
        vault_secrets_sync_gh_destination+: { [terraformName]+: { secret_name_template: value } },
      },
    },
    withNamespace(value):: self {
      resource+: {
        vault_secrets_sync_gh_destination+: { [terraformName]+: { namespace: value } },
      },
    },
    withAllowedIpv6Addresses(value):: self {
      resource+: {
        vault_secrets_sync_gh_destination+: { [terraformName]+: { allowed_ipv6_addresses: value } },
      },
    },
    withGranularity(value):: self {
      resource+: {
        vault_secrets_sync_gh_destination+: { [terraformName]+: { granularity: value } },
      },
    },
    withInstallationId(value):: self {
      resource+: {
        vault_secrets_sync_gh_destination+: { [terraformName]+: { installation_id: value } },
      },
    },
    withAccessToken(value):: self {
      resource+: {
        vault_secrets_sync_gh_destination+: { [terraformName]+: { access_token: value } },
      },
    },
    withAppName(value):: self {
      resource+: {
        vault_secrets_sync_gh_destination+: { [terraformName]+: { app_name: value } },
      },
    },
  },
}
