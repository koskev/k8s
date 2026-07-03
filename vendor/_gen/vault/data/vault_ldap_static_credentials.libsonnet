{
  new(terraformName, mount, role_name):: {
    _type:: 'tf',
    data+: {
      vault_ldap_static_credentials+: { [terraformName]+: {
        mount: mount,
        role_name: role_name,
      } },
    },
    '#withDn':: { 'function': { help: |||
      Distinguished name (DN) of the existing LDAP entry to manage password rotation for. 
    ||| } },
    withDn(value):: self {
      data+: {
        vault_ldap_static_credentials+: { [terraformName]+: { dn: value } },
      },
    },
    withId(value):: self {
      data+: {
        vault_ldap_static_credentials+: { [terraformName]+: { id: value } },
      },
    },
    '#withLastPassword':: { 'function': { help: |||
      Last known password for the static role. 
    ||| } },
    withLastPassword(value):: self {
      data+: {
        vault_ldap_static_credentials+: { [terraformName]+: { last_password: value } },
      },
    },
    '#withLastVaultRotation':: { 'function': { help: |||
      Last time Vault rotated this static role's password. 
    ||| } },
    withLastVaultRotation(value):: self {
      data+: {
        vault_ldap_static_credentials+: { [terraformName]+: { last_vault_rotation: value } },
      },
    },
    '#withMount':: { 'function': { help: |||
      LDAP Secret Backend to read credentials from. 
    ||| } },
    withMount(value):: self {
      data+: {
        vault_ldap_static_credentials+: { [terraformName]+: { mount: value } },
      },
    },
    '#withNamespace':: { 'function': { help: |||
      Target namespace. (requires Enterprise) 
    ||| } },
    withNamespace(value):: self {
      data+: {
        vault_ldap_static_credentials+: { [terraformName]+: { namespace: value } },
      },
    },
    '#withPassword':: { 'function': { help: |||
      Password for the static role. 
    ||| } },
    withPassword(value):: self {
      data+: {
        vault_ldap_static_credentials+: { [terraformName]+: { password: value } },
      },
    },
    '#withRoleName':: { 'function': { help: |||
      Name of the role. 
    ||| } },
    withRoleName(value):: self {
      data+: {
        vault_ldap_static_credentials+: { [terraformName]+: { role_name: value } },
      },
    },
    '#withRotationPeriod':: { 'function': { help: |||
      How often Vault should rotate the password of the user entry. 
    ||| } },
    withRotationPeriod(value):: self {
      data+: {
        vault_ldap_static_credentials+: { [terraformName]+: { rotation_period: value } },
      },
    },
    '#withTtl':: { 'function': { help: |||
      Duration in seconds after which the issued credential should expire. 
    ||| } },
    withTtl(value):: self {
      data+: {
        vault_ldap_static_credentials+: { [terraformName]+: { ttl: value } },
      },
    },
    '#withUsername':: { 'function': { help: |||
      Name of the static role. 
    ||| } },
    withUsername(value):: self {
      data+: {
        vault_ldap_static_credentials+: { [terraformName]+: { username: value } },
      },
    },
  },
}
