{
  new(terraformName, username, role_name):: {
    _type:: 'tf',
    resource+: {
      vault_ldap_secret_backend_static_role+: { [terraformName]+: {
        username: username,
        role_name: role_name,
      } },
    },
    withDisableAutomatedRotation(value):: self {
      resource+: {
        vault_ldap_secret_backend_static_role+: { [terraformName]+: { disable_automated_rotation: value } },
      },
    },
    withUsername(value):: self {
      resource+: {
        vault_ldap_secret_backend_static_role+: { [terraformName]+: { username: value } },
      },
    },
    withRotationPolicy(value):: self {
      resource+: {
        vault_ldap_secret_backend_static_role+: { [terraformName]+: { rotation_policy: value } },
      },
    },
    withPasswordWo(value):: self {
      resource+: {
        vault_ldap_secret_backend_static_role+: { [terraformName]+: { password_wo: value } },
      },
    },
    withSkipImportRotation(value):: self {
      resource+: {
        vault_ldap_secret_backend_static_role+: { [terraformName]+: { skip_import_rotation: value } },
      },
    },
    withMount(value):: self {
      resource+: {
        vault_ldap_secret_backend_static_role+: { [terraformName]+: { mount: value } },
      },
    },
    withNamespace(value):: self {
      resource+: {
        vault_ldap_secret_backend_static_role+: { [terraformName]+: { namespace: value } },
      },
    },
    withRotationSchedule(value):: self {
      resource+: {
        vault_ldap_secret_backend_static_role+: { [terraformName]+: { rotation_schedule: value } },
      },
    },
    withId(value):: self {
      resource+: {
        vault_ldap_secret_backend_static_role+: { [terraformName]+: { id: value } },
      },
    },
    withDn(value):: self {
      resource+: {
        vault_ldap_secret_backend_static_role+: { [terraformName]+: { dn: value } },
      },
    },
    withPasswordWoVersion(value):: self {
      resource+: {
        vault_ldap_secret_backend_static_role+: { [terraformName]+: { password_wo_version: value } },
      },
    },
    withRoleName(value):: self {
      resource+: {
        vault_ldap_secret_backend_static_role+: { [terraformName]+: { role_name: value } },
      },
    },
    withRotationPeriod(value):: self {
      resource+: {
        vault_ldap_secret_backend_static_role+: { [terraformName]+: { rotation_period: value } },
      },
    },
    withRotationWindow(value):: self {
      resource+: {
        vault_ldap_secret_backend_static_role+: { [terraformName]+: { rotation_window: value } },
      },
    },
  },
}
