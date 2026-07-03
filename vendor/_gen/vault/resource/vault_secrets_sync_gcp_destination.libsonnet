{
  new(terraformName, name):: {
    _type:: 'tf',
    resource+: {
      vault_secrets_sync_gcp_destination+: { [terraformName]+: {
        name: name,
      } },
    },
    '#withAllowedIpv4Addresses': { 'function': { help: |||
      Allowed IPv4 addresses for outbound network connectivity in CIDR notation. If not set, all IPv4 addresses are allowed. 
    ||| } },
    withAllowedIpv4Addresses(value):: self {
      resource+: {
        vault_secrets_sync_gcp_destination+: { [terraformName]+: { allowed_ipv4_addresses: value } },
      },
    },
    '#withAllowedIpv6Addresses': { 'function': { help: |||
      Allowed IPv6 addresses for outbound network connectivity in CIDR notation. If not set, all IPv6 addresses are allowed. 
    ||| } },
    withAllowedIpv6Addresses(value):: self {
      resource+: {
        vault_secrets_sync_gcp_destination+: { [terraformName]+: { allowed_ipv6_addresses: value } },
      },
    },
    '#withAllowedPorts': { 'function': { help: |||
      Allowed ports for outbound network connectivity. If not set, all ports are allowed. 
    ||| } },
    withAllowedPorts(value):: self {
      resource+: {
        vault_secrets_sync_gcp_destination+: { [terraformName]+: { allowed_ports: value } },
      },
    },
    '#withCredentials': { 'function': { help: |||
      JSON-encoded credentials to use to connect to GCP. 
    ||| } },
    withCredentials(value):: self {
      resource+: {
        vault_secrets_sync_gcp_destination+: { [terraformName]+: { credentials: value } },
      },
    },
    '#withCustomTags': { 'function': { help: |||
      Custom tags to set on the secret managed at the destination. 
    ||| } },
    withCustomTags(value):: self {
      resource+: {
        vault_secrets_sync_gcp_destination+: { [terraformName]+: { custom_tags: value } },
      },
    },
    '#withDisableStrictNetworking': { 'function': { help: |||
      Disable strict networking requirements. 
    ||| } },
    withDisableStrictNetworking(value):: self {
      resource+: {
        vault_secrets_sync_gcp_destination+: { [terraformName]+: { disable_strict_networking: value } },
      },
    },
    '#withGlobalKmsKey': { 'function': { help: |||
      Global KMS key for encryption. 
    ||| } },
    withGlobalKmsKey(value):: self {
      resource+: {
        vault_secrets_sync_gcp_destination+: { [terraformName]+: { global_kms_key: value } },
      },
    },
    '#withGranularity': { 'function': { help: |||
      Determines what level of information is synced as a distinct resource at the destination. Can be 'secret-path' or 'secret-key' 
    ||| } },
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
    '#withIdentityTokenAudienceWo': { 'function': { help: |||
      The audience claim value for identity tokens. This is a write-only field and will not be read back from Vault. 
    ||| } },
    withIdentityTokenAudienceWo(value):: self {
      resource+: {
        vault_secrets_sync_gcp_destination+: { [terraformName]+: { identity_token_audience_wo: value } },
      },
    },
    '#withIdentityTokenAudienceWoVersion': { 'function': { help: |||
      A version counter for the write-only identity_token_audience_wo field. Incrementing this value will trigger an update. 
    ||| } },
    withIdentityTokenAudienceWoVersion(value):: self {
      resource+: {
        vault_secrets_sync_gcp_destination+: { [terraformName]+: { identity_token_audience_wo_version: value } },
      },
    },
    '#withIdentityTokenKeyWo': { 'function': { help: |||
      The key to use for signing identity tokens. This is a write-only field and will not be read back from Vault. 
    ||| } },
    withIdentityTokenKeyWo(value):: self {
      resource+: {
        vault_secrets_sync_gcp_destination+: { [terraformName]+: { identity_token_key_wo: value } },
      },
    },
    '#withIdentityTokenKeyWoVersion': { 'function': { help: |||
      A version counter for the write-only identity_token_key_wo field. Incrementing this value will trigger an update. 
    ||| } },
    withIdentityTokenKeyWoVersion(value):: self {
      resource+: {
        vault_secrets_sync_gcp_destination+: { [terraformName]+: { identity_token_key_wo_version: value } },
      },
    },
    '#withIdentityTokenTtl': { 'function': { help: |||
      The TTL of generated tokens. 
    ||| } },
    withIdentityTokenTtl(value):: self {
      resource+: {
        vault_secrets_sync_gcp_destination+: { [terraformName]+: { identity_token_ttl: value } },
      },
    },
    '#withLocationalKmsKeys': { 'function': { help: |||
      Locational KMS keys for encryption. 
    ||| } },
    withLocationalKmsKeys(value):: self {
      resource+: {
        vault_secrets_sync_gcp_destination+: { [terraformName]+: { locational_kms_keys: value } },
      },
    },
    '#withName': { 'function': { help: |||
      Unique name of the GCP destination. 
    ||| } },
    withName(value):: self {
      resource+: {
        vault_secrets_sync_gcp_destination+: { [terraformName]+: { name: value } },
      },
    },
    '#withNamespace': { 'function': { help: |||
      Target namespace. (requires Enterprise) 
    ||| } },
    withNamespace(value):: self {
      resource+: {
        vault_secrets_sync_gcp_destination+: { [terraformName]+: { namespace: value } },
      },
    },
    '#withProjectId': { 'function': { help: |||
      The target project to manage secrets in. 
    ||| } },
    withProjectId(value):: self {
      resource+: {
        vault_secrets_sync_gcp_destination+: { [terraformName]+: { project_id: value } },
      },
    },
    '#withReplicationLocations': { 'function': { help: |||
      Replication locations for secrets. 
    ||| } },
    withReplicationLocations(value):: self {
      resource+: {
        vault_secrets_sync_gcp_destination+: { [terraformName]+: { replication_locations: value } },
      },
    },
    '#withSecretNameTemplate': { 'function': { help: |||
      Template describing how to generate external secret names. 
    ||| } },
    withSecretNameTemplate(value):: self {
      resource+: {
        vault_secrets_sync_gcp_destination+: { [terraformName]+: { secret_name_template: value } },
      },
    },
    '#withServiceAccountEmail': { 'function': { help: |||
      Service Account to impersonate for workload identity federation. 
    ||| } },
    withServiceAccountEmail(value):: self {
      resource+: {
        vault_secrets_sync_gcp_destination+: { [terraformName]+: { service_account_email: value } },
      },
    },
    '#withType': { 'function': { help: |||
      Type of secrets destination. 
    ||| } },
    withType(value):: self {
      resource+: {
        vault_secrets_sync_gcp_destination+: { [terraformName]+: { type: value } },
      },
    },
  },
}
