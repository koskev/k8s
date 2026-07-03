{
  new(terraformName, mount, role_name):: {
    _type:: 'tf',
    data+: {
      vault_ldap_dynamic_credentials+: { [terraformName]+: {
        mount: mount,
        role_name: role_name,
      } },
    },
    withMount(value):: self {
      data+: {
        vault_ldap_dynamic_credentials+: { [terraformName]+: { mount: value } },
      },
    },
    withPassword(value):: self {
      data+: {
        vault_ldap_dynamic_credentials+: { [terraformName]+: { password: value } },
      },
    },
    withRoleName(value):: self {
      data+: {
        vault_ldap_dynamic_credentials+: { [terraformName]+: { role_name: value } },
      },
    },
    withLeaseRenewable(value):: self {
      data+: {
        vault_ldap_dynamic_credentials+: { [terraformName]+: { lease_renewable: value } },
      },
    },
    withNamespace(value):: self {
      data+: {
        vault_ldap_dynamic_credentials+: { [terraformName]+: { namespace: value } },
      },
    },
    withUsername(value):: self {
      data+: {
        vault_ldap_dynamic_credentials+: { [terraformName]+: { username: value } },
      },
    },
    withDistinguishedNames(value):: self {
      data+: {
        vault_ldap_dynamic_credentials+: { [terraformName]+: { distinguished_names: value } },
      },
    },
    withLeaseDuration(value):: self {
      data+: {
        vault_ldap_dynamic_credentials+: { [terraformName]+: { lease_duration: value } },
      },
    },
    withId(value):: self {
      data+: {
        vault_ldap_dynamic_credentials+: { [terraformName]+: { id: value } },
      },
    },
    withLeaseId(value):: self {
      data+: {
        vault_ldap_dynamic_credentials+: { [terraformName]+: { lease_id: value } },
      },
    },
  },
}
