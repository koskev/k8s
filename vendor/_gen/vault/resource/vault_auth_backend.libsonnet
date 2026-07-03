{
  new(terraformName, type):: {
    _type:: 'tf',
    resource+: {
      vault_auth_backend+: { [terraformName]+: {
        type: type,
      } },
    },
    '#withAccessor': { 'function': { help: |||
      The accessor of the auth backend 
    ||| } },
    withAccessor(value):: self {
      resource+: {
        vault_auth_backend+: { [terraformName]+: { accessor: value } },
      },
    },
    '#withDescription': { 'function': { help: |||
      The description of the auth backend 
    ||| } },
    withDescription(value):: self {
      resource+: {
        vault_auth_backend+: { [terraformName]+: { description: value } },
      },
    },
    '#withDisableRemount': { 'function': { help: |||
      If set, opts out of mount migration on path updates. 
    ||| } },
    withDisableRemount(value):: self {
      resource+: {
        vault_auth_backend+: { [terraformName]+: { disable_remount: value } },
      },
    },
    withId(value):: self {
      resource+: {
        vault_auth_backend+: { [terraformName]+: { id: value } },
      },
    },
    '#withIdentityTokenKey': { 'function': { help: |||
      The key to use for signing identity tokens. 
    ||| } },
    withIdentityTokenKey(value):: self {
      resource+: {
        vault_auth_backend+: { [terraformName]+: { identity_token_key: value } },
      },
    },
    '#withLocal': { 'function': { help: |||
      Specifies if the auth method is local only 
    ||| } },
    withLocal(value):: self {
      resource+: {
        vault_auth_backend+: { [terraformName]+: { 'local': value } },
      },
    },
    '#withNamespace': { 'function': { help: |||
      Target namespace. (requires Enterprise) 
    ||| } },
    withNamespace(value):: self {
      resource+: {
        vault_auth_backend+: { [terraformName]+: { namespace: value } },
      },
    },
    '#withPath': { 'function': { help: |||
      path to mount the backend. This defaults to the type. 
    ||| } },
    withPath(value):: self {
      resource+: {
        vault_auth_backend+: { [terraformName]+: { path: value } },
      },
    },
    withTune(value):: self {
      resource+: {
        vault_auth_backend+: { [terraformName]+: { tune: value } },
      },
    },
    '#withType': { 'function': { help: |||
      Name of the auth backend 
    ||| } },
    withType(value):: self {
      resource+: {
        vault_auth_backend+: { [terraformName]+: { type: value } },
      },
    },
  },
}
