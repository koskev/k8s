{
  local outerSelf = self,
  '#new':: { 'function': {
    help:
      |||
        Manages an account on a host in an OS Secrets Engine mount in Vault.
      |||,
  } },
  new(terraformName, host, mount, name, password_wo, username):: self.functions(terraformName) + {
    _type:: 'tf',
    ref():: outerSelf.ref(terraformName),
    resource+: {
      vault_os_secret_backend_account+: { [terraformName]+: {
        host: host,
        mount: mount,
        name: name,
        password_wo: password_wo,
        username: username,
      } },
    },
  }
  ,
  functions(terraformName):: {
    withForEach(value):: self { resource+: {
      vault_os_secret_backend_account+: { [terraformName]+: { for_each: value } },
    } },
    withDependsOn(value):: self { resource+: {
      vault_os_secret_backend_account+: { [terraformName]+: { depends_on: value } },
    } },
    withCount(value):: self { resource+: {
      vault_os_secret_backend_account+: { [terraformName]+: { count: value } },
    } },
    withLifecycle(value):: self { resource+: {
      vault_os_secret_backend_account+: { [terraformName]+: { lifecycle: value } },
    } },
    withProvider(value):: self { resource+: {
      vault_os_secret_backend_account+: { [terraformName]+: { provider: value } },
    } },
    withProviders(value):: self { resource+: {
      vault_os_secret_backend_account+: { [terraformName]+: { providers: value } },
    } },
    addCustomData(name, value):: self { resource+: {
      vault_os_secret_backend_account+: { [terraformName]+: { [name]: value } },
    } },
    '#withCustomMetadata':: { 'function': {
      help:
        |||
          Custom metadata for the account.
        |||,
    } },
    withCustomMetadata(value):: self { resource+: {
      vault_os_secret_backend_account+: { [terraformName]+: { custom_metadata: value } },
    } },
    '#withDisableAutomatedRotation':: { 'function': {
      help:
        |||
          Disable automated password rotation.
        |||,
    } },
    withDisableAutomatedRotation(value):: self { resource+: {
      vault_os_secret_backend_account+: { [terraformName]+: { disable_automated_rotation: value } },
    } },
    '#withHost':: { 'function': {
      help:
        |||
          Name of the host this account belongs to.
        |||,
    } },
    withHost(value):: self { resource+: {
      vault_os_secret_backend_account+: { [terraformName]+: { host: value } },
    } },
    '#withMount':: { 'function': {
      help:
        |||
          Path where the OS secrets backend is mounted.
        |||,
    } },
    withMount(value):: self { resource+: {
      vault_os_secret_backend_account+: { [terraformName]+: { mount: value } },
    } },
    '#withName':: { 'function': {
      help:
        |||
          Name of the account.
        |||,
    } },
    withName(value):: self { resource+: {
      vault_os_secret_backend_account+: { [terraformName]+: { name: value } },
    } },
    '#withNamespace':: { 'function': {
      help:
        |||
          Target namespace. (requires Enterprise)
        |||,
    } },
    withNamespace(value):: self { resource+: {
      vault_os_secret_backend_account+: { [terraformName]+: { namespace: value } },
    } },
    '#withParentAccountRef':: { 'function': {
      help:
        |||
          Reference to a parent account for rotation management.
        |||,
    } },
    withParentAccountRef(value):: self { resource+: {
      vault_os_secret_backend_account+: { [terraformName]+: { parent_account_ref: value } },
    } },
    '#withPasswordPolicy':: { 'function': {
      help:
        |||
          Name of the password policy to use for password generation.
        |||,
    } },
    withPasswordPolicy(value):: self { resource+: {
      vault_os_secret_backend_account+: { [terraformName]+: { password_policy: value } },
    } },
    '#withPasswordWo':: { 'function': {
      help:
        |||
          Password for the account. This is write-only, will not be read back from Vault,
          	and can only be set during resource creation. To update the password after creation, use the Vault CLI
          	or API to call the reset endpoint directly.
        |||,
    } },
    withPasswordWo(value):: self { resource+: {
      vault_os_secret_backend_account+: { [terraformName]+: { password_wo: value } },
    } },
    '#withRotationPeriod':: { 'function': {
      help:
        |||
          How often to rotate passwords, in seconds. Mutually exclusive with rotation_schedule.
        |||,
    } },
    withRotationPeriod(value):: self { resource+: {
      vault_os_secret_backend_account+: { [terraformName]+: { rotation_period: value } },
    } },
    '#withRotationSchedule':: { 'function': {
      help:
        |||
          Cron schedule for password rotation. Mutually exclusive with rotation_period.
        |||,
    } },
    withRotationSchedule(value):: self { resource+: {
      vault_os_secret_backend_account+: { [terraformName]+: { rotation_schedule: value } },
    } },
    '#withRotationWindow':: { 'function': {
      help:
        |||
          Window of time for password rotation, in seconds.
        |||,
    } },
    withRotationWindow(value):: self { resource+: {
      vault_os_secret_backend_account+: { [terraformName]+: { rotation_window: value } },
    } },
    '#withUsername':: { 'function': {
      help:
        |||
          Username for the account.
        |||,
    } },
    withUsername(value):: self { resource+: {
      vault_os_secret_backend_account+: { [terraformName]+: { username: value } },
    } },
    '#withVerifyConnection':: { 'function': {
      help:
        |||
          Verify the connection to the host with the provided credentials.
        |||,
    } },
    withVerifyConnection(value):: self { resource+: {
      vault_os_secret_backend_account+: { [terraformName]+: { verify_connection: value } },
    } },

  }
  ,
  ref(terraformName):: {
    local refSelf = self,
    plain(suffix=''):: '${ vault_os_secret_backend_account.%s%s }' % [terraformName, suffix],
    fields:: {
      '#custom_metadata':: { 'function': {
        help:
          |||
            Custom metadata for the account.
          |||,
      } },
      custom_metadata(suffix=''):: refSelf.plain('.custom_metadata%s' % suffix),
      '#disable_automated_rotation':: { 'function': {
        help:
          |||
            Disable automated password rotation.
          |||,
      } },
      disable_automated_rotation(suffix=''):: refSelf.plain('.disable_automated_rotation%s' % suffix),
      '#host':: { 'function': {
        help:
          |||
            Name of the host this account belongs to.
          |||,
      } },
      host(suffix=''):: refSelf.plain('.host%s' % suffix),
      '#last_vault_rotation':: { 'function': {
        help:
          |||
            Timestamp of the last password rotation by Vault.
          |||,
      } },
      last_vault_rotation(suffix=''):: refSelf.plain('.last_vault_rotation%s' % suffix),
      '#mount':: { 'function': {
        help:
          |||
            Path where the OS secrets backend is mounted.
          |||,
      } },
      mount(suffix=''):: refSelf.plain('.mount%s' % suffix),
      '#name':: { 'function': {
        help:
          |||
            Name of the account.
          |||,
      } },
      name(suffix=''):: refSelf.plain('.name%s' % suffix),
      '#namespace':: { 'function': {
        help:
          |||
            Target namespace. (requires Enterprise)
          |||,
      } },
      namespace(suffix=''):: refSelf.plain('.namespace%s' % suffix),
      '#next_vault_rotation':: { 'function': {
        help:
          |||
            Timestamp of the next scheduled password rotation by Vault. This value may change when rotation configuration is updated.
          |||,
      } },
      next_vault_rotation(suffix=''):: refSelf.plain('.next_vault_rotation%s' % suffix),
      '#parent_account_ref':: { 'function': {
        help:
          |||
            Reference to a parent account for rotation management.
          |||,
      } },
      parent_account_ref(suffix=''):: refSelf.plain('.parent_account_ref%s' % suffix),
      '#password_policy':: { 'function': {
        help:
          |||
            Name of the password policy to use for password generation.
          |||,
      } },
      password_policy(suffix=''):: refSelf.plain('.password_policy%s' % suffix),
      '#password_wo':: { 'function': {
        help:
          |||
            Password for the account. This is write-only, will not be read back from Vault,
            	and can only be set during resource creation. To update the password after creation, use the Vault CLI
            	or API to call the reset endpoint directly.
          |||,
      } },
      password_wo(suffix=''):: refSelf.plain('.password_wo%s' % suffix),
      '#rotation_period':: { 'function': {
        help:
          |||
            How often to rotate passwords, in seconds. Mutually exclusive with rotation_schedule.
          |||,
      } },
      rotation_period(suffix=''):: refSelf.plain('.rotation_period%s' % suffix),
      '#rotation_schedule':: { 'function': {
        help:
          |||
            Cron schedule for password rotation. Mutually exclusive with rotation_period.
          |||,
      } },
      rotation_schedule(suffix=''):: refSelf.plain('.rotation_schedule%s' % suffix),
      '#rotation_window':: { 'function': {
        help:
          |||
            Window of time for password rotation, in seconds.
          |||,
      } },
      rotation_window(suffix=''):: refSelf.plain('.rotation_window%s' % suffix),
      '#username':: { 'function': {
        help:
          |||
            Username for the account.
          |||,
      } },
      username(suffix=''):: refSelf.plain('.username%s' % suffix),
      '#verify_connection':: { 'function': {
        help:
          |||
            Verify the connection to the host with the provided credentials.
          |||,
      } },
      verify_connection(suffix=''):: refSelf.plain('.verify_connection%s' % suffix),

    },

  },

}
