{
  new(terraformName, name):: {
    _type:: 'tf',
    resource+: {
      vault_secrets_sync_aws_destination+: { [terraformName]+: {
        name: name,
      } },
    },
    withAllowedIpv6Addresses(value):: self {
      resource+: {
        vault_secrets_sync_aws_destination+: { [terraformName]+: { allowed_ipv6_addresses: value } },
      },
    },
    withIdentityTokenAudienceWoVersion(value):: self {
      resource+: {
        vault_secrets_sync_aws_destination+: { [terraformName]+: { identity_token_audience_wo_version: value } },
      },
    },
    withSecretAccessKey(value):: self {
      resource+: {
        vault_secrets_sync_aws_destination+: { [terraformName]+: { secret_access_key: value } },
      },
    },
    withSecretNameTemplate(value):: self {
      resource+: {
        vault_secrets_sync_aws_destination+: { [terraformName]+: { secret_name_template: value } },
      },
    },
    withId(value):: self {
      resource+: {
        vault_secrets_sync_aws_destination+: { [terraformName]+: { id: value } },
      },
    },
    withIdentityTokenAudienceWo(value):: self {
      resource+: {
        vault_secrets_sync_aws_destination+: { [terraformName]+: { identity_token_audience_wo: value } },
      },
    },
    withName(value):: self {
      resource+: {
        vault_secrets_sync_aws_destination+: { [terraformName]+: { name: value } },
      },
    },
    withRoleArn(value):: self {
      resource+: {
        vault_secrets_sync_aws_destination+: { [terraformName]+: { role_arn: value } },
      },
    },
    withIdentityTokenKeyWoVersion(value):: self {
      resource+: {
        vault_secrets_sync_aws_destination+: { [terraformName]+: { identity_token_key_wo_version: value } },
      },
    },
    withIdentityTokenKeyWo(value):: self {
      resource+: {
        vault_secrets_sync_aws_destination+: { [terraformName]+: { identity_token_key_wo: value } },
      },
    },
    withAllowedIpv4Addresses(value):: self {
      resource+: {
        vault_secrets_sync_aws_destination+: { [terraformName]+: { allowed_ipv4_addresses: value } },
      },
    },
    withAllowedPorts(value):: self {
      resource+: {
        vault_secrets_sync_aws_destination+: { [terraformName]+: { allowed_ports: value } },
      },
    },
    withType(value):: self {
      resource+: {
        vault_secrets_sync_aws_destination+: { [terraformName]+: { type: value } },
      },
    },
    withRegion(value):: self {
      resource+: {
        vault_secrets_sync_aws_destination+: { [terraformName]+: { region: value } },
      },
    },
    withAccessKeyId(value):: self {
      resource+: {
        vault_secrets_sync_aws_destination+: { [terraformName]+: { access_key_id: value } },
      },
    },
    withCustomTags(value):: self {
      resource+: {
        vault_secrets_sync_aws_destination+: { [terraformName]+: { custom_tags: value } },
      },
    },
    withExternalId(value):: self {
      resource+: {
        vault_secrets_sync_aws_destination+: { [terraformName]+: { external_id: value } },
      },
    },
    withIdentityTokenTtl(value):: self {
      resource+: {
        vault_secrets_sync_aws_destination+: { [terraformName]+: { identity_token_ttl: value } },
      },
    },
    withGranularity(value):: self {
      resource+: {
        vault_secrets_sync_aws_destination+: { [terraformName]+: { granularity: value } },
      },
    },
    withDisableStrictNetworking(value):: self {
      resource+: {
        vault_secrets_sync_aws_destination+: { [terraformName]+: { disable_strict_networking: value } },
      },
    },
    withNamespace(value):: self {
      resource+: {
        vault_secrets_sync_aws_destination+: { [terraformName]+: { namespace: value } },
      },
    },
  },
}
