{
  new(terraformName, type):: {
    _type:: 'tf',
    resource+: {
      vault_auth_backend+: { [terraformName]+: {
        type: type,
      } },
    },
    withId(value):: self {
      resource+: {
        vault_auth_backend+: { [terraformName]+: { id: value } },
      },
    },
    withIdentityTokenKey(value):: self {
      resource+: {
        vault_auth_backend+: { [terraformName]+: { identity_token_key: value } },
      },
    },
    withPath(value):: self {
      resource+: {
        vault_auth_backend+: { [terraformName]+: { path: value } },
      },
    },
    withNamespace(value):: self {
      resource+: {
        vault_auth_backend+: { [terraformName]+: { namespace: value } },
      },
    },
    withTune(value):: self {
      resource+: {
        vault_auth_backend+: { [terraformName]+: { tune: value } },
      },
    },
    withType(value):: self {
      resource+: {
        vault_auth_backend+: { [terraformName]+: { type: value } },
      },
    },
    withDisableRemount(value):: self {
      resource+: {
        vault_auth_backend+: { [terraformName]+: { disable_remount: value } },
      },
    },
    withAccessor(value):: self {
      resource+: {
        vault_auth_backend+: { [terraformName]+: { accessor: value } },
      },
    },
    withLocal(value):: self {
      resource+: {
        vault_auth_backend+: { [terraformName]+: { 'local': value } },
      },
    },
    withDescription(value):: self {
      resource+: {
        vault_auth_backend+: { [terraformName]+: { description: value } },
      },
    },
  },
}
