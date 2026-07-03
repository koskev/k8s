{
  new(terraformName, backend, db_name, name, username):: {
    _type:: 'tf',
    resource+: {
      vault_database_secret_backend_static_role+: { [terraformName]+: {
        backend: backend,
        db_name: db_name,
        name: name,
        username: username,
      } },
    },
    '#withBackend': { 'function': { help: |||
      The path of the Database Secret Backend the role belongs to. 
    ||| } },
    withBackend(value):: self {
      resource+: {
        vault_database_secret_backend_static_role+: { [terraformName]+: { backend: value } },
      },
    },
    '#withCredentialConfig': { 'function': { help: |||
      The configuration for the credential type.Full documentation for the allowed values can be found under "https://developer.hashicorp.com/vault/api-docs/secret/databases#credential_config". 
    ||| } },
    withCredentialConfig(value):: self {
      resource+: {
        vault_database_secret_backend_static_role+: { [terraformName]+: { credential_config: value } },
      },
    },
    '#withCredentialType': { 'function': { help: |||
      The credential type for the user, can be one of "password", "rsa_private_key" or "client_certificate".The configuration can be done in `credential_config`. 
    ||| } },
    withCredentialType(value):: self {
      resource+: {
        vault_database_secret_backend_static_role+: { [terraformName]+: { credential_type: value } },
      },
    },
    '#withDbName': { 'function': { help: |||
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
    '#withName': { 'function': { help: |||
      Unique name for the static role. 
    ||| } },
    withName(value):: self {
      resource+: {
        vault_database_secret_backend_static_role+: { [terraformName]+: { name: value } },
      },
    },
    '#withNamespace': { 'function': { help: |||
      Target namespace. (requires Enterprise) 
    ||| } },
    withNamespace(value):: self {
      resource+: {
        vault_database_secret_backend_static_role+: { [terraformName]+: { namespace: value } },
      },
    },
    '#withPasswordWo': { 'function': { help: |||
      The password corresponding to the username in the database. This is a write-only field. Requires Vault 1.19+. Deprecates 'self_managed_password' which was introduced in Vault 1.18. 
    ||| } },
    withPasswordWo(value):: self {
      resource+: {
        vault_database_secret_backend_static_role+: { [terraformName]+: { password_wo: value } },
      },
    },
    '#withPasswordWoVersion': { 'function': { help: |||
      The version of the password_wo field. Used for tracking changes to the write-only password field. 
    ||| } },
    withPasswordWoVersion(value):: self {
      resource+: {
        vault_database_secret_backend_static_role+: { [terraformName]+: { password_wo_version: value } },
      },
    },
    '#withRotationPeriod': { 'function': { help: |||
      The amount of time Vault should wait before rotating the password, in seconds. 
    ||| } },
    withRotationPeriod(value):: self {
      resource+: {
        vault_database_secret_backend_static_role+: { [terraformName]+: { rotation_period: value } },
      },
    },
    '#withRotationSchedule': { 'function': { help: |||
      A cron-style string that will define the schedule on which rotations should occur. 
    ||| } },
    withRotationSchedule(value):: self {
      resource+: {
        vault_database_secret_backend_static_role+: { [terraformName]+: { rotation_schedule: value } },
      },
    },
    '#withRotationStatements': { 'function': { help: |||
      Database statements to execute to rotate the password for the configured database user. 
    ||| } },
    withRotationStatements(value):: self {
      resource+: {
        vault_database_secret_backend_static_role+: { [terraformName]+: { rotation_statements: value } },
      },
    },
    '#withRotationWindow': { 'function': { help: |||
      The amount of time in seconds in which the rotations are allowed to occur starting from a given rotation_schedule. 
    ||| } },
    withRotationWindow(value):: self {
      resource+: {
        vault_database_secret_backend_static_role+: { [terraformName]+: { rotation_window: value } },
      },
    },
    '#withSelfManagedPassword': { 'function': { help: |||
      The password corresponding to the username in the database. Required when using the Rootless Password Rotation workflow for static roles. Deprecated in favor of password_wo field introduced in Vault 1.19. 
    ||| } },
    withSelfManagedPassword(value):: self {
      resource+: {
        vault_database_secret_backend_static_role+: { [terraformName]+: { self_managed_password: value } },
      },
    },
    '#withSkipImportRotation': { 'function': { help: |||
      Skip rotation of the password on import. When not set, inherits from connection's skip_static_role_import_rotation. 
    ||| } },
    withSkipImportRotation(value):: self {
      resource+: {
        vault_database_secret_backend_static_role+: { [terraformName]+: { skip_import_rotation: value } },
      },
    },
    '#withUsername': { 'function': { help: |||
      The database username that this role corresponds to. 
    ||| } },
    withUsername(value):: self {
      resource+: {
        vault_database_secret_backend_static_role+: { [terraformName]+: { username: value } },
      },
    },
  },
}
