{
  new(terraformName, name, mount, address):: {
    _type:: 'tf',
    resource+: {
      vault_os_secret_backend_host+: { [terraformName]+: {
        name: name,
        mount: mount,
        address: address,
      } },
    },
    withRotationSchedule(value):: self {
      resource+: {
        vault_os_secret_backend_host+: { [terraformName]+: { rotation_schedule: value } },
      },
    },
    withName(value):: self {
      resource+: {
        vault_os_secret_backend_host+: { [terraformName]+: { name: value } },
      },
    },
    withCustomMetadata(value):: self {
      resource+: {
        vault_os_secret_backend_host+: { [terraformName]+: { custom_metadata: value } },
      },
    },
    withMount(value):: self {
      resource+: {
        vault_os_secret_backend_host+: { [terraformName]+: { mount: value } },
      },
    },
    withAddress(value):: self {
      resource+: {
        vault_os_secret_backend_host+: { [terraformName]+: { address: value } },
      },
    },
    withPasswordPolicy(value):: self {
      resource+: {
        vault_os_secret_backend_host+: { [terraformName]+: { password_policy: value } },
      },
    },
    withRotationPeriod(value):: self {
      resource+: {
        vault_os_secret_backend_host+: { [terraformName]+: { rotation_period: value } },
      },
    },
    withRotationWindow(value):: self {
      resource+: {
        vault_os_secret_backend_host+: { [terraformName]+: { rotation_window: value } },
      },
    },
    withDisableAutomatedRotation(value):: self {
      resource+: {
        vault_os_secret_backend_host+: { [terraformName]+: { disable_automated_rotation: value } },
      },
    },
    withNamespace(value):: self {
      resource+: {
        vault_os_secret_backend_host+: { [terraformName]+: { namespace: value } },
      },
    },
    withPort(value):: self {
      resource+: {
        vault_os_secret_backend_host+: { [terraformName]+: { port: value } },
      },
    },
    withSshHostKey(value):: self {
      resource+: {
        vault_os_secret_backend_host+: { [terraformName]+: { ssh_host_key: value } },
      },
    },
  },
}
