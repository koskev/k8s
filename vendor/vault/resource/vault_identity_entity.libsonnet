{
  new(terraformName):: {
    _type:: 'tf',
    resource+: {
      vault_identity_entity+: { [terraformName]+: {
      } },
    },
    withPolicies(value):: self {
      resource+: {
        vault_identity_entity+: { [terraformName]+: { policies: value } },
      },
    },
    withId(value):: self {
      resource+: {
        vault_identity_entity+: { [terraformName]+: { id: value } },
      },
    },
    withDisabled(value):: self {
      resource+: {
        vault_identity_entity+: { [terraformName]+: { disabled: value } },
      },
    },
    withExternalPolicies(value):: self {
      resource+: {
        vault_identity_entity+: { [terraformName]+: { external_policies: value } },
      },
    },
    withMetadata(value):: self {
      resource+: {
        vault_identity_entity+: { [terraformName]+: { metadata: value } },
      },
    },
    withName(value):: self {
      resource+: {
        vault_identity_entity+: { [terraformName]+: { name: value } },
      },
    },
    withNamespace(value):: self {
      resource+: {
        vault_identity_entity+: { [terraformName]+: { namespace: value } },
      },
    },
  },
}
