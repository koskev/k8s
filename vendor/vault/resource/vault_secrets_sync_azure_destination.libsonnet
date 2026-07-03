{
  new(terraformName, name):: {
    _type:: 'tf',
    resource+: {
      vault_secrets_sync_azure_destination+: { [terraformName]+: {
        name: name,
      } },
    },
    withName(value):: self {
      resource+: {
        vault_secrets_sync_azure_destination+: { [terraformName]+: { name: value } },
      },
    },
    withAllowedIpv4Addresses(value):: self {
      resource+: {
        vault_secrets_sync_azure_destination+: { [terraformName]+: { allowed_ipv4_addresses: value } },
      },
    },
    withId(value):: self {
      resource+: {
        vault_secrets_sync_azure_destination+: { [terraformName]+: { id: value } },
      },
    },
    withAllowedPorts(value):: self {
      resource+: {
        vault_secrets_sync_azure_destination+: { [terraformName]+: { allowed_ports: value } },
      },
    },
    withDisableStrictNetworking(value):: self {
      resource+: {
        vault_secrets_sync_azure_destination+: { [terraformName]+: { disable_strict_networking: value } },
      },
    },
    withAllowedIpv6Addresses(value):: self {
      resource+: {
        vault_secrets_sync_azure_destination+: { [terraformName]+: { allowed_ipv6_addresses: value } },
      },
    },
    withGranularity(value):: self {
      resource+: {
        vault_secrets_sync_azure_destination+: { [terraformName]+: { granularity: value } },
      },
    },
    withIdentityTokenTtl(value):: self {
      resource+: {
        vault_secrets_sync_azure_destination+: { [terraformName]+: { identity_token_ttl: value } },
      },
    },
    withIdentityTokenKeyWo(value):: self {
      resource+: {
        vault_secrets_sync_azure_destination+: { [terraformName]+: { identity_token_key_wo: value } },
      },
    },
    withClientId(value):: self {
      resource+: {
        vault_secrets_sync_azure_destination+: { [terraformName]+: { client_id: value } },
      },
    },
    withClientSecret(value):: self {
      resource+: {
        vault_secrets_sync_azure_destination+: { [terraformName]+: { client_secret: value } },
      },
    },
    withTenantId(value):: self {
      resource+: {
        vault_secrets_sync_azure_destination+: { [terraformName]+: { tenant_id: value } },
      },
    },
    withType(value):: self {
      resource+: {
        vault_secrets_sync_azure_destination+: { [terraformName]+: { type: value } },
      },
    },
    withIdentityTokenKeyWoVersion(value):: self {
      resource+: {
        vault_secrets_sync_azure_destination+: { [terraformName]+: { identity_token_key_wo_version: value } },
      },
    },
    withIdentityTokenAudienceWo(value):: self {
      resource+: {
        vault_secrets_sync_azure_destination+: { [terraformName]+: { identity_token_audience_wo: value } },
      },
    },
    withIdentityTokenAudienceWoVersion(value):: self {
      resource+: {
        vault_secrets_sync_azure_destination+: { [terraformName]+: { identity_token_audience_wo_version: value } },
      },
    },
    withKeyVaultUri(value):: self {
      resource+: {
        vault_secrets_sync_azure_destination+: { [terraformName]+: { key_vault_uri: value } },
      },
    },
    withNamespace(value):: self {
      resource+: {
        vault_secrets_sync_azure_destination+: { [terraformName]+: { namespace: value } },
      },
    },
    withCustomTags(value):: self {
      resource+: {
        vault_secrets_sync_azure_destination+: { [terraformName]+: { custom_tags: value } },
      },
    },
    withCloud(value):: self {
      resource+: {
        vault_secrets_sync_azure_destination+: { [terraformName]+: { cloud: value } },
      },
    },
    withSecretNameTemplate(value):: self {
      resource+: {
        vault_secrets_sync_azure_destination+: { [terraformName]+: { secret_name_template: value } },
      },
    },
  },
}
