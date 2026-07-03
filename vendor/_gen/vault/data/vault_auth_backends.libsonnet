{
  new(terraformName):: {
    _type:: 'tf',
    data+: {
      vault_auth_backends+: { [terraformName]+: {
      } },
    },
    '#withAccessors':: { 'function': { help: |||
      The accessors of the auth backends. 
    ||| } },
    withAccessors(value):: self {
      data+: {
        vault_auth_backends+: { [terraformName]+: { accessors: value } },
      },
    },
    withId(value):: self {
      data+: {
        vault_auth_backends+: { [terraformName]+: { id: value } },
      },
    },
    '#withNamespace':: { 'function': { help: |||
      Target namespace. (requires Enterprise) 
    ||| } },
    withNamespace(value):: self {
      data+: {
        vault_auth_backends+: { [terraformName]+: { namespace: value } },
      },
    },
    '#withPaths':: { 'function': { help: |||
      The auth backend mount points. 
    ||| } },
    withPaths(value):: self {
      data+: {
        vault_auth_backends+: { [terraformName]+: { paths: value } },
      },
    },
    '#withType':: { 'function': { help: |||
      The type of the auth backend. 
    ||| } },
    withType(value):: self {
      data+: {
        vault_auth_backends+: { [terraformName]+: { type: value } },
      },
    },
  },
}
