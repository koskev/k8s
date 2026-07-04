{
  local outerSelf = self,
  new(terraformName, name):: self.functions(terraformName) {
    ref():: outerSelf.ref(terraformName),
    _type:: 'tf',
    resource+: {
      vault_secrets_sync_azure_destination+: {
        [terraformName]+: {
          name: name,
        },
      },
    },
  },
  functions(terraformName):: {
    withForEach(value):: self {
      resource+: {
        vault_secrets_sync_azure_destination+: { [terraformName]+: { for_each: value } },
      },
    },
    withDependsOn(value):: self {
      resource+: {
        vault_secrets_sync_azure_destination+: { [terraformName]+: { depends_on: value } },
      },
    },
    withCount(value):: self {
      resource+: {
        vault_secrets_sync_azure_destination+: { [terraformName]+: { count: value } },
      },
    },
    withLifecycle(value):: self {
      resource+: {
        vault_secrets_sync_azure_destination+: { [terraformName]+: { lifecycle: value } },
      },
    },
    withProvider(value):: self {
      resource+: {
        vault_secrets_sync_azure_destination+: { [terraformName]+: { provider: value } },
      },
    },
    withProviders(value):: self {
      resource+: {
        vault_secrets_sync_azure_destination+: { [terraformName]+: { providers: value } },
      },
    },
    '#allowed_ipv4_addresses':: { 'function': { help: |||
      Set of allowed IPv4 addresses in CIDR notation (e.g., 192.168.1.1/32) for outbound connections from Vault to the destination. If not set, all IPv4 addresses are allowed. Requires Vault 1.19+.
    ||| } },
    withAllowedIpv4Addresses(value):: self {
      resource+: {
        vault_secrets_sync_azure_destination+: { [terraformName]+: { allowed_ipv4_addresses: value } },
      },
    },
    '#allowed_ipv6_addresses':: { 'function': { help: |||
      Set of allowed IPv6 addresses in CIDR notation (e.g., 2001:db8::1/128) for outbound connections from Vault to the destination. If not set, all IPv6 addresses are allowed. Requires Vault 1.19+.
    ||| } },
    withAllowedIpv6Addresses(value):: self {
      resource+: {
        vault_secrets_sync_azure_destination+: { [terraformName]+: { allowed_ipv6_addresses: value } },
      },
    },
    '#allowed_ports':: { 'function': { help: |||
      Set of allowed ports for outbound connections from Vault to the destination. If not set, all ports are allowed. Requires Vault 1.19+.
    ||| } },
    withAllowedPorts(value):: self {
      resource+: {
        vault_secrets_sync_azure_destination+: { [terraformName]+: { allowed_ports: value } },
      },
    },
    '#client_id':: { 'function': { help: |||
      Client ID of an Azure app registration.
    ||| } },
    withClientId(value):: self {
      resource+: {
        vault_secrets_sync_azure_destination+: { [terraformName]+: { client_id: value } },
      },
    },
    '#client_secret':: { 'function': { help: |||
      Client Secret of an Azure app registration.
    ||| } },
    withClientSecret(value):: self {
      resource+: {
        vault_secrets_sync_azure_destination+: { [terraformName]+: { client_secret: value } },
      },
    },
    '#cloud':: { 'function': { help: |||
      Specifies a cloud for the client.
    ||| } },
    withCloud(value):: self {
      resource+: {
        vault_secrets_sync_azure_destination+: { [terraformName]+: { cloud: value } },
      },
    },
    '#custom_tags':: { 'function': { help: |||
      Custom tags to set on the secret managed at the destination.
    ||| } },
    withCustomTags(value):: self {
      resource+: {
        vault_secrets_sync_azure_destination+: { [terraformName]+: { custom_tags: value } },
      },
    },
    '#disable_strict_networking':: { 'function': { help: |||
      If set to true, disables strict networking enforcement for this destination. When disabled, Vault will not enforce allowed IP addresses and ports. Requires Vault 1.19+.
    ||| } },
    withDisableStrictNetworking(value):: self {
      resource+: {
        vault_secrets_sync_azure_destination+: { [terraformName]+: { disable_strict_networking: value } },
      },
    },
    '#granularity':: { 'function': { help: |||
      Determines what level of information is synced as a distinct resource at the destination. Can be 'secret-path' or 'secret-key'
    ||| } },
    withGranularity(value):: self {
      resource+: {
        vault_secrets_sync_azure_destination+: { [terraformName]+: { granularity: value } },
      },
    },
    withId(value):: self {
      resource+: {
        vault_secrets_sync_azure_destination+: { [terraformName]+: { id: value } },
      },
    },
    '#identity_token_audience_wo':: { 'function': { help: |||
      The audience claim value for identity tokens. This is a write-only field and will not be read back from Vault.
    ||| } },
    withIdentityTokenAudienceWo(value):: self {
      resource+: {
        vault_secrets_sync_azure_destination+: { [terraformName]+: { identity_token_audience_wo: value } },
      },
    },
    '#identity_token_audience_wo_version':: { 'function': { help: |||
      A version counter for the write-only identity_token_audience_wo field. Incrementing this value will trigger an update.
    ||| } },
    withIdentityTokenAudienceWoVersion(value):: self {
      resource+: {
        vault_secrets_sync_azure_destination+: { [terraformName]+: { identity_token_audience_wo_version: value } },
      },
    },
    '#identity_token_key_wo':: { 'function': { help: |||
      The key to use for signing identity tokens. This is a write-only field and will not be read back from Vault.
    ||| } },
    withIdentityTokenKeyWo(value):: self {
      resource+: {
        vault_secrets_sync_azure_destination+: { [terraformName]+: { identity_token_key_wo: value } },
      },
    },
    '#identity_token_key_wo_version':: { 'function': { help: |||
      A version counter for the write-only identity_token_key_wo field. Incrementing this value will trigger an update.
    ||| } },
    withIdentityTokenKeyWoVersion(value):: self {
      resource+: {
        vault_secrets_sync_azure_destination+: { [terraformName]+: { identity_token_key_wo_version: value } },
      },
    },
    '#identity_token_ttl':: { 'function': { help: |||
      The TTL of generated tokens.
    ||| } },
    withIdentityTokenTtl(value):: self {
      resource+: {
        vault_secrets_sync_azure_destination+: { [terraformName]+: { identity_token_ttl: value } },
      },
    },
    '#key_vault_uri':: { 'function': { help: |||
      URI of an existing Azure Key Vault instance.
    ||| } },
    withKeyVaultUri(value):: self {
      resource+: {
        vault_secrets_sync_azure_destination+: { [terraformName]+: { key_vault_uri: value } },
      },
    },
    '#name':: { 'function': { help: |||
      Unique name of the Azure destination.
    ||| } },
    withName(value):: self {
      resource+: {
        vault_secrets_sync_azure_destination+: { [terraformName]+: { name: value } },
      },
    },
    '#namespace':: { 'function': { help: |||
      Target namespace. (requires Enterprise)
    ||| } },
    withNamespace(value):: self {
      resource+: {
        vault_secrets_sync_azure_destination+: { [terraformName]+: { namespace: value } },
      },
    },
    '#secret_name_template':: { 'function': { help: |||
      Template describing how to generate external secret names.
    ||| } },
    withSecretNameTemplate(value):: self {
      resource+: {
        vault_secrets_sync_azure_destination+: { [terraformName]+: { secret_name_template: value } },
      },
    },
    '#tenant_id':: { 'function': { help: |||
      ID of the target Azure tenant.
    ||| } },
    withTenantId(value):: self {
      resource+: {
        vault_secrets_sync_azure_destination+: { [terraformName]+: { tenant_id: value } },
      },
    },
  },
  ref(terraformName):: {
    local refSelf = self,
    plain(suffix=''):: '${ vault_secrets_sync_azure_destination.%s%s }' % [terraformName, suffix],
    fields:: {
      '#allowed_ipv4_addresses':: { 'function': { help: |||
        Set of allowed IPv4 addresses in CIDR notation (e.g., 192.168.1.1/32) for outbound connections from Vault to the destination. If not set, all IPv4 addresses are allowed. Requires Vault 1.19+.
      ||| } },
      allowed_ipv4_addresses(suffix=''):: refSelf.plain('.allowed_ipv4_addresses%s' % suffix),
      '#allowed_ipv6_addresses':: { 'function': { help: |||
        Set of allowed IPv6 addresses in CIDR notation (e.g., 2001:db8::1/128) for outbound connections from Vault to the destination. If not set, all IPv6 addresses are allowed. Requires Vault 1.19+.
      ||| } },
      allowed_ipv6_addresses(suffix=''):: refSelf.plain('.allowed_ipv6_addresses%s' % suffix),
      '#allowed_ports':: { 'function': { help: |||
        Set of allowed ports for outbound connections from Vault to the destination. If not set, all ports are allowed. Requires Vault 1.19+.
      ||| } },
      allowed_ports(suffix=''):: refSelf.plain('.allowed_ports%s' % suffix),
      '#client_id':: { 'function': { help: |||
        Client ID of an Azure app registration.
      ||| } },
      client_id(suffix=''):: refSelf.plain('.client_id%s' % suffix),
      '#client_secret':: { 'function': { help: |||
        Client Secret of an Azure app registration.
      ||| } },
      client_secret(suffix=''):: refSelf.plain('.client_secret%s' % suffix),
      '#cloud':: { 'function': { help: |||
        Specifies a cloud for the client.
      ||| } },
      cloud(suffix=''):: refSelf.plain('.cloud%s' % suffix),
      '#custom_tags':: { 'function': { help: |||
        Custom tags to set on the secret managed at the destination.
      ||| } },
      custom_tags(suffix=''):: refSelf.plain('.custom_tags%s' % suffix),
      '#disable_strict_networking':: { 'function': { help: |||
        If set to true, disables strict networking enforcement for this destination. When disabled, Vault will not enforce allowed IP addresses and ports. Requires Vault 1.19+.
      ||| } },
      disable_strict_networking(suffix=''):: refSelf.plain('.disable_strict_networking%s' % suffix),
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
      '#key_vault_uri':: { 'function': { help: |||
        URI of an existing Azure Key Vault instance.
      ||| } },
      key_vault_uri(suffix=''):: refSelf.plain('.key_vault_uri%s' % suffix),
      '#name':: { 'function': { help: |||
        Unique name of the Azure destination.
      ||| } },
      name(suffix=''):: refSelf.plain('.name%s' % suffix),
      '#namespace':: { 'function': { help: |||
        Target namespace. (requires Enterprise)
      ||| } },
      namespace(suffix=''):: refSelf.plain('.namespace%s' % suffix),
      '#secret_name_template':: { 'function': { help: |||
        Template describing how to generate external secret names.
      ||| } },
      secret_name_template(suffix=''):: refSelf.plain('.secret_name_template%s' % suffix),
      '#tenant_id':: { 'function': { help: |||
        ID of the target Azure tenant.
      ||| } },
      tenant_id(suffix=''):: refSelf.plain('.tenant_id%s' % suffix),
      '#type':: { 'function': { help: |||
        Type of secrets destination.
      ||| } },
      type(suffix=''):: refSelf.plain('.type%s' % suffix),
    },
  },
}
