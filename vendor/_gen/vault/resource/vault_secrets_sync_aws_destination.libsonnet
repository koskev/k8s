{
  new(terraformName, name):: {
    _type:: 'tf',
    resource+: {
      vault_secrets_sync_aws_destination+: { [terraformName]+: {
        name: name,
      } },
    },
    '#withAccessKeyId':: { 'function': { help: |||
      Access key id to authenticate against the AWS secrets manager. 
    ||| } },
    withAccessKeyId(value):: self {
      resource+: {
        vault_secrets_sync_aws_destination+: { [terraformName]+: { access_key_id: value } },
      },
    },
    '#withAllowedIpv4Addresses':: { 'function': { help: |||
      Allowed IPv4 addresses for outbound connections from Vault to AWS Secrets Manager. Can also be set via an IP address range using CIDR notation. 
    ||| } },
    withAllowedIpv4Addresses(value):: self {
      resource+: {
        vault_secrets_sync_aws_destination+: { [terraformName]+: { allowed_ipv4_addresses: value } },
      },
    },
    '#withAllowedIpv6Addresses':: { 'function': { help: |||
      Allowed IPv6 addresses for outbound connections from Vault to AWS Secrets Manager. Can also be set via an IP address range using CIDR notation. 
    ||| } },
    withAllowedIpv6Addresses(value):: self {
      resource+: {
        vault_secrets_sync_aws_destination+: { [terraformName]+: { allowed_ipv6_addresses: value } },
      },
    },
    '#withAllowedPorts':: { 'function': { help: |||
      Allowed ports for outbound connections from Vault to AWS Secrets Manager. 
    ||| } },
    withAllowedPorts(value):: self {
      resource+: {
        vault_secrets_sync_aws_destination+: { [terraformName]+: { allowed_ports: value } },
      },
    },
    '#withCustomTags':: { 'function': { help: |||
      Custom tags to set on the secret managed at the destination. 
    ||| } },
    withCustomTags(value):: self {
      resource+: {
        vault_secrets_sync_aws_destination+: { [terraformName]+: { custom_tags: value } },
      },
    },
    '#withDisableStrictNetworking':: { 'function': { help: |||
      Disable strict networking mode. When set to true, Vault will not enforce allowed IP addresses and ports. 
    ||| } },
    withDisableStrictNetworking(value):: self {
      resource+: {
        vault_secrets_sync_aws_destination+: { [terraformName]+: { disable_strict_networking: value } },
      },
    },
    '#withExternalId':: { 'function': { help: |||
      Extra protection that must match the trust policy granting access to the AWS IAM role ARN. 
    ||| } },
    withExternalId(value):: self {
      resource+: {
        vault_secrets_sync_aws_destination+: { [terraformName]+: { external_id: value } },
      },
    },
    '#withGranularity':: { 'function': { help: |||
      Determines what level of information is synced as a distinct resource at the destination. Can be 'secret-path' or 'secret-key' 
    ||| } },
    withGranularity(value):: self {
      resource+: {
        vault_secrets_sync_aws_destination+: { [terraformName]+: { granularity: value } },
      },
    },
    withId(value):: self {
      resource+: {
        vault_secrets_sync_aws_destination+: { [terraformName]+: { id: value } },
      },
    },
    '#withIdentityTokenAudienceWo':: { 'function': { help: |||
      The audience claim value for identity tokens. This is a write-only field and will not be read back from Vault. 
    ||| } },
    withIdentityTokenAudienceWo(value):: self {
      resource+: {
        vault_secrets_sync_aws_destination+: { [terraformName]+: { identity_token_audience_wo: value } },
      },
    },
    '#withIdentityTokenAudienceWoVersion':: { 'function': { help: |||
      A version counter for the write-only identity_token_audience_wo field. Incrementing this value will trigger an update. 
    ||| } },
    withIdentityTokenAudienceWoVersion(value):: self {
      resource+: {
        vault_secrets_sync_aws_destination+: { [terraformName]+: { identity_token_audience_wo_version: value } },
      },
    },
    '#withIdentityTokenKeyWo':: { 'function': { help: |||
      The key to use for signing identity tokens. This is a write-only field and will not be read back from Vault. 
    ||| } },
    withIdentityTokenKeyWo(value):: self {
      resource+: {
        vault_secrets_sync_aws_destination+: { [terraformName]+: { identity_token_key_wo: value } },
      },
    },
    '#withIdentityTokenKeyWoVersion':: { 'function': { help: |||
      A version counter for the write-only identity_token_key_wo field. Incrementing this value will trigger an update. 
    ||| } },
    withIdentityTokenKeyWoVersion(value):: self {
      resource+: {
        vault_secrets_sync_aws_destination+: { [terraformName]+: { identity_token_key_wo_version: value } },
      },
    },
    '#withIdentityTokenTtl':: { 'function': { help: |||
      The TTL of generated tokens. 
    ||| } },
    withIdentityTokenTtl(value):: self {
      resource+: {
        vault_secrets_sync_aws_destination+: { [terraformName]+: { identity_token_ttl: value } },
      },
    },
    '#withName':: { 'function': { help: |||
      Unique name of the AWS destination. 
    ||| } },
    withName(value):: self {
      resource+: {
        vault_secrets_sync_aws_destination+: { [terraformName]+: { name: value } },
      },
    },
    '#withNamespace':: { 'function': { help: |||
      Target namespace. (requires Enterprise) 
    ||| } },
    withNamespace(value):: self {
      resource+: {
        vault_secrets_sync_aws_destination+: { [terraformName]+: { namespace: value } },
      },
    },
    '#withRegion':: { 'function': { help: |||
      Region where to manage the secrets manager entries. 
    ||| } },
    withRegion(value):: self {
      resource+: {
        vault_secrets_sync_aws_destination+: { [terraformName]+: { region: value } },
      },
    },
    '#withRoleArn':: { 'function': { help: |||
      Specifies a role to assume when connecting to AWS. 
    ||| } },
    withRoleArn(value):: self {
      resource+: {
        vault_secrets_sync_aws_destination+: { [terraformName]+: { role_arn: value } },
      },
    },
    '#withSecretAccessKey':: { 'function': { help: |||
      Secret access key to authenticate against the AWS secrets manager. 
    ||| } },
    withSecretAccessKey(value):: self {
      resource+: {
        vault_secrets_sync_aws_destination+: { [terraformName]+: { secret_access_key: value } },
      },
    },
    '#withSecretNameTemplate':: { 'function': { help: |||
      Template describing how to generate external secret names. 
    ||| } },
    withSecretNameTemplate(value):: self {
      resource+: {
        vault_secrets_sync_aws_destination+: { [terraformName]+: { secret_name_template: value } },
      },
    },
    '#withType':: { 'function': { help: |||
      Type of secrets destination. 
    ||| } },
    withType(value):: self {
      resource+: {
        vault_secrets_sync_aws_destination+: { [terraformName]+: { type: value } },
      },
    },
  },
}
