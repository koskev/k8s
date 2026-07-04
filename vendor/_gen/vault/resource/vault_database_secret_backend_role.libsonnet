{
  local outerSelf = self,
  new(terraformName, backend, creation_statements, db_name, name):: self.functions(terraformName) {
    ref():: outerSelf.ref(terraformName),
    _type:: 'tf',
    resource+: {
      vault_database_secret_backend_role+: {
        [terraformName]+: {
          backend: backend,
          creation_statements: creation_statements,
          db_name: db_name,
          name: name,
        },
      },
    },
  },
  functions(terraformName):: {
    '#withBackend':: { 'function': { help: |||
      The path of the Database Secret Backend the role belongs to.
    ||| } },
    withBackend(value):: self {
      resource+: {
        vault_database_secret_backend_role+: { [terraformName]+: { backend: value } },
      },
    },
    '#withCreationStatements':: { 'function': { help: |||
      Database statements to execute to create and configure a user.
    ||| } },
    withCreationStatements(value):: self {
      resource+: {
        vault_database_secret_backend_role+: { [terraformName]+: { creation_statements: value } },
      },
    },
    '#withCredentialConfig':: { 'function': { help: |||
      Specifies the configuration for the given credential_type.
    ||| } },
    withCredentialConfig(value):: self {
      resource+: {
        vault_database_secret_backend_role+: { [terraformName]+: { credential_config: value } },
      },
    },
    '#withCredentialType':: { 'function': { help: |||
      Specifies the type of credential that will be generated for the role.
    ||| } },
    withCredentialType(value):: self {
      resource+: {
        vault_database_secret_backend_role+: { [terraformName]+: { credential_type: value } },
      },
    },
    '#withDbName':: { 'function': { help: |||
      Database connection to use for this role.
    ||| } },
    withDbName(value):: self {
      resource+: {
        vault_database_secret_backend_role+: { [terraformName]+: { db_name: value } },
      },
    },
    '#withDefaultTtl':: { 'function': { help: |||
      Default TTL for leases associated with this role, in seconds.
    ||| } },
    withDefaultTtl(value):: self {
      resource+: {
        vault_database_secret_backend_role+: { [terraformName]+: { default_ttl: value } },
      },
    },
    withId(value):: self {
      resource+: {
        vault_database_secret_backend_role+: { [terraformName]+: { id: value } },
      },
    },
    '#withMaxTtl':: { 'function': { help: |||
      Maximum TTL for leases associated with this role, in seconds.
    ||| } },
    withMaxTtl(value):: self {
      resource+: {
        vault_database_secret_backend_role+: { [terraformName]+: { max_ttl: value } },
      },
    },
    '#withName':: { 'function': { help: |||
      Unique name for the role.
    ||| } },
    withName(value):: self {
      resource+: {
        vault_database_secret_backend_role+: { [terraformName]+: { name: value } },
      },
    },
    '#withNamespace':: { 'function': { help: |||
      Target namespace. (requires Enterprise)
    ||| } },
    withNamespace(value):: self {
      resource+: {
        vault_database_secret_backend_role+: { [terraformName]+: { namespace: value } },
      },
    },
    '#withRenewStatements':: { 'function': { help: |||
      Database statements to execute to renew a user.
    ||| } },
    withRenewStatements(value):: self {
      resource+: {
        vault_database_secret_backend_role+: { [terraformName]+: { renew_statements: value } },
      },
    },
    '#withRevocationStatements':: { 'function': { help: |||
      Database statements to execute to revoke a user.
    ||| } },
    withRevocationStatements(value):: self {
      resource+: {
        vault_database_secret_backend_role+: { [terraformName]+: { revocation_statements: value } },
      },
    },
    '#withRollbackStatements':: { 'function': { help: |||
      Database statements to execute to rollback a create operation in the event of an error.
    ||| } },
    withRollbackStatements(value):: self {
      resource+: {
        vault_database_secret_backend_role+: { [terraformName]+: { rollback_statements: value } },
      },
    },
  },
  ref(terraformName):: {
    local refSelf = self,
    plain(suffix=''):: '${ vault_database_secret_backend_role.%s%s }' % [terraformName, suffix],
    fields:: {
      '#backend':: { 'function': { help: |||
        The path of the Database Secret Backend the role belongs to.
      ||| } },
      backend(suffix=''):: refSelf.plain('.backend%s' % suffix),
      '#creation_statements':: { 'function': { help: |||
        Database statements to execute to create and configure a user.
      ||| } },
      creation_statements(suffix=''):: refSelf.plain('.creation_statements%s' % suffix),
      '#credential_config':: { 'function': { help: |||
        Specifies the configuration for the given credential_type.
      ||| } },
      credential_config(suffix=''):: refSelf.plain('.credential_config%s' % suffix),
      '#credential_type':: { 'function': { help: |||
        Specifies the type of credential that will be generated for the role.
      ||| } },
      credential_type(suffix=''):: refSelf.plain('.credential_type%s' % suffix),
      '#db_name':: { 'function': { help: |||
        Database connection to use for this role.
      ||| } },
      db_name(suffix=''):: refSelf.plain('.db_name%s' % suffix),
      '#default_ttl':: { 'function': { help: |||
        Default TTL for leases associated with this role, in seconds.
      ||| } },
      default_ttl(suffix=''):: refSelf.plain('.default_ttl%s' % suffix),
      id(suffix=''):: refSelf.plain('.id%s' % suffix),
      '#max_ttl':: { 'function': { help: |||
        Maximum TTL for leases associated with this role, in seconds.
      ||| } },
      max_ttl(suffix=''):: refSelf.plain('.max_ttl%s' % suffix),
      '#name':: { 'function': { help: |||
        Unique name for the role.
      ||| } },
      name(suffix=''):: refSelf.plain('.name%s' % suffix),
      '#namespace':: { 'function': { help: |||
        Target namespace. (requires Enterprise)
      ||| } },
      namespace(suffix=''):: refSelf.plain('.namespace%s' % suffix),
      '#renew_statements':: { 'function': { help: |||
        Database statements to execute to renew a user.
      ||| } },
      renew_statements(suffix=''):: refSelf.plain('.renew_statements%s' % suffix),
      '#revocation_statements':: { 'function': { help: |||
        Database statements to execute to revoke a user.
      ||| } },
      revocation_statements(suffix=''):: refSelf.plain('.revocation_statements%s' % suffix),
      '#rollback_statements':: { 'function': { help: |||
        Database statements to execute to rollback a create operation in the event of an error.
      ||| } },
      rollback_statements(suffix=''):: refSelf.plain('.rollback_statements%s' % suffix),
    },
  },
}
