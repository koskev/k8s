{
  new(terraformName, backend, name):: {
    _type:: 'tf',
    resource+: {
      vault_database_secret_backend_connection+: { [terraformName]+: {
        backend: backend,
        name: name,
      } },
    },
    withBackend(value):: self {
      resource+: {
        vault_database_secret_backend_connection+: { [terraformName]+: { backend: value } },
      },
    },
    withDisableAutomatedRotation(value):: self {
      resource+: {
        vault_database_secret_backend_connection+: { [terraformName]+: { disable_automated_rotation: value } },
      },
    },
    withAllowedRoles(value):: self {
      resource+: {
        vault_database_secret_backend_connection+: { [terraformName]+: { allowed_roles: value } },
      },
    },
    withRotationWindow(value):: self {
      resource+: {
        vault_database_secret_backend_connection+: { [terraformName]+: { rotation_window: value } },
      },
    },
    withPluginName(value):: self {
      resource+: {
        vault_database_secret_backend_connection+: { [terraformName]+: { plugin_name: value } },
      },
    },
    withRotationPeriod(value):: self {
      resource+: {
        vault_database_secret_backend_connection+: { [terraformName]+: { rotation_period: value } },
      },
    },
    withId(value):: self {
      resource+: {
        vault_database_secret_backend_connection+: { [terraformName]+: { id: value } },
      },
    },
    withData(value):: self {
      resource+: {
        vault_database_secret_backend_connection+: { [terraformName]+: { data: value } },
      },
    },
    withPasswordPolicy(value):: self {
      resource+: {
        vault_database_secret_backend_connection+: { [terraformName]+: { password_policy: value } },
      },
    },
    withPluginVersion(value):: self {
      resource+: {
        vault_database_secret_backend_connection+: { [terraformName]+: { plugin_version: value } },
      },
    },
    withRootRotationStatements(value):: self {
      resource+: {
        vault_database_secret_backend_connection+: { [terraformName]+: { root_rotation_statements: value } },
      },
    },
    withRotationSchedule(value):: self {
      resource+: {
        vault_database_secret_backend_connection+: { [terraformName]+: { rotation_schedule: value } },
      },
    },
    withNamespace(value):: self {
      resource+: {
        vault_database_secret_backend_connection+: { [terraformName]+: { namespace: value } },
      },
    },
    withVerifyConnection(value):: self {
      resource+: {
        vault_database_secret_backend_connection+: { [terraformName]+: { verify_connection: value } },
      },
    },
    withSkipStaticRoleImportRotation(value):: self {
      resource+: {
        vault_database_secret_backend_connection+: { [terraformName]+: { skip_static_role_import_rotation: value } },
      },
    },
    withName(value):: self {
      resource+: {
        vault_database_secret_backend_connection+: { [terraformName]+: { name: value } },
      },
    },
  },
}
