{
  new(terraformName):: {
    _type:: 'tf',
    resource+: {
      vault_managed_keys+: { [terraformName]+: {
      } },
    },
    withId(value):: self {
      resource+: {
        vault_managed_keys+: { [terraformName]+: { id: value } },
      },
    },
    withNamespace(value):: self {
      resource+: {
        vault_managed_keys+: { [terraformName]+: { namespace: value } },
      },
    },
  },
}
