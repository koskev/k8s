{
  local outerSelf = self,
  new(terraformName, backend, db_name, name, username):: self.functions(terraformName) {
    ref():: outerSelf.ref(terraformName),
    _type:: 'tf',
    resource+: {
      vault_database_secret_backend_static_role+: {
        [terraformName]+: {
          backend: backend,
          db_name: db_name,
          name: name,
          username: username,
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
        vault_database_secret_backend_static_role+: { [terraformName]+: { backend: value } },
      },
    },
    '#withCredentialConfig':: { 'function': { help: |||
      The configuration for the credential type.Full documentation for the allowed values can be found under "https://developer.hashicorp.com/vault/api-docs/secret/databases#credential_config".
    ||| } },
    withCredentialConfig(value):: self {
      resource+: {
        vault_database_secret_backend_static_role+: { [terraformName]+: { credential_config: value } },
      },
    },
    '#withCredentialType':: { 'function': { help: |||
      The credential type for the user, can be one of "password", "rsa_private_key" or "client_certificate".The configuration can be done in `credential_config`.
    ||| } },
    withCredentialType(value):: self {
      resource+: {
        vault_database_secret_backend_static_role+: { [terraformName]+: { credential_type: value } },
      },
    },
    '#withDbName':: { 'function': { help: |||
      Database connection to use for this role.
    ||| } },
    withDbName(value):: self {
      resource+: {
        vault_database_secret_backend_static_role+: { [terraformName]+: { db_name: value } },
      },
    },
    withId(value):: self {
      resource+: {
        vault_database_secret_backend_static_role+: { [terraformName]+: { id: value } },
      },
    },
    '#withName':: { 'function': { help: |||
      Unique name for the static role.
    ||| } },
    withName(value):: self {
      resource+: {
        vault_database_secret_backend_static_role+: { [terraformName]+: { name: value } },
      },
    },
    '#withNamespace':: { 'function': { help: |||
      Target namespace. (requires Enterprise)
    ||| } },
    withNamespace(value):: self {
      resource+: {
        vault_database_secret_backend_static_role+: { [terraformName]+: { namespace: value } },
      },
    },
    '#withPasswordWo':: { 'function': { help: |||
      The password corresponding to the username in the database. This is a write-only field. Requires Vault 1.19+. Deprecates 'self_managed_password' which was introduced in Vault 1.18.
    ||| } },
    withPasswordWo(value):: self {
      resource+: {
        vault_database_secret_backend_static_role+: { [terraformName]+: { password_wo: value } },
      },
    },
    '#withPasswordWoVersion':: { 'function': { help: |||
      The version of the password_wo field. Used for tracking changes to the write-only password field.
    ||| } },
    withPasswordWoVersion(value):: self {
      resource+: {
        vault_database_secret_backend_static_role+: { [terraformName]+: { password_wo_version: value } },
      },
    },
    '#withRotationPeriod':: { 'function': { help: |||
      The amount of time Vault should wait before rotating the password, in seconds.
    ||| } },
    withRotationPeriod(value):: self {
      resource+: {
        vault_database_secret_backend_static_role+: { [terraformName]+: { rotation_period: value } },
      },
    },
    '#withRotationSchedule':: { 'function': { help: |||
      A cron-style string that will define the schedule on which rotations should occur.
    ||| } },
    withRotationSchedule(value):: self {
      resource+: {
        vault_database_secret_backend_static_role+: { [terraformName]+: { rotation_schedule: value } },
      },
    },
    '#withRotationStatements':: { 'function': { help: |||
      Database statements to execute to rotate the password for the configured database user.
    ||| } },
    withRotationStatements(value):: self {
      resource+: {
        vault_database_secret_backend_static_role+: { [terraformName]+: { rotation_statements: value } },
      },
    },
    '#withRotationWindow':: { 'function': { help: |||
      The amount of time in seconds in which the rotations are allowed to occur starting from a given rotation_schedule.
    ||| } },
    withRotationWindow(value):: self {
      resource+: {
        vault_database_secret_backend_static_role+: { [terraformName]+: { rotation_window: value } },
      },
    },
    '#withSelfManagedPassword':: { 'function': { help: |||
      The password corresponding to the username in the database. Required when using the Rootless Password Rotation workflow for static roles. Deprecated in favor of password_wo field introduced in Vault 1.19.
    ||| } },
    withSelfManagedPassword(value):: self {
      resource+: {
        vault_database_secret_backend_static_role+: { [terraformName]+: { self_managed_password: value } },
      },
    },
    '#withSkipImportRotation':: { 'function': { help: |||
      Skip rotation of the password on import. When not set, inherits from connection's skip_static_role_import_rotation.
    ||| } },
    withSkipImportRotation(value):: self {
      resource+: {
        vault_database_secret_backend_static_role+: { [terraformName]+: { skip_import_rotation: value } },
      },
    },
    '#withUsername':: { 'function': { help: |||
      The database username that this role corresponds to.
    ||| } },
    withUsername(value):: self {
      resource+: {
        vault_database_secret_backend_static_role+: { [terraformName]+: { username: value } },
      },
    },
  },
  ref(terraformName):: {
    local refSelf = self,
    plain(suffix=''):: '${ vault_database_secret_backend_static_role.%s%s }' % [terraformName, suffix],
    fields:: {
      '#backend':: { 'function': { help: |||
        The path of the Database Secret Backend the role belongs to.
      ||| } },
      backend(suffix=''):: refSelf.plain('.backend%s' % suffix),
      '#credential_config':: { 'function': { help: |||
        The configuration for the credential type.Full documentation for the allowed values can be found under "https://developer.hashicorp.com/vault/api-docs/secret/databases#credential_config".
      ||| } },
      credential_config(suffix=''):: refSelf.plain('.credential_config%s' % suffix),
      '#credential_type':: { 'function': { help: |||
        The credential type for the user, can be one of "password", "rsa_private_key" or "client_certificate".The configuration can be done in `credential_config`.
      ||| } },
      credential_type(suffix=''):: refSelf.plain('.credential_type%s' % suffix),
      '#db_name':: { 'function': { help: |||
        Database connection to use for this role.
      ||| } },
      db_name(suffix=''):: refSelf.plain('.db_name%s' % suffix),
      id(suffix=''):: refSelf.plain('.id%s' % suffix),
      '#name':: { 'function': { help: |||
        Unique name for the static role.
      ||| } },
      name(suffix=''):: refSelf.plain('.name%s' % suffix),
      '#namespace':: { 'function': { help: |||
        Target namespace. (requires Enterprise)
      ||| } },
      namespace(suffix=''):: refSelf.plain('.namespace%s' % suffix),
      '#password_wo':: { 'function': { help: |||
        The password corresponding to the username in the database. This is a write-only field. Requires Vault 1.19+. Deprecates 'self_managed_password' which was introduced in Vault 1.18.
      ||| } },
      password_wo(suffix=''):: refSelf.plain('.password_wo%s' % suffix),
      '#password_wo_version':: { 'function': { help: |||
        The version of the password_wo field. Used for tracking changes to the write-only password field.
      ||| } },
      password_wo_version(suffix=''):: refSelf.plain('.password_wo_version%s' % suffix),
      '#rotation_period':: { 'function': { help: |||
        The amount of time Vault should wait before rotating the password, in seconds.
      ||| } },
      rotation_period(suffix=''):: refSelf.plain('.rotation_period%s' % suffix),
      '#rotation_schedule':: { 'function': { help: |||
        A cron-style string that will define the schedule on which rotations should occur.
      ||| } },
      rotation_schedule(suffix=''):: refSelf.plain('.rotation_schedule%s' % suffix),
      '#rotation_statements':: { 'function': { help: |||
        Database statements to execute to rotate the password for the configured database user.
      ||| } },
      rotation_statements(suffix=''):: refSelf.plain('.rotation_statements%s' % suffix),
      '#rotation_window':: { 'function': { help: |||
        The amount of time in seconds in which the rotations are allowed to occur starting from a given rotation_schedule.
      ||| } },
      rotation_window(suffix=''):: refSelf.plain('.rotation_window%s' % suffix),
      '#self_managed_password':: { 'function': { help: |||
        The password corresponding to the username in the database. Required when using the Rootless Password Rotation workflow for static roles. Deprecated in favor of password_wo field introduced in Vault 1.19.
      ||| } },
      self_managed_password(suffix=''):: refSelf.plain('.self_managed_password%s' % suffix),
      '#skip_import_rotation':: { 'function': { help: |||
        Skip rotation of the password on import. When not set, inherits from connection's skip_static_role_import_rotation.
      ||| } },
      skip_import_rotation(suffix=''):: refSelf.plain('.skip_import_rotation%s' % suffix),
      '#username':: { 'function': { help: |||
        The database username that this role corresponds to.
      ||| } },
      username(suffix=''):: refSelf.plain('.username%s' % suffix),
    },
  },
}
