{
  new(terraformName, role_name, mount):: {
    _type:: 'tf',
    data+: {
      vault_ldap_static_credentials+: { [terraformName]+: {
        role_name: role_name,
        mount: mount,
      } },
    },
    withId(value):: self {
      data+: {
        vault_ldap_static_credentials+: { [terraformName]+: { id: value } },
      },
    },
    withRoleName(value):: self {
      data+: {
        vault_ldap_static_credentials+: { [terraformName]+: { role_name: value } },
      },
    },
    withRotationPeriod(value):: self {
      data+: {
        vault_ldap_static_credentials+: { [terraformName]+: { rotation_period: value } },
      },
    },
    withTtl(value):: self {
      data+: {
        vault_ldap_static_credentials+: { [terraformName]+: { ttl: value } },
      },
    },
    withDn(value):: self {
      data+: {
        vault_ldap_static_credentials+: { [terraformName]+: { dn: value } },
      },
    },
    withPassword(value):: self {
      data+: {
        vault_ldap_static_credentials+: { [terraformName]+: { password: value } },
      },
    },
    withUsername(value):: self {
      data+: {
        vault_ldap_static_credentials+: { [terraformName]+: { username: value } },
      },
    },
    withLastPassword(value):: self {
      data+: {
        vault_ldap_static_credentials+: { [terraformName]+: { last_password: value } },
      },
    },
    withLastVaultRotation(value):: self {
      data+: {
        vault_ldap_static_credentials+: { [terraformName]+: { last_vault_rotation: value } },
      },
    },
    withMount(value):: self {
      data+: {
        vault_ldap_static_credentials+: { [terraformName]+: { mount: value } },
      },
    },
    withNamespace(value):: self {
      data+: {
        vault_ldap_static_credentials+: { [terraformName]+: { namespace: value } },
      },
    },
  },
}
