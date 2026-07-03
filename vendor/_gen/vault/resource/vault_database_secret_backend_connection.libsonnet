{
  new(terraformName, backend, name):: self.functions(terraformName) {
    _type:: 'tf',
    resource+: {
      vault_database_secret_backend_connection+: {
        [terraformName]+: {
          backend: backend,
          name: name,
        },
      },
    },
  },
  functions(terraformName):: {
    '#withAllowedRoles':: { 'function': { help: |||
      A list of roles that are allowed to use this connection. 
    ||| } },
    withAllowedRoles(value):: self {
      resource+: {
        vault_database_secret_backend_connection+: { [terraformName]+: { allowed_roles: value } },
      },
    },
    '#withBackend':: { 'function': { help: |||
      Unique name of the Vault mount to configure. 
    ||| } },
    withBackend(value):: self {
      resource+: {
        vault_database_secret_backend_connection+: { [terraformName]+: { backend: value } },
      },
    },
    '#withData':: { 'function': { help: |||
      A map of sensitive data to pass to the endpoint. Useful for templated connection strings. 
    ||| } },
    withData(value):: self {
      resource+: {
        vault_database_secret_backend_connection+: { [terraformName]+: { data: value } },
      },
    },
    '#withDisableAutomatedRotation':: { 'function': { help: |||
      Stops rotation of the root credential until set to false. 
    ||| } },
    withDisableAutomatedRotation(value):: self {
      resource+: {
        vault_database_secret_backend_connection+: { [terraformName]+: { disable_automated_rotation: value } },
      },
    },
    withId(value):: self {
      resource+: {
        vault_database_secret_backend_connection+: { [terraformName]+: { id: value } },
      },
    },
    '#withName':: { 'function': { help: |||
      Name of the database connection. 
    ||| } },
    withName(value):: self {
      resource+: {
        vault_database_secret_backend_connection+: { [terraformName]+: { name: value } },
      },
    },
    '#withNamespace':: { 'function': { help: |||
      Target namespace. (requires Enterprise) 
    ||| } },
    withNamespace(value):: self {
      resource+: {
        vault_database_secret_backend_connection+: { [terraformName]+: { namespace: value } },
      },
    },
    '#withPasswordPolicy':: { 'function': { help: |||
      The name of the password policy to use when generating passwords for this database. If not specified, this will use a default policy defined as: 20 characters with at least 1 uppercase, 1 lowercase, 1 number, and 1 dash character. 
    ||| } },
    withPasswordPolicy(value):: self {
      resource+: {
        vault_database_secret_backend_connection+: { [terraformName]+: { password_policy: value } },
      },
    },
    '#withPluginName':: { 'function': { help: |||
      Specifies the name of the plugin to use for this connection. Must be prefixed with the name of one of the supported database engine types. 
    ||| } },
    withPluginName(value):: self {
      resource+: {
        vault_database_secret_backend_connection+: { [terraformName]+: { plugin_name: value } },
      },
    },
    '#withPluginVersion':: { 'function': { help: |||
      Specifies the semantic version of the plugin to use for this connection 
    ||| } },
    withPluginVersion(value):: self {
      resource+: {
        vault_database_secret_backend_connection+: { [terraformName]+: { plugin_version: value } },
      },
    },
    '#withRootRotationStatements':: { 'function': { help: |||
      A list of database statements to be executed to rotate the root user's credentials. 
    ||| } },
    withRootRotationStatements(value):: self {
      resource+: {
        vault_database_secret_backend_connection+: { [terraformName]+: { root_rotation_statements: value } },
      },
    },
    '#withRotationPeriod':: { 'function': { help: |||
      The period of time in seconds between each rotation of the root credential. Cannot be used with rotation_schedule. 
    ||| } },
    withRotationPeriod(value):: self {
      resource+: {
        vault_database_secret_backend_connection+: { [terraformName]+: { rotation_period: value } },
      },
    },
    '#withRotationSchedule':: { 'function': { help: |||
      The cron-style schedule for the root credential to be rotated on. Cannot be used with rotation_period. 
    ||| } },
    withRotationSchedule(value):: self {
      resource+: {
        vault_database_secret_backend_connection+: { [terraformName]+: { rotation_schedule: value } },
      },
    },
    '#withRotationWindow':: { 'function': { help: |||
      The maximum amount of time in seconds Vault is allowed to complete a rotation once a scheduled rotation is triggered. Can only be used with rotation_schedule. 
    ||| } },
    withRotationWindow(value):: self {
      resource+: {
        vault_database_secret_backend_connection+: { [terraformName]+: { rotation_window: value } },
      },
    },
    '#withSkipStaticRoleImportRotation':: { 'function': { help: |||
      Specifies if a given static account's password should be rotated on creation of the static roles associated with this database config. This is can be overridden at the role-level by the static role's skip_import_rotation field. The default is false 
    ||| } },
    withSkipStaticRoleImportRotation(value):: self {
      resource+: {
        vault_database_secret_backend_connection+: { [terraformName]+: { skip_static_role_import_rotation: value } },
      },
    },
    '#withVerifyConnection':: { 'function': { help: |||
      Specifies if the connection is verified during initial configuration. 
    ||| } },
    withVerifyConnection(value):: self {
      resource+: {
        vault_database_secret_backend_connection+: { [terraformName]+: { verify_connection: value } },
      },
    },
  },
  ref(terraformName):: {
    local refSelf = self,
    plain(suffix=''):: '${ vault_database_secret_backend_connection.%s%s }' % [terraformName, suffix],
    fields:: {
      '#allowed_roles':: { 'function': { help: |||
        A list of roles that are allowed to use this connection. 
      ||| } },
      allowed_roles(suffix=''):: refSelf.plain('.allowed_roles%s' % suffix),
      '#backend':: { 'function': { help: |||
        Unique name of the Vault mount to configure. 
      ||| } },
      backend(suffix=''):: refSelf.plain('.backend%s' % suffix),
      '#data':: { 'function': { help: |||
        A map of sensitive data to pass to the endpoint. Useful for templated connection strings. 
      ||| } },
      data(suffix=''):: refSelf.plain('.data%s' % suffix),
      '#disable_automated_rotation':: { 'function': { help: |||
        Stops rotation of the root credential until set to false. 
      ||| } },
      disable_automated_rotation(suffix=''):: refSelf.plain('.disable_automated_rotation%s' % suffix),
      id(suffix=''):: refSelf.plain('.id%s' % suffix),
      '#name':: { 'function': { help: |||
        Name of the database connection. 
      ||| } },
      name(suffix=''):: refSelf.plain('.name%s' % suffix),
      '#namespace':: { 'function': { help: |||
        Target namespace. (requires Enterprise) 
      ||| } },
      namespace(suffix=''):: refSelf.plain('.namespace%s' % suffix),
      '#password_policy':: { 'function': { help: |||
        The name of the password policy to use when generating passwords for this database. If not specified, this will use a default policy defined as: 20 characters with at least 1 uppercase, 1 lowercase, 1 number, and 1 dash character. 
      ||| } },
      password_policy(suffix=''):: refSelf.plain('.password_policy%s' % suffix),
      '#plugin_name':: { 'function': { help: |||
        Specifies the name of the plugin to use for this connection. Must be prefixed with the name of one of the supported database engine types. 
      ||| } },
      plugin_name(suffix=''):: refSelf.plain('.plugin_name%s' % suffix),
      '#plugin_version':: { 'function': { help: |||
        Specifies the semantic version of the plugin to use for this connection 
      ||| } },
      plugin_version(suffix=''):: refSelf.plain('.plugin_version%s' % suffix),
      '#root_rotation_statements':: { 'function': { help: |||
        A list of database statements to be executed to rotate the root user's credentials. 
      ||| } },
      root_rotation_statements(suffix=''):: refSelf.plain('.root_rotation_statements%s' % suffix),
      '#rotation_period':: { 'function': { help: |||
        The period of time in seconds between each rotation of the root credential. Cannot be used with rotation_schedule. 
      ||| } },
      rotation_period(suffix=''):: refSelf.plain('.rotation_period%s' % suffix),
      '#rotation_schedule':: { 'function': { help: |||
        The cron-style schedule for the root credential to be rotated on. Cannot be used with rotation_period. 
      ||| } },
      rotation_schedule(suffix=''):: refSelf.plain('.rotation_schedule%s' % suffix),
      '#rotation_window':: { 'function': { help: |||
        The maximum amount of time in seconds Vault is allowed to complete a rotation once a scheduled rotation is triggered. Can only be used with rotation_schedule. 
      ||| } },
      rotation_window(suffix=''):: refSelf.plain('.rotation_window%s' % suffix),
      '#skip_static_role_import_rotation':: { 'function': { help: |||
        Specifies if a given static account's password should be rotated on creation of the static roles associated with this database config. This is can be overridden at the role-level by the static role's skip_import_rotation field. The default is false 
      ||| } },
      skip_static_role_import_rotation(suffix=''):: refSelf.plain('.skip_static_role_import_rotation%s' % suffix),
      '#verify_connection':: { 'function': { help: |||
        Specifies if the connection is verified during initial configuration. 
      ||| } },
      verify_connection(suffix=''):: refSelf.plain('.verify_connection%s' % suffix),
    },
  },
}
