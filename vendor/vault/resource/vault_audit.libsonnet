{
  new(terraformName, type, options):: {
    _type:: 'tf',
    resource+: {
      vault_audit+: { [terraformName]+: {
        type: type,
        options: options,
      } },
    },
    withPath(value):: self {
      resource+: {
        vault_audit+: { [terraformName]+: { path: value } },
      },
    },
    withId(value):: self {
      resource+: {
        vault_audit+: { [terraformName]+: { id: value } },
      },
    },
    withLocal(value):: self {
      resource+: {
        vault_audit+: { [terraformName]+: { 'local': value } },
      },
    },
    withType(value):: self {
      resource+: {
        vault_audit+: { [terraformName]+: { type: value } },
      },
    },
    withDescription(value):: self {
      resource+: {
        vault_audit+: { [terraformName]+: { description: value } },
      },
    },
    withNamespace(value):: self {
      resource+: {
        vault_audit+: { [terraformName]+: { namespace: value } },
      },
    },
    withOptions(value):: self {
      resource+: {
        vault_audit+: { [terraformName]+: { options: value } },
      },
    },
  },
}
