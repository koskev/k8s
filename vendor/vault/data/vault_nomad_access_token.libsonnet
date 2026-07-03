{
  new(terraformName, backend, role):: {
    _type:: 'tf',
    data+: {
      vault_nomad_access_token+: { [terraformName]+: {
        backend: backend,
        role: role,
      } },
    },
    withAccessorId(value):: self {
      data+: {
        vault_nomad_access_token+: { [terraformName]+: { accessor_id: value } },
      },
    },
    withId(value):: self {
      data+: {
        vault_nomad_access_token+: { [terraformName]+: { id: value } },
      },
    },
    withBackend(value):: self {
      data+: {
        vault_nomad_access_token+: { [terraformName]+: { backend: value } },
      },
    },
    withSecretId(value):: self {
      data+: {
        vault_nomad_access_token+: { [terraformName]+: { secret_id: value } },
      },
    },
    withNamespace(value):: self {
      data+: {
        vault_nomad_access_token+: { [terraformName]+: { namespace: value } },
      },
    },
    withRole(value):: self {
      data+: {
        vault_nomad_access_token+: { [terraformName]+: { role: value } },
      },
    },
  },
}
