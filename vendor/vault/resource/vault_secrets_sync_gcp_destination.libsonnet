{
  new(terraformName, name):: {
    _type:: 'tf',
    resource+: {
      vault_secrets_sync_gcp_destination+: { [terraformName]+: {
        name: name,
      } },
    },
    withDisableStrictNetworking(value):: self {
      resource+: {
        vault_secrets_sync_gcp_destination+: { [terraformName]+: { disable_strict_networking: value } },
      },
    },
    withProjectId(value):: self {
      resource+: {
        vault_secrets_sync_gcp_destination+: { [terraformName]+: { project_id: value } },
      },
    },
    withIdentityTokenTtl(value):: self {
      resource+: {
        vault_secrets_sync_gcp_destination+: { [terraformName]+: { identity_token_ttl: value } },
      },
    },
    withServiceAccountEmail(value):: self {
      resource+: {
        vault_secrets_sync_gcp_destination+: { [terraformName]+: { service_account_email: value } },
      },
    },
    withIdentityTokenAudienceWoVersion(value):: self {
      resource+: {
        vault_secrets_sync_gcp_destination+: { [terraformName]+: { identity_token_audience_wo_version: value } },
      },
    },
    withLocationalKmsKeys(value):: self {
      resource+: {
        vault_secrets_sync_gcp_destination+: { [terraformName]+: { locational_kms_keys: value } },
      },
    },
    withCredentials(value):: self {
      resource+: {
        vault_secrets_sync_gcp_destination+: { [terraformName]+: { credentials: value } },
      },
    },
    withCustomTags(value):: self {
      resource+: {
        vault_secrets_sync_gcp_destination+: { [terraformName]+: { custom_tags: value } },
      },
    },
    withSecretNameTemplate(value):: self {
      resource+: {
        vault_secrets_sync_gcp_destination+: { [terraformName]+: { secret_name_template: value } },
      },
    },
    withReplicationLocations(value):: self {
      resource+: {
        vault_secrets_sync_gcp_destination+: { [terraformName]+: { replication_locations: value } },
      },
    },
    withIdentityTokenKeyWoVersion(value):: self {
      resource+: {
        vault_secrets_sync_gcp_destination+: { [terraformName]+: { identity_token_key_wo_version: value } },
      },
    },
    withIdentityTokenAudienceWo(value):: self {
      resource+: {
        vault_secrets_sync_gcp_destination+: { [terraformName]+: { identity_token_audience_wo: value } },
      },
    },
    withName(value):: self {
      resource+: {
        vault_secrets_sync_gcp_destination+: { [terraformName]+: { name: value } },
      },
    },
    withIdentityTokenKeyWo(value):: self {
      resource+: {
        vault_secrets_sync_gcp_destination+: { [terraformName]+: { identity_token_key_wo: value } },
      },
    },
    withNamespace(value):: self {
      resource+: {
        vault_secrets_sync_gcp_destination+: { [terraformName]+: { namespace: value } },
      },
    },
    withAllowedIpv6Addresses(value):: self {
      resource+: {
        vault_secrets_sync_gcp_destination+: { [terraformName]+: { allowed_ipv6_addresses: value } },
      },
    },
    withGranularity(value):: self {
      resource+: {
        vault_secrets_sync_gcp_destination+: { [terraformName]+: { granularity: value } },
      },
    },
    withId(value):: self {
      resource+: {
        vault_secrets_sync_gcp_destination+: { [terraformName]+: { id: value } },
      },
    },
    withGlobalKmsKey(value):: self {
      resource+: {
        vault_secrets_sync_gcp_destination+: { [terraformName]+: { global_kms_key: value } },
      },
    },
    withAllowedIpv4Addresses(value):: self {
      resource+: {
        vault_secrets_sync_gcp_destination+: { [terraformName]+: { allowed_ipv4_addresses: value } },
      },
    },
    withAllowedPorts(value):: self {
      resource+: {
        vault_secrets_sync_gcp_destination+: { [terraformName]+: { allowed_ports: value } },
      },
    },
    withType(value):: self {
      resource+: {
        vault_secrets_sync_gcp_destination+: { [terraformName]+: { type: value } },
      },
    },
  },
}
