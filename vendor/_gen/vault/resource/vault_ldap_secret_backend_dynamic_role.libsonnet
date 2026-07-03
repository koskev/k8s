{
  new(terraformName, creation_ldif, deletion_ldif, role_name):: {
    _type:: 'tf',
    resource+: {
      vault_ldap_secret_backend_dynamic_role+: { [terraformName]+: {
        creation_ldif: creation_ldif,
        deletion_ldif: deletion_ldif,
        role_name: role_name,
      } },
    },
    '#withCreationLdif':: { 'function': { help: |||
      A templatized LDIF string used to create a user account. May contain multiple entries. 
    ||| } },
    withCreationLdif(value):: self {
      resource+: {
        vault_ldap_secret_backend_dynamic_role+: { [terraformName]+: { creation_ldif: value } },
      },
    },
    '#withDefaultTtl':: { 'function': { help: |||
      Specifies the TTL for the leases associated with this role. 
    ||| } },
    withDefaultTtl(value):: self {
      resource+: {
        vault_ldap_secret_backend_dynamic_role+: { [terraformName]+: { default_ttl: value } },
      },
    },
    '#withDeletionLdif':: { 'function': { help: |||
      A templatized LDIF string used to delete the user account once its TTL has expired. This may contain multiple LDIF entries. 
    ||| } },
    withDeletionLdif(value):: self {
      resource+: {
        vault_ldap_secret_backend_dynamic_role+: { [terraformName]+: { deletion_ldif: value } },
      },
    },
    withId(value):: self {
      resource+: {
        vault_ldap_secret_backend_dynamic_role+: { [terraformName]+: { id: value } },
      },
    },
    '#withMaxTtl':: { 'function': { help: |||
      Specifies the maximum TTL for the leases associated with this role. 
    ||| } },
    withMaxTtl(value):: self {
      resource+: {
        vault_ldap_secret_backend_dynamic_role+: { [terraformName]+: { max_ttl: value } },
      },
    },
    '#withMount':: { 'function': { help: |||
      The path where the LDAP secrets backend is mounted. 
    ||| } },
    withMount(value):: self {
      resource+: {
        vault_ldap_secret_backend_dynamic_role+: { [terraformName]+: { mount: value } },
      },
    },
    '#withNamespace':: { 'function': { help: |||
      Target namespace. (requires Enterprise) 
    ||| } },
    withNamespace(value):: self {
      resource+: {
        vault_ldap_secret_backend_dynamic_role+: { [terraformName]+: { namespace: value } },
      },
    },
    '#withRoleName':: { 'function': { help: |||
      Name of the role. 
    ||| } },
    withRoleName(value):: self {
      resource+: {
        vault_ldap_secret_backend_dynamic_role+: { [terraformName]+: { role_name: value } },
      },
    },
    '#withRollbackLdif':: { 'function': { help: |||
      A templatized LDIF string used to attempt to rollback any changes in the event that execution of the creation_ldif results in an error. This may contain multiple LDIF entries. 
    ||| } },
    withRollbackLdif(value):: self {
      resource+: {
        vault_ldap_secret_backend_dynamic_role+: { [terraformName]+: { rollback_ldif: value } },
      },
    },
    '#withUsernameTemplate':: { 'function': { help: |||
      A template used to generate a dynamic username. This will be used to fill in the .Username field within the creation_ldif string. 
    ||| } },
    withUsernameTemplate(value):: self {
      resource+: {
        vault_ldap_secret_backend_dynamic_role+: { [terraformName]+: { username_template: value } },
      },
    },
  },
}
