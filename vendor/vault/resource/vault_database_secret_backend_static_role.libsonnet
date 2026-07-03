{
  new(terraformName, backend, username, db_name, name):: {
    _type:: 'tf',
    resource+: {
      vault_database_secret_backend_static_role+: { [terraformName]+: {
        backend: backend,
        username: username,
        db_name: db_name,
        name: name,
      } },
    },
    withPasswordWo(value):: self {
      resource+: {
        vault_database_secret_backend_static_role+: { [terraformName]+: { password_wo: value } },
      },
    },
    withRotationWindow(value):: self {
      resource+: {
        vault_database_secret_backend_static_role+: { [terraformName]+: { rotation_window: value } },
      },
    },
    withBackend(value):: self {
      resource+: {
        vault_database_secret_backend_static_role+: { [terraformName]+: { backend: value } },
      },
    },
    withRotationSchedule(value):: self {
      resource+: {
        vault_database_secret_backend_static_role+: { [terraformName]+: { rotation_schedule: value } },
      },
    },
    withUsername(value):: self {
      resource+: {
        vault_database_secret_backend_static_role+: { [terraformName]+: { username: value } },
      },
    },
    withRotationPeriod(value):: self {
      resource+: {
        vault_database_secret_backend_static_role+: { [terraformName]+: { rotation_period: value } },
      },
    },
    withId(value):: self {
      resource+: {
        vault_database_secret_backend_static_role+: { [terraformName]+: { id: value } },
      },
    },
    withCredentialConfig(value):: self {
      resource+: {
        vault_database_secret_backend_static_role+: { [terraformName]+: { credential_config: value } },
      },
    },
    withRotationStatements(value):: self {
      resource+: {
        vault_database_secret_backend_static_role+: { [terraformName]+: { rotation_statements: value } },
      },
    },
    withDbName(value):: self {
      resource+: {
        vault_database_secret_backend_static_role+: { [terraformName]+: { db_name: value } },
      },
    },
    withSelfManagedPassword(value):: self {
      resource+: {
        vault_database_secret_backend_static_role+: { [terraformName]+: { self_managed_password: value } },
      },
    },
    withName(value):: self {
      resource+: {
        vault_database_secret_backend_static_role+: { [terraformName]+: { name: value } },
      },
    },
    withCredentialType(value):: self {
      resource+: {
        vault_database_secret_backend_static_role+: { [terraformName]+: { credential_type: value } },
      },
    },
    withPasswordWoVersion(value):: self {
      resource+: {
        vault_database_secret_backend_static_role+: { [terraformName]+: { password_wo_version: value } },
      },
    },
    withSkipImportRotation(value):: self {
      resource+: {
        vault_database_secret_backend_static_role+: { [terraformName]+: { skip_import_rotation: value } },
      },
    },
    withNamespace(value):: self {
      resource+: {
        vault_database_secret_backend_static_role+: { [terraformName]+: { namespace: value } },
      },
    },
  },
}
