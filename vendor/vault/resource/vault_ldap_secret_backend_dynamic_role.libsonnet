{
  new(terraformName, creation_ldif, role_name, deletion_ldif):: {
    _type:: 'tf',
    resource+: {
      vault_ldap_secret_backend_dynamic_role+: { [terraformName]+: {
        creation_ldif: creation_ldif,
        role_name: role_name,
        deletion_ldif: deletion_ldif,
      } },
    },
    withCreationLdif(value):: self {
      resource+: {
        vault_ldap_secret_backend_dynamic_role+: { [terraformName]+: { creation_ldif: value } },
      },
    },
    withMaxTtl(value):: self {
      resource+: {
        vault_ldap_secret_backend_dynamic_role+: { [terraformName]+: { max_ttl: value } },
      },
    },
    withNamespace(value):: self {
      resource+: {
        vault_ldap_secret_backend_dynamic_role+: { [terraformName]+: { namespace: value } },
      },
    },
    withRoleName(value):: self {
      resource+: {
        vault_ldap_secret_backend_dynamic_role+: { [terraformName]+: { role_name: value } },
      },
    },
    withRollbackLdif(value):: self {
      resource+: {
        vault_ldap_secret_backend_dynamic_role+: { [terraformName]+: { rollback_ldif: value } },
      },
    },
    withDefaultTtl(value):: self {
      resource+: {
        vault_ldap_secret_backend_dynamic_role+: { [terraformName]+: { default_ttl: value } },
      },
    },
    withUsernameTemplate(value):: self {
      resource+: {
        vault_ldap_secret_backend_dynamic_role+: { [terraformName]+: { username_template: value } },
      },
    },
    withId(value):: self {
      resource+: {
        vault_ldap_secret_backend_dynamic_role+: { [terraformName]+: { id: value } },
      },
    },
    withDeletionLdif(value):: self {
      resource+: {
        vault_ldap_secret_backend_dynamic_role+: { [terraformName]+: { deletion_ldif: value } },
      },
    },
    withMount(value):: self {
      resource+: {
        vault_ldap_secret_backend_dynamic_role+: { [terraformName]+: { mount: value } },
      },
    },
  },
}
