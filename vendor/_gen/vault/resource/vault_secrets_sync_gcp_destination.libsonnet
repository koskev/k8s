{
  new(terraformName, name):: self.functions(terraformName) {
    _type:: 'tf',
    resource+: {
      vault_secrets_sync_gcp_destination+: {
        [terraformName]+: {
          name: name,
        },
      },
    },
  },
  functions(terraformName):: {
    '#withAllowedIpv4Addresses':: { 'function': { help: |||
      Allowed IPv4 addresses for outbound network connectivity in CIDR notation. If not set, all IPv4 addresses are allowed. 
    ||| } },
    withAllowedIpv4Addresses(value):: self {
      resource+: {
        vault_secrets_sync_gcp_destination+: { [terraformName]+: { allowed_ipv4_addresses: value } },
      },
    },
    '#withAllowedIpv6Addresses':: { 'function': { help: |||
      Allowed IPv6 addresses for outbound network connectivity in CIDR notation. If not set, all IPv6 addresses are allowed. 
    ||| } },
    withAllowedIpv6Addresses(value):: self {
      resource+: {
        vault_secrets_sync_gcp_destination+: { [terraformName]+: { allowed_ipv6_addresses: value } },
      },
    },
    '#withAllowedPorts':: { 'function': { help: |||
      Allowed ports for outbound network connectivity. If not set, all ports are allowed. 
    ||| } },
    withAllowedPorts(value):: self {
      resource+: {
        vault_secrets_sync_gcp_destination+: { [terraformName]+: { allowed_ports: value } },
      },
    },
    '#withCredentials':: { 'function': { help: |||
      JSON-encoded credentials to use to connect to GCP. 
    ||| } },
    withCredentials(value):: self {
      resource+: {
        vault_secrets_sync_gcp_destination+: { [terraformName]+: { credentials: value } },
      },
    },
    '#withCustomTags':: { 'function': { help: |||
      Custom tags to set on the secret managed at the destination. 
    ||| } },
    withCustomTags(value):: self {
      resource+: {
        vault_secrets_sync_gcp_destination+: { [terraformName]+: { custom_tags: value } },
      },
    },
    '#withDisableStrictNetworking':: { 'function': { help: |||
      Disable strict networking requirements. 
    ||| } },
    withDisableStrictNetworking(value):: self {
      resource+: {
        vault_secrets_sync_gcp_destination+: { [terraformName]+: { disable_strict_networking: value } },
      },
    },
    '#withGlobalKmsKey':: { 'function': { help: |||
      Global KMS key for encryption. 
    ||| } },
    withGlobalKmsKey(value):: self {
      resource+: {
        vault_secrets_sync_gcp_destination+: { [terraformName]+: { global_kms_key: value } },
      },
    },
    '#withGranularity':: { 'function': { help: |||
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
    '#withIdentityTokenAudienceWo':: { 'function': { help: |||
      The audience claim value for identity tokens. This is a write-only field and will not be read back from Vault. 
    ||| } },
    withIdentityTokenAudienceWo(value):: self {
      resource+: {
        vault_secrets_sync_gcp_destination+: { [terraformName]+: { identity_token_audience_wo: value } },
      },
    },
    '#withIdentityTokenAudienceWoVersion':: { 'function': { help: |||
      A version counter for the write-only identity_token_audience_wo field. Incrementing this value will trigger an update. 
    ||| } },
    withIdentityTokenAudienceWoVersion(value):: self {
      resource+: {
        vault_secrets_sync_gcp_destination+: { [terraformName]+: { identity_token_audience_wo_version: value } },
      },
    },
    '#withIdentityTokenKeyWo':: { 'function': { help: |||
      The key to use for signing identity tokens. This is a write-only field and will not be read back from Vault. 
    ||| } },
    withIdentityTokenKeyWo(value):: self {
      resource+: {
        vault_secrets_sync_gcp_destination+: { [terraformName]+: { identity_token_key_wo: value } },
      },
    },
    '#withIdentityTokenKeyWoVersion':: { 'function': { help: |||
      A version counter for the write-only identity_token_key_wo field. Incrementing this value will trigger an update. 
    ||| } },
    withIdentityTokenKeyWoVersion(value):: self {
      resource+: {
        vault_secrets_sync_gcp_destination+: { [terraformName]+: { identity_token_key_wo_version: value } },
      },
    },
    '#withIdentityTokenTtl':: { 'function': { help: |||
      The TTL of generated tokens. 
    ||| } },
    withIdentityTokenTtl(value):: self {
      resource+: {
        vault_secrets_sync_gcp_destination+: { [terraformName]+: { identity_token_ttl: value } },
      },
    },
    '#withLocationalKmsKeys':: { 'function': { help: |||
      Locational KMS keys for encryption. 
    ||| } },
    withLocationalKmsKeys(value):: self {
      resource+: {
        vault_secrets_sync_gcp_destination+: { [terraformName]+: { locational_kms_keys: value } },
      },
    },
    '#withName':: { 'function': { help: |||
      Unique name of the GCP destination. 
    ||| } },
    withName(value):: self {
      resource+: {
        vault_secrets_sync_gcp_destination+: { [terraformName]+: { name: value } },
      },
    },
    '#withNamespace':: { 'function': { help: |||
      Target namespace. (requires Enterprise) 
    ||| } },
    withNamespace(value):: self {
      resource+: {
        vault_secrets_sync_gcp_destination+: { [terraformName]+: { namespace: value } },
      },
    },
    '#withProjectId':: { 'function': { help: |||
      The target project to manage secrets in. 
    ||| } },
    withProjectId(value):: self {
      resource+: {
        vault_secrets_sync_gcp_destination+: { [terraformName]+: { project_id: value } },
      },
    },
    '#withReplicationLocations':: { 'function': { help: |||
      Replication locations for secrets. 
    ||| } },
    withReplicationLocations(value):: self {
      resource+: {
        vault_secrets_sync_gcp_destination+: { [terraformName]+: { replication_locations: value } },
      },
    },
    '#withSecretNameTemplate':: { 'function': { help: |||
      Template describing how to generate external secret names. 
    ||| } },
    withSecretNameTemplate(value):: self {
      resource+: {
        vault_secrets_sync_gcp_destination+: { [terraformName]+: { secret_name_template: value } },
      },
    },
    '#withServiceAccountEmail':: { 'function': { help: |||
      Service Account to impersonate for workload identity federation. 
    ||| } },
    withServiceAccountEmail(value):: self {
      resource+: {
        vault_secrets_sync_gcp_destination+: { [terraformName]+: { service_account_email: value } },
      },
    },
  },
  ref(terraformName):: {
    local refSelf = self,
    plain(suffix=''):: '${ vault_secrets_sync_gcp_destination.%s%s }' % [terraformName, suffix],
    fields:: {
      '#allowed_ipv4_addresses':: { 'function': { help: |||
        Allowed IPv4 addresses for outbound network connectivity in CIDR notation. If not set, all IPv4 addresses are allowed. 
      ||| } },
      allowed_ipv4_addresses(suffix=''):: refSelf.plain('.allowed_ipv4_addresses%s' % suffix),
      '#allowed_ipv6_addresses':: { 'function': { help: |||
        Allowed IPv6 addresses for outbound network connectivity in CIDR notation. If not set, all IPv6 addresses are allowed. 
      ||| } },
      allowed_ipv6_addresses(suffix=''):: refSelf.plain('.allowed_ipv6_addresses%s' % suffix),
      '#allowed_ports':: { 'function': { help: |||
        Allowed ports for outbound network connectivity. If not set, all ports are allowed. 
      ||| } },
      allowed_ports(suffix=''):: refSelf.plain('.allowed_ports%s' % suffix),
      '#credentials':: { 'function': { help: |||
        JSON-encoded credentials to use to connect to GCP. 
      ||| } },
      credentials(suffix=''):: refSelf.plain('.credentials%s' % suffix),
      '#custom_tags':: { 'function': { help: |||
        Custom tags to set on the secret managed at the destination. 
      ||| } },
      custom_tags(suffix=''):: refSelf.plain('.custom_tags%s' % suffix),
      '#disable_strict_networking':: { 'function': { help: |||
        Disable strict networking requirements. 
      ||| } },
      disable_strict_networking(suffix=''):: refSelf.plain('.disable_strict_networking%s' % suffix),
      '#global_kms_key':: { 'function': { help: |||
        Global KMS key for encryption. 
      ||| } },
      global_kms_key(suffix=''):: refSelf.plain('.global_kms_key%s' % suffix),
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
      '#locational_kms_keys':: { 'function': { help: |||
        Locational KMS keys for encryption. 
      ||| } },
      locational_kms_keys(suffix=''):: refSelf.plain('.locational_kms_keys%s' % suffix),
      '#name':: { 'function': { help: |||
        Unique name of the GCP destination. 
      ||| } },
      name(suffix=''):: refSelf.plain('.name%s' % suffix),
      '#namespace':: { 'function': { help: |||
        Target namespace. (requires Enterprise) 
      ||| } },
      namespace(suffix=''):: refSelf.plain('.namespace%s' % suffix),
      '#project_id':: { 'function': { help: |||
        The target project to manage secrets in. 
      ||| } },
      project_id(suffix=''):: refSelf.plain('.project_id%s' % suffix),
      '#replication_locations':: { 'function': { help: |||
        Replication locations for secrets. 
      ||| } },
      replication_locations(suffix=''):: refSelf.plain('.replication_locations%s' % suffix),
      '#secret_name_template':: { 'function': { help: |||
        Template describing how to generate external secret names. 
      ||| } },
      secret_name_template(suffix=''):: refSelf.plain('.secret_name_template%s' % suffix),
      '#service_account_email':: { 'function': { help: |||
        Service Account to impersonate for workload identity federation. 
      ||| } },
      service_account_email(suffix=''):: refSelf.plain('.service_account_email%s' % suffix),
      '#type':: { 'function': { help: |||
        Type of secrets destination. 
      ||| } },
      type(suffix=''):: refSelf.plain('.type%s' % suffix),
    },
  },
}
