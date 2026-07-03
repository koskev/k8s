{
  new(terraformName, username, mount, name, host, password_wo):: {
    _type:: 'tf',
    resource+: {
      vault_os_secret_backend_account+: { [terraformName]+: {
        username: username,
        mount: mount,
        name: name,
        host: host,
        password_wo: password_wo,
      } },
    },
    withDisableAutomatedRotation(value):: self {
      resource+: {
        vault_os_secret_backend_account+: { [terraformName]+: { disable_automated_rotation: value } },
      },
    },
    withParentAccountRef(value):: self {
      resource+: {
        vault_os_secret_backend_account+: { [terraformName]+: { parent_account_ref: value } },
      },
    },
    withRotationPeriod(value):: self {
      resource+: {
        vault_os_secret_backend_account+: { [terraformName]+: { rotation_period: value } },
      },
    },
    withUsername(value):: self {
      resource+: {
        vault_os_secret_backend_account+: { [terraformName]+: { username: value } },
      },
    },
    withLastVaultRotation(value):: self {
      resource+: {
        vault_os_secret_backend_account+: { [terraformName]+: { last_vault_rotation: value } },
      },
    },
    withMount(value):: self {
      resource+: {
        vault_os_secret_backend_account+: { [terraformName]+: { mount: value } },
      },
    },
    withRotationSchedule(value):: self {
      resource+: {
        vault_os_secret_backend_account+: { [terraformName]+: { rotation_schedule: value } },
      },
    },
    withCustomMetadata(value):: self {
      resource+: {
        vault_os_secret_backend_account+: { [terraformName]+: { custom_metadata: value } },
      },
    },
    withVerifyConnection(value):: self {
      resource+: {
        vault_os_secret_backend_account+: { [terraformName]+: { verify_connection: value } },
      },
    },
    withRotationWindow(value):: self {
      resource+: {
        vault_os_secret_backend_account+: { [terraformName]+: { rotation_window: value } },
      },
    },
    withNextVaultRotation(value):: self {
      resource+: {
        vault_os_secret_backend_account+: { [terraformName]+: { next_vault_rotation: value } },
      },
    },
    withPasswordPolicy(value):: self {
      resource+: {
        vault_os_secret_backend_account+: { [terraformName]+: { password_policy: value } },
      },
    },
    withName(value):: self {
      resource+: {
        vault_os_secret_backend_account+: { [terraformName]+: { name: value } },
      },
    },
    withHost(value):: self {
      resource+: {
        vault_os_secret_backend_account+: { [terraformName]+: { host: value } },
      },
    },
    withPasswordWo(value):: self {
      resource+: {
        vault_os_secret_backend_account+: { [terraformName]+: { password_wo: value } },
      },
    },
    withNamespace(value):: self {
      resource+: {
        vault_os_secret_backend_account+: { [terraformName]+: { namespace: value } },
      },
    },
  },
}
