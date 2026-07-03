{
  new(terraformName, backend, role):: {
    _type:: 'tf',
    data+: {
      vault_ad_access_credentials+: { [terraformName]+: {
        backend: backend,
        role: role,
      } },
    },
    '#withBackend': { 'function': { help: |||
      AD Secret Backend to read credentials from. 
    ||| } },
    withBackend(value):: self {
      data+: {
        vault_ad_access_credentials+: { [terraformName]+: { backend: value } },
      },
    },
    '#withCurrentPassword': { 'function': { help: |||
      Password for the service account. 
    ||| } },
    withCurrentPassword(value):: self {
      data+: {
        vault_ad_access_credentials+: { [terraformName]+: { current_password: value } },
      },
    },
    withId(value):: self {
      data+: {
        vault_ad_access_credentials+: { [terraformName]+: { id: value } },
      },
    },
    '#withLastPassword': { 'function': { help: |||
      Last known password for the service account. 
    ||| } },
    withLastPassword(value):: self {
      data+: {
        vault_ad_access_credentials+: { [terraformName]+: { last_password: value } },
      },
    },
    '#withNamespace': { 'function': { help: |||
      Target namespace. (requires Enterprise) 
    ||| } },
    withNamespace(value):: self {
      data+: {
        vault_ad_access_credentials+: { [terraformName]+: { namespace: value } },
      },
    },
    '#withRole': { 'function': { help: |||
      Name of the role. 
    ||| } },
    withRole(value):: self {
      data+: {
        vault_ad_access_credentials+: { [terraformName]+: { role: value } },
      },
    },
    '#withUsername': { 'function': { help: |||
      Name of the service account. 
    ||| } },
    withUsername(value):: self {
      data+: {
        vault_ad_access_credentials+: { [terraformName]+: { username: value } },
      },
    },
  },
}
