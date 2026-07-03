{
  new(terraformName, creation_ldif, deletion_ldif, role_name):: self.functions(terraformName) {
    _type:: 'tf',
    resource+: {
      vault_ldap_secret_backend_dynamic_role+: {
        [terraformName]+: {
          creation_ldif: creation_ldif,
          deletion_ldif: deletion_ldif,
          role_name: role_name,
        },
      },
    },
  },
  functions(terraformName):: {
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
  ref(terraformName):: {
    local refSelf = self,
    plain(suffix=''):: '${ vault_ldap_secret_backend_dynamic_role.%s%s }' % [terraformName, suffix],
    fields:: {
      '#creation_ldif':: { 'function': { help: |||
        A templatized LDIF string used to create a user account. May contain multiple entries. 
      ||| } },
      creation_ldif(suffix=''):: refSelf.plain('.creation_ldif%s' % suffix),
      '#default_ttl':: { 'function': { help: |||
        Specifies the TTL for the leases associated with this role. 
      ||| } },
      default_ttl(suffix=''):: refSelf.plain('.default_ttl%s' % suffix),
      '#deletion_ldif':: { 'function': { help: |||
        A templatized LDIF string used to delete the user account once its TTL has expired. This may contain multiple LDIF entries. 
      ||| } },
      deletion_ldif(suffix=''):: refSelf.plain('.deletion_ldif%s' % suffix),
      id(suffix=''):: refSelf.plain('.id%s' % suffix),
      '#max_ttl':: { 'function': { help: |||
        Specifies the maximum TTL for the leases associated with this role. 
      ||| } },
      max_ttl(suffix=''):: refSelf.plain('.max_ttl%s' % suffix),
      '#mount':: { 'function': { help: |||
        The path where the LDAP secrets backend is mounted. 
      ||| } },
      mount(suffix=''):: refSelf.plain('.mount%s' % suffix),
      '#namespace':: { 'function': { help: |||
        Target namespace. (requires Enterprise) 
      ||| } },
      namespace(suffix=''):: refSelf.plain('.namespace%s' % suffix),
      '#role_name':: { 'function': { help: |||
        Name of the role. 
      ||| } },
      role_name(suffix=''):: refSelf.plain('.role_name%s' % suffix),
      '#rollback_ldif':: { 'function': { help: |||
        A templatized LDIF string used to attempt to rollback any changes in the event that execution of the creation_ldif results in an error. This may contain multiple LDIF entries. 
      ||| } },
      rollback_ldif(suffix=''):: refSelf.plain('.rollback_ldif%s' % suffix),
      '#username_template':: { 'function': { help: |||
        A template used to generate a dynamic username. This will be used to fill in the .Username field within the creation_ldif string. 
      ||| } },
      username_template(suffix=''):: refSelf.plain('.username_template%s' % suffix),
    },
  },
}
