{
  new(terraformName, role, backend):: {
    _type:: 'tf',
    resource+: {
      vault_nomad_secret_role+: { [terraformName]+: {
        role: role,
        backend: backend,
      } },
    },
    withPolicies(value):: self {
      resource+: {
        vault_nomad_secret_role+: { [terraformName]+: { policies: value } },
      },
    },
    withNamespace(value):: self {
      resource+: {
        vault_nomad_secret_role+: { [terraformName]+: { namespace: value } },
      },
    },
    withRole(value):: self {
      resource+: {
        vault_nomad_secret_role+: { [terraformName]+: { role: value } },
      },
    },
    withBackend(value):: self {
      resource+: {
        vault_nomad_secret_role+: { [terraformName]+: { backend: value } },
      },
    },
    withGlobal(value):: self {
      resource+: {
        vault_nomad_secret_role+: { [terraformName]+: { global: value } },
      },
    },
    withId(value):: self {
      resource+: {
        vault_nomad_secret_role+: { [terraformName]+: { id: value } },
      },
    },
    withType(value):: self {
      resource+: {
        vault_nomad_secret_role+: { [terraformName]+: { type: value } },
      },
    },
  },
}
