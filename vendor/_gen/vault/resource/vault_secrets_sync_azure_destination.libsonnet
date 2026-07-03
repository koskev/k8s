{
  new(terraformName, name):: {
    _type:: 'tf',
    resource+: {
      vault_secrets_sync_azure_destination+: { [terraformName]+: {
        name: name,
      } },
    },
    '#withAllowedIpv4Addresses': { 'function': { help: |||
      Set of allowed IPv4 addresses in CIDR notation (e.g., 192.168.1.1/32) for outbound connections from Vault to the destination. If not set, all IPv4 addresses are allowed. Requires Vault 1.19+. 
    ||| } },
    withAllowedIpv4Addresses(value):: self {
      resource+: {
        vault_secrets_sync_azure_destination+: { [terraformName]+: { allowed_ipv4_addresses: value } },
      },
    },
    '#withAllowedIpv6Addresses': { 'function': { help: |||
      Set of allowed IPv6 addresses in CIDR notation (e.g., 2001:db8::1/128) for outbound connections from Vault to the destination. If not set, all IPv6 addresses are allowed. Requires Vault 1.19+. 
    ||| } },
    withAllowedIpv6Addresses(value):: self {
      resource+: {
        vault_secrets_sync_azure_destination+: { [terraformName]+: { allowed_ipv6_addresses: value } },
      },
    },
    '#withAllowedPorts': { 'function': { help: |||
      Set of allowed ports for outbound connections from Vault to the destination. If not set, all ports are allowed. Requires Vault 1.19+. 
    ||| } },
    withAllowedPorts(value):: self {
      resource+: {
        vault_secrets_sync_azure_destination+: { [terraformName]+: { allowed_ports: value } },
      },
    },
    '#withClientId': { 'function': { help: |||
      Client ID of an Azure app registration. 
    ||| } },
    withClientId(value):: self {
      resource+: {
        vault_secrets_sync_azure_destination+: { [terraformName]+: { client_id: value } },
      },
    },
    '#withClientSecret': { 'function': { help: |||
      Client Secret of an Azure app registration. 
    ||| } },
    withClientSecret(value):: self {
      resource+: {
        vault_secrets_sync_azure_destination+: { [terraformName]+: { client_secret: value } },
      },
    },
    '#withCloud': { 'function': { help: |||
      Specifies a cloud for the client. 
    ||| } },
    withCloud(value):: self {
      resource+: {
        vault_secrets_sync_azure_destination+: { [terraformName]+: { cloud: value } },
      },
    },
    '#withCustomTags': { 'function': { help: |||
      Custom tags to set on the secret managed at the destination. 
    ||| } },
    withCustomTags(value):: self {
      resource+: {
        vault_secrets_sync_azure_destination+: { [terraformName]+: { custom_tags: value } },
      },
    },
    '#withDisableStrictNetworking': { 'function': { help: |||
      If set to true, disables strict networking enforcement for this destination. When disabled, Vault will not enforce allowed IP addresses and ports. Requires Vault 1.19+. 
    ||| } },
    withDisableStrictNetworking(value):: self {
      resource+: {
        vault_secrets_sync_azure_destination+: { [terraformName]+: { disable_strict_networking: value } },
      },
    },
    '#withGranularity': { 'function': { help: |||
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
    '#withIdentityTokenAudienceWo': { 'function': { help: |||
      The audience claim value for identity tokens. This is a write-only field and will not be read back from Vault. 
    ||| } },
    withIdentityTokenAudienceWo(value):: self {
      resource+: {
        vault_secrets_sync_azure_destination+: { [terraformName]+: { identity_token_audience_wo: value } },
      },
    },
    '#withIdentityTokenAudienceWoVersion': { 'function': { help: |||
      A version counter for the write-only identity_token_audience_wo field. Incrementing this value will trigger an update. 
    ||| } },
    withIdentityTokenAudienceWoVersion(value):: self {
      resource+: {
        vault_secrets_sync_azure_destination+: { [terraformName]+: { identity_token_audience_wo_version: value } },
      },
    },
    '#withIdentityTokenKeyWo': { 'function': { help: |||
      The key to use for signing identity tokens. This is a write-only field and will not be read back from Vault. 
    ||| } },
    withIdentityTokenKeyWo(value):: self {
      resource+: {
        vault_secrets_sync_azure_destination+: { [terraformName]+: { identity_token_key_wo: value } },
      },
    },
    '#withIdentityTokenKeyWoVersion': { 'function': { help: |||
      A version counter for the write-only identity_token_key_wo field. Incrementing this value will trigger an update. 
    ||| } },
    withIdentityTokenKeyWoVersion(value):: self {
      resource+: {
        vault_secrets_sync_azure_destination+: { [terraformName]+: { identity_token_key_wo_version: value } },
      },
    },
    '#withIdentityTokenTtl': { 'function': { help: |||
      The TTL of generated tokens. 
    ||| } },
    withIdentityTokenTtl(value):: self {
      resource+: {
        vault_secrets_sync_azure_destination+: { [terraformName]+: { identity_token_ttl: value } },
      },
    },
    '#withKeyVaultUri': { 'function': { help: |||
      URI of an existing Azure Key Vault instance. 
    ||| } },
    withKeyVaultUri(value):: self {
      resource+: {
        vault_secrets_sync_azure_destination+: { [terraformName]+: { key_vault_uri: value } },
      },
    },
    '#withName': { 'function': { help: |||
      Unique name of the Azure destination. 
    ||| } },
    withName(value):: self {
      resource+: {
        vault_secrets_sync_azure_destination+: { [terraformName]+: { name: value } },
      },
    },
    '#withNamespace': { 'function': { help: |||
      Target namespace. (requires Enterprise) 
    ||| } },
    withNamespace(value):: self {
      resource+: {
        vault_secrets_sync_azure_destination+: { [terraformName]+: { namespace: value } },
      },
    },
    '#withSecretNameTemplate': { 'function': { help: |||
      Template describing how to generate external secret names. 
    ||| } },
    withSecretNameTemplate(value):: self {
      resource+: {
        vault_secrets_sync_azure_destination+: { [terraformName]+: { secret_name_template: value } },
      },
    },
    '#withTenantId': { 'function': { help: |||
      ID of the target Azure tenant. 
    ||| } },
    withTenantId(value):: self {
      resource+: {
        vault_secrets_sync_azure_destination+: { [terraformName]+: { tenant_id: value } },
      },
    },
    '#withType': { 'function': { help: |||
      Type of secrets destination. 
    ||| } },
    withType(value):: self {
      resource+: {
        vault_secrets_sync_azure_destination+: { [terraformName]+: { type: value } },
      },
    },
  },
}
