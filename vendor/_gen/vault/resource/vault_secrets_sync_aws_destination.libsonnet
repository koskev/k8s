{
  local outerSelf = self,
  new(terraformName, name):: self.functions(terraformName) {
    ref():: outerSelf.ref(terraformName),
    _type:: 'tf',
    resource+: {
      vault_secrets_sync_aws_destination+: {
        [terraformName]+: {
          name: name,
        },
      },
    },
  },
  functions(terraformName):: {
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
  },
  ref(terraformName):: {
    local refSelf = self,
    plain(suffix=''):: '${ vault_secrets_sync_aws_destination.%s%s }' % [terraformName, suffix],
    fields:: {
      '#access_key_id':: { 'function': { help: |||
        Access key id to authenticate against the AWS secrets manager.
      ||| } },
      access_key_id(suffix=''):: refSelf.plain('.access_key_id%s' % suffix),
      '#allowed_ipv4_addresses':: { 'function': { help: |||
        Allowed IPv4 addresses for outbound connections from Vault to AWS Secrets Manager. Can also be set via an IP address range using CIDR notation.
      ||| } },
      allowed_ipv4_addresses(suffix=''):: refSelf.plain('.allowed_ipv4_addresses%s' % suffix),
      '#allowed_ipv6_addresses':: { 'function': { help: |||
        Allowed IPv6 addresses for outbound connections from Vault to AWS Secrets Manager. Can also be set via an IP address range using CIDR notation.
      ||| } },
      allowed_ipv6_addresses(suffix=''):: refSelf.plain('.allowed_ipv6_addresses%s' % suffix),
      '#allowed_ports':: { 'function': { help: |||
        Allowed ports for outbound connections from Vault to AWS Secrets Manager.
      ||| } },
      allowed_ports(suffix=''):: refSelf.plain('.allowed_ports%s' % suffix),
      '#custom_tags':: { 'function': { help: |||
        Custom tags to set on the secret managed at the destination.
      ||| } },
      custom_tags(suffix=''):: refSelf.plain('.custom_tags%s' % suffix),
      '#disable_strict_networking':: { 'function': { help: |||
        Disable strict networking mode. When set to true, Vault will not enforce allowed IP addresses and ports.
      ||| } },
      disable_strict_networking(suffix=''):: refSelf.plain('.disable_strict_networking%s' % suffix),
      '#external_id':: { 'function': { help: |||
        Extra protection that must match the trust policy granting access to the AWS IAM role ARN.
      ||| } },
      external_id(suffix=''):: refSelf.plain('.external_id%s' % suffix),
      '#granularity':: { 'function': { help: |||
        Determines what level of information is synced as a distinct resource at the destination. Can be 'secret-path' or 'secret-key'
      ||| } },
      granularity(suffix=''):: refSelf.plain('.granularity%s' % suffix),
      id(suffix=''):: refSelf.plain('.id%s' % suffix),
      '#identity_token_audience_wo':: { 'function': { help: |||
        The audience claim value for identity tokens. This is a write-only field and will not be read back from Vault.
      ||| } },
      identity_token_audience_wo(suffix=''):: refSelf.plain('.identity_token_audience_wo%s' % suffix),
      '#identity_token_audience_wo_version':: { 'function': { help: |||
        A version counter for the write-only identity_token_audience_wo field. Incrementing this value will trigger an update.
      ||| } },
      identity_token_audience_wo_version(suffix=''):: refSelf.plain('.identity_token_audience_wo_version%s' % suffix),
      '#identity_token_key_wo':: { 'function': { help: |||
        The key to use for signing identity tokens. This is a write-only field and will not be read back from Vault.
      ||| } },
      identity_token_key_wo(suffix=''):: refSelf.plain('.identity_token_key_wo%s' % suffix),
      '#identity_token_key_wo_version':: { 'function': { help: |||
        A version counter for the write-only identity_token_key_wo field. Incrementing this value will trigger an update.
      ||| } },
      identity_token_key_wo_version(suffix=''):: refSelf.plain('.identity_token_key_wo_version%s' % suffix),
      '#identity_token_ttl':: { 'function': { help: |||
        The TTL of generated tokens.
      ||| } },
      identity_token_ttl(suffix=''):: refSelf.plain('.identity_token_ttl%s' % suffix),
      '#name':: { 'function': { help: |||
        Unique name of the AWS destination.
      ||| } },
      name(suffix=''):: refSelf.plain('.name%s' % suffix),
      '#namespace':: { 'function': { help: |||
        Target namespace. (requires Enterprise)
      ||| } },
      namespace(suffix=''):: refSelf.plain('.namespace%s' % suffix),
      '#region':: { 'function': { help: |||
        Region where to manage the secrets manager entries.
      ||| } },
      region(suffix=''):: refSelf.plain('.region%s' % suffix),
      '#role_arn':: { 'function': { help: |||
        Specifies a role to assume when connecting to AWS.
      ||| } },
      role_arn(suffix=''):: refSelf.plain('.role_arn%s' % suffix),
      '#secret_access_key':: { 'function': { help: |||
        Secret access key to authenticate against the AWS secrets manager.
      ||| } },
      secret_access_key(suffix=''):: refSelf.plain('.secret_access_key%s' % suffix),
      '#secret_name_template':: { 'function': { help: |||
        Template describing how to generate external secret names.
      ||| } },
      secret_name_template(suffix=''):: refSelf.plain('.secret_name_template%s' % suffix),
      '#type':: { 'function': { help: |||
        Type of secrets destination.
      ||| } },
      type(suffix=''):: refSelf.plain('.type%s' % suffix),
    },
  },
}
