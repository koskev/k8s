{
  new(terraformName, path, scope):: {
    _type:: 'tf',
    resource+: {
      vault_kmip_secret_scope+: { [terraformName]+: {
        path: path,
        scope: scope,
      } },
    },
    '#withForce':: { 'function': { help: |||
      Force deletion even if there are managed objects in the scope 
    ||| } },
    withForce(value):: self {
      resource+: {
        vault_kmip_secret_scope+: { [terraformName]+: { force: value } },
      },
    },
    withId(value):: self {
      resource+: {
        vault_kmip_secret_scope+: { [terraformName]+: { id: value } },
      },
    },
    '#withNamespace':: { 'function': { help: |||
      Target namespace. (requires Enterprise) 
    ||| } },
    withNamespace(value):: self {
      resource+: {
        vault_kmip_secret_scope+: { [terraformName]+: { namespace: value } },
      },
    },
    '#withPath':: { 'function': { help: |||
      Path where KMIP backend is mounted 
    ||| } },
    withPath(value):: self {
      resource+: {
        vault_kmip_secret_scope+: { [terraformName]+: { path: value } },
      },
    },
    '#withScope':: { 'function': { help: |||
      Name of the scope 
    ||| } },
    withScope(value):: self {
      resource+: {
        vault_kmip_secret_scope+: { [terraformName]+: { scope: value } },
      },
    },
  },
}
