{
  new(terraformName, path, scope):: {
    _type:: 'tf',
    resource+: {
      vault_kmip_secret_scope+: { [terraformName]+: {
        path: path,
        scope: scope,
      } },
    },
    withNamespace(value):: self {
      resource+: {
        vault_kmip_secret_scope+: { [terraformName]+: { namespace: value } },
      },
    },
    withPath(value):: self {
      resource+: {
        vault_kmip_secret_scope+: { [terraformName]+: { path: value } },
      },
    },
    withScope(value):: self {
      resource+: {
        vault_kmip_secret_scope+: { [terraformName]+: { scope: value } },
      },
    },
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
  },
}
