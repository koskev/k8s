{
  new(terraformName, address, mount, name):: {
    _type:: 'tf',
    resource+: {
      vault_os_secret_backend_host+: { [terraformName]+: {
        address: address,
        mount: mount,
        name: name,
      } },
    },
    '#withAddress': { 'function': { help: |||
      Address of the host (hostname or IP). 
    ||| } },
    withAddress(value):: self {
      resource+: {
        vault_os_secret_backend_host+: { [terraformName]+: { address: value } },
      },
    },
    '#withCustomMetadata': { 'function': { help: |||
      Custom metadata for the host. 
    ||| } },
    withCustomMetadata(value):: self {
      resource+: {
        vault_os_secret_backend_host+: { [terraformName]+: { custom_metadata: value } },
      },
    },
    '#withDisableAutomatedRotation': { 'function': { help: |||
      Disable automated password rotation. 
    ||| } },
    withDisableAutomatedRotation(value):: self {
      resource+: {
        vault_os_secret_backend_host+: { [terraformName]+: { disable_automated_rotation: value } },
      },
    },
    '#withMount': { 'function': { help: |||
      Path where the OS secrets backend is mounted. 
    ||| } },
    withMount(value):: self {
      resource+: {
        vault_os_secret_backend_host+: { [terraformName]+: { mount: value } },
      },
    },
    '#withName': { 'function': { help: |||
      Name of the host. 
    ||| } },
    withName(value):: self {
      resource+: {
        vault_os_secret_backend_host+: { [terraformName]+: { name: value } },
      },
    },
    '#withNamespace': { 'function': { help: |||
      Target namespace. (requires Enterprise) 
    ||| } },
    withNamespace(value):: self {
      resource+: {
        vault_os_secret_backend_host+: { [terraformName]+: { namespace: value } },
      },
    },
    '#withPasswordPolicy': { 'function': { help: |||
      Name of the password policy to use for password generation. 
    ||| } },
    withPasswordPolicy(value):: self {
      resource+: {
        vault_os_secret_backend_host+: { [terraformName]+: { password_policy: value } },
      },
    },
    '#withPort': { 'function': { help: |||
      Port to connect to on the host. 
    ||| } },
    withPort(value):: self {
      resource+: {
        vault_os_secret_backend_host+: { [terraformName]+: { port: value } },
      },
    },
    '#withRotationPeriod': { 'function': { help: |||
      How often to rotate passwords, in seconds. Mutually exclusive with rotation_schedule. 
    ||| } },
    withRotationPeriod(value):: self {
      resource+: {
        vault_os_secret_backend_host+: { [terraformName]+: { rotation_period: value } },
      },
    },
    '#withRotationSchedule': { 'function': { help: |||
      Cron schedule for password rotation. Mutually exclusive with rotation_period. 
    ||| } },
    withRotationSchedule(value):: self {
      resource+: {
        vault_os_secret_backend_host+: { [terraformName]+: { rotation_schedule: value } },
      },
    },
    '#withRotationWindow': { 'function': { help: |||
      Window of time for password rotation, in seconds. 
    ||| } },
    withRotationWindow(value):: self {
      resource+: {
        vault_os_secret_backend_host+: { [terraformName]+: { rotation_window: value } },
      },
    },
    '#withSshHostKey': { 'function': { help: |||
      SSH host key for the host. 
    ||| } },
    withSshHostKey(value):: self {
      resource+: {
        vault_os_secret_backend_host+: { [terraformName]+: { ssh_host_key: value } },
      },
    },
  },
}
