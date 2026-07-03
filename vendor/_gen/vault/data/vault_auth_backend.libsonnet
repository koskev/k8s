{
  new(terraformName, path):: {
    _type:: 'tf',
    data+: {
      vault_auth_backend+: { [terraformName]+: {
        path: path,
      } },
    },
    '#withAccessor': { 'function': { help: |||
      The accessor of the auth backend. 
    ||| } },
    withAccessor(value):: self {
      data+: {
        vault_auth_backend+: { [terraformName]+: { accessor: value } },
      },
    },
    '#withDefaultLeaseTtlSeconds': { 'function': { help: |||
      Default lease duration in seconds 
    ||| } },
    withDefaultLeaseTtlSeconds(value):: self {
      data+: {
        vault_auth_backend+: { [terraformName]+: { default_lease_ttl_seconds: value } },
      },
    },
    '#withDescription': { 'function': { help: |||
      The description of the auth backend. 
    ||| } },
    withDescription(value):: self {
      data+: {
        vault_auth_backend+: { [terraformName]+: { description: value } },
      },
    },
    withId(value):: self {
      data+: {
        vault_auth_backend+: { [terraformName]+: { id: value } },
      },
    },
    '#withListingVisibility': { 'function': { help: |||
      Specifies whether to show this mount in the UI-specific listing endpoint. 
    ||| } },
    withListingVisibility(value):: self {
      data+: {
        vault_auth_backend+: { [terraformName]+: { listing_visibility: value } },
      },
    },
    '#withLocal': { 'function': { help: |||
      Specifies if the auth method is local only 
    ||| } },
    withLocal(value):: self {
      data+: {
        vault_auth_backend+: { [terraformName]+: { 'local': value } },
      },
    },
    '#withMaxLeaseTtlSeconds': { 'function': { help: |||
      Maximum possible lease duration in seconds 
    ||| } },
    withMaxLeaseTtlSeconds(value):: self {
      data+: {
        vault_auth_backend+: { [terraformName]+: { max_lease_ttl_seconds: value } },
      },
    },
    '#withNamespace': { 'function': { help: |||
      Target namespace. (requires Enterprise) 
    ||| } },
    withNamespace(value):: self {
      data+: {
        vault_auth_backend+: { [terraformName]+: { namespace: value } },
      },
    },
    '#withPath': { 'function': { help: |||
      The auth backend mount point. 
    ||| } },
    withPath(value):: self {
      data+: {
        vault_auth_backend+: { [terraformName]+: { path: value } },
      },
    },
    '#withType': { 'function': { help: |||
      The name of the auth backend. 
    ||| } },
    withType(value):: self {
      data+: {
        vault_auth_backend+: { [terraformName]+: { type: value } },
      },
    },
  },
}
