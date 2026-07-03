{
  new(terraformName, backend, name, service_account_names):: {
    _type:: 'tf',
    resource+: {
      vault_ad_secret_library+: { [terraformName]+: {
        backend: backend,
        name: name,
        service_account_names: service_account_names,
      } },
    },
    '#withBackend':: { 'function': { help: |||
      The mount path for the AD backend. 
    ||| } },
    withBackend(value):: self {
      resource+: {
        vault_ad_secret_library+: { [terraformName]+: { backend: value } },
      },
    },
    '#withDisableCheckInEnforcement':: { 'function': { help: |||
      Disable enforcing that service accounts must be checked in by the entity or client token that checked them out. 
    ||| } },
    withDisableCheckInEnforcement(value):: self {
      resource+: {
        vault_ad_secret_library+: { [terraformName]+: { disable_check_in_enforcement: value } },
      },
    },
    withId(value):: self {
      resource+: {
        vault_ad_secret_library+: { [terraformName]+: { id: value } },
      },
    },
    '#withMaxTtl':: { 'function': { help: |||
      The maximum amount of time, in seconds, a check-out last with renewal before Vault automatically checks it back in. 
    ||| } },
    withMaxTtl(value):: self {
      resource+: {
        vault_ad_secret_library+: { [terraformName]+: { max_ttl: value } },
      },
    },
    '#withName':: { 'function': { help: |||
      The name of the set of service accounts. 
    ||| } },
    withName(value):: self {
      resource+: {
        vault_ad_secret_library+: { [terraformName]+: { name: value } },
      },
    },
    '#withNamespace':: { 'function': { help: |||
      Target namespace. (requires Enterprise) 
    ||| } },
    withNamespace(value):: self {
      resource+: {
        vault_ad_secret_library+: { [terraformName]+: { namespace: value } },
      },
    },
    '#withServiceAccountNames':: { 'function': { help: |||
      The names of all the service accounts that can be checked out from this set. These service accounts must already exist in Active Directory. 
    ||| } },
    withServiceAccountNames(value):: self {
      resource+: {
        vault_ad_secret_library+: { [terraformName]+: { service_account_names: value } },
      },
    },
    '#withTtl':: { 'function': { help: |||
      The amount of time, in seconds, a single check-out lasts before Vault automatically checks it back in. 
    ||| } },
    withTtl(value):: self {
      resource+: {
        vault_ad_secret_library+: { [terraformName]+: { ttl: value } },
      },
    },
  },
}
