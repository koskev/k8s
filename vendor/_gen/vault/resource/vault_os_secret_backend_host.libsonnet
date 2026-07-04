{
  '#new':: { 'function': { help: |||
    Manages a host in an OS Secrets Engine mount in Vault.
  ||| } },
  local outerSelf = self,
  new(terraformName, address, mount, name):: self.functions(terraformName) {
    ref():: outerSelf.ref(terraformName),
    _type:: 'tf',
    resource+: {
      vault_os_secret_backend_host+: {
        [terraformName]+: {
          address: address,
          mount: mount,
          name: name,
        },
      },
    },
  },
  functions(terraformName):: {
    '#withAddress':: { 'function': { help: |||
      Address of the host (hostname or IP).
    ||| } },
    withAddress(value):: self {
      resource+: {
        vault_os_secret_backend_host+: { [terraformName]+: { address: value } },
      },
    },
    '#withCustomMetadata':: { 'function': { help: |||
      Custom metadata for the host.
    ||| } },
    withCustomMetadata(value):: self {
      resource+: {
        vault_os_secret_backend_host+: { [terraformName]+: { custom_metadata: value } },
      },
    },
    '#withDisableAutomatedRotation':: { 'function': { help: |||
      Disable automated password rotation.
    ||| } },
    withDisableAutomatedRotation(value):: self {
      resource+: {
        vault_os_secret_backend_host+: { [terraformName]+: { disable_automated_rotation: value } },
      },
    },
    '#withMount':: { 'function': { help: |||
      Path where the OS secrets backend is mounted.
    ||| } },
    withMount(value):: self {
      resource+: {
        vault_os_secret_backend_host+: { [terraformName]+: { mount: value } },
      },
    },
    '#withName':: { 'function': { help: |||
      Name of the host.
    ||| } },
    withName(value):: self {
      resource+: {
        vault_os_secret_backend_host+: { [terraformName]+: { name: value } },
      },
    },
    '#withNamespace':: { 'function': { help: |||
      Target namespace. (requires Enterprise)
    ||| } },
    withNamespace(value):: self {
      resource+: {
        vault_os_secret_backend_host+: { [terraformName]+: { namespace: value } },
      },
    },
    '#withPasswordPolicy':: { 'function': { help: |||
      Name of the password policy to use for password generation.
    ||| } },
    withPasswordPolicy(value):: self {
      resource+: {
        vault_os_secret_backend_host+: { [terraformName]+: { password_policy: value } },
      },
    },
    '#withPort':: { 'function': { help: |||
      Port to connect to on the host.
    ||| } },
    withPort(value):: self {
      resource+: {
        vault_os_secret_backend_host+: { [terraformName]+: { port: value } },
      },
    },
    '#withRotationPeriod':: { 'function': { help: |||
      How often to rotate passwords, in seconds. Mutually exclusive with rotation_schedule.
    ||| } },
    withRotationPeriod(value):: self {
      resource+: {
        vault_os_secret_backend_host+: { [terraformName]+: { rotation_period: value } },
      },
    },
    '#withRotationSchedule':: { 'function': { help: |||
      Cron schedule for password rotation. Mutually exclusive with rotation_period.
    ||| } },
    withRotationSchedule(value):: self {
      resource+: {
        vault_os_secret_backend_host+: { [terraformName]+: { rotation_schedule: value } },
      },
    },
    '#withRotationWindow':: { 'function': { help: |||
      Window of time for password rotation, in seconds.
    ||| } },
    withRotationWindow(value):: self {
      resource+: {
        vault_os_secret_backend_host+: { [terraformName]+: { rotation_window: value } },
      },
    },
    '#withSshHostKey':: { 'function': { help: |||
      SSH host key for the host.
    ||| } },
    withSshHostKey(value):: self {
      resource+: {
        vault_os_secret_backend_host+: { [terraformName]+: { ssh_host_key: value } },
      },
    },
  },
  ref(terraformName):: {
    local refSelf = self,
    plain(suffix=''):: '${ vault_os_secret_backend_host.%s%s }' % [terraformName, suffix],
    fields:: {
      '#address':: { 'function': { help: |||
        Address of the host (hostname or IP).
      ||| } },
      address(suffix=''):: refSelf.plain('.address%s' % suffix),
      '#custom_metadata':: { 'function': { help: |||
        Custom metadata for the host.
      ||| } },
      custom_metadata(suffix=''):: refSelf.plain('.custom_metadata%s' % suffix),
      '#disable_automated_rotation':: { 'function': { help: |||
        Disable automated password rotation.
      ||| } },
      disable_automated_rotation(suffix=''):: refSelf.plain('.disable_automated_rotation%s' % suffix),
      '#mount':: { 'function': { help: |||
        Path where the OS secrets backend is mounted.
      ||| } },
      mount(suffix=''):: refSelf.plain('.mount%s' % suffix),
      '#name':: { 'function': { help: |||
        Name of the host.
      ||| } },
      name(suffix=''):: refSelf.plain('.name%s' % suffix),
      '#namespace':: { 'function': { help: |||
        Target namespace. (requires Enterprise)
      ||| } },
      namespace(suffix=''):: refSelf.plain('.namespace%s' % suffix),
      '#password_policy':: { 'function': { help: |||
        Name of the password policy to use for password generation.
      ||| } },
      password_policy(suffix=''):: refSelf.plain('.password_policy%s' % suffix),
      '#port':: { 'function': { help: |||
        Port to connect to on the host.
      ||| } },
      port(suffix=''):: refSelf.plain('.port%s' % suffix),
      '#rotation_period':: { 'function': { help: |||
        How often to rotate passwords, in seconds. Mutually exclusive with rotation_schedule.
      ||| } },
      rotation_period(suffix=''):: refSelf.plain('.rotation_period%s' % suffix),
      '#rotation_schedule':: { 'function': { help: |||
        Cron schedule for password rotation. Mutually exclusive with rotation_period.
      ||| } },
      rotation_schedule(suffix=''):: refSelf.plain('.rotation_schedule%s' % suffix),
      '#rotation_window':: { 'function': { help: |||
        Window of time for password rotation, in seconds.
      ||| } },
      rotation_window(suffix=''):: refSelf.plain('.rotation_window%s' % suffix),
      '#ssh_host_key':: { 'function': { help: |||
        SSH host key for the host.
      ||| } },
      ssh_host_key(suffix=''):: refSelf.plain('.ssh_host_key%s' % suffix),
    },
  },
}
