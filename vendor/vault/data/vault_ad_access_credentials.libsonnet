{
  new(terraformName, backend, role):: {
    _type:: 'tf',
    data+: {
      vault_ad_access_credentials+: { [terraformName]+: {
        backend: backend,
        role: role,
      } },
    },
    withId(value):: self {
      data+: {
        vault_ad_access_credentials+: { [terraformName]+: { id: value } },
      },
    },
    withLastPassword(value):: self {
      data+: {
        vault_ad_access_credentials+: { [terraformName]+: { last_password: value } },
      },
    },
    withCurrentPassword(value):: self {
      data+: {
        vault_ad_access_credentials+: { [terraformName]+: { current_password: value } },
      },
    },
    withNamespace(value):: self {
      data+: {
        vault_ad_access_credentials+: { [terraformName]+: { namespace: value } },
      },
    },
    withUsername(value):: self {
      data+: {
        vault_ad_access_credentials+: { [terraformName]+: { username: value } },
      },
    },
    withBackend(value):: self {
      data+: {
        vault_ad_access_credentials+: { [terraformName]+: { backend: value } },
      },
    },
    withRole(value):: self {
      data+: {
        vault_ad_access_credentials+: { [terraformName]+: { role: value } },
      },
    },
  },
}
