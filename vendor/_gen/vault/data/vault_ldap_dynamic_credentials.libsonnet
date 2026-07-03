{
  new(terraformName, mount, role_name):: {
    _type:: 'tf',
    data+: {
      vault_ldap_dynamic_credentials+: { [terraformName]+: {
        mount: mount,
        role_name: role_name,
      } },
    },
    '#withDistinguishedNames': { 'function': { help: |||
      List of the distinguished names (DN) created. 
    ||| } },
    withDistinguishedNames(value):: self {
      data+: {
        vault_ldap_dynamic_credentials+: { [terraformName]+: { distinguished_names: value } },
      },
    },
    withId(value):: self {
      data+: {
        vault_ldap_dynamic_credentials+: { [terraformName]+: { id: value } },
      },
    },
    '#withLeaseDuration': { 'function': { help: |||
      Lease duration in seconds. 
    ||| } },
    withLeaseDuration(value):: self {
      data+: {
        vault_ldap_dynamic_credentials+: { [terraformName]+: { lease_duration: value } },
      },
    },
    '#withLeaseId': { 'function': { help: |||
      Lease identifier assigned by Vault. 
    ||| } },
    withLeaseId(value):: self {
      data+: {
        vault_ldap_dynamic_credentials+: { [terraformName]+: { lease_id: value } },
      },
    },
    '#withLeaseRenewable': { 'function': { help: |||
      True if the duration of this lease can be extended through renewal. 
    ||| } },
    withLeaseRenewable(value):: self {
      data+: {
        vault_ldap_dynamic_credentials+: { [terraformName]+: { lease_renewable: value } },
      },
    },
    '#withMount': { 'function': { help: |||
      LDAP Secret Backend to read credentials from. 
    ||| } },
    withMount(value):: self {
      data+: {
        vault_ldap_dynamic_credentials+: { [terraformName]+: { mount: value } },
      },
    },
    '#withNamespace': { 'function': { help: |||
      Target namespace. (requires Enterprise) 
    ||| } },
    withNamespace(value):: self {
      data+: {
        vault_ldap_dynamic_credentials+: { [terraformName]+: { namespace: value } },
      },
    },
    '#withPassword': { 'function': { help: |||
      Password for the dynamic role. 
    ||| } },
    withPassword(value):: self {
      data+: {
        vault_ldap_dynamic_credentials+: { [terraformName]+: { password: value } },
      },
    },
    '#withRoleName': { 'function': { help: |||
      Name of the role. 
    ||| } },
    withRoleName(value):: self {
      data+: {
        vault_ldap_dynamic_credentials+: { [terraformName]+: { role_name: value } },
      },
    },
    '#withUsername': { 'function': { help: |||
      Name of the dynamic role. 
    ||| } },
    withUsername(value):: self {
      data+: {
        vault_ldap_dynamic_credentials+: { [terraformName]+: { username: value } },
      },
    },
  },
}
