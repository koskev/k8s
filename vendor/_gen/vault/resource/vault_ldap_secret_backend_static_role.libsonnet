{
  local outerSelf = self,
  new(terraformName, role_name, username):: self.functions(terraformName) + {
    _type:: 'tf',
    ref():: outerSelf.ref(terraformName),
    resource+: {
      vault_ldap_secret_backend_static_role+: { [terraformName]+: {
        role_name: role_name,
        username: username,
      } },
    },
  }
  ,
  functions(terraformName):: {
    withForEach(value):: self { resource+: {
      vault_ldap_secret_backend_static_role+: { [terraformName]+: { for_each: value } },
    } },
    withDependsOn(value):: self { resource+: {
      vault_ldap_secret_backend_static_role+: { [terraformName]+: { depends_on: value } },
    } },
    withCount(value):: self { resource+: {
      vault_ldap_secret_backend_static_role+: { [terraformName]+: { count: value } },
    } },
    withLifecycle(value):: self { resource+: {
      vault_ldap_secret_backend_static_role+: { [terraformName]+: { lifecycle: value } },
    } },
    withProvider(value):: self { resource+: {
      vault_ldap_secret_backend_static_role+: { [terraformName]+: { provider: value } },
    } },
    withProviders(value):: self { resource+: {
      vault_ldap_secret_backend_static_role+: { [terraformName]+: { providers: value } },
    } },
    addCustomData(name, value):: self { resource+: {
      vault_ldap_secret_backend_static_role+: { [terraformName]+: { [name]: value } },
    } },
    '#withDisableAutomatedRotation':: { 'function': {
      help:
        |||
          Stops rotation of the root credential until set to false.
        |||,
    } },
    withDisableAutomatedRotation(value):: self { resource+: {
      vault_ldap_secret_backend_static_role+: { [terraformName]+: { disable_automated_rotation: value } },
    } },
    '#withDn':: { 'function': {
      help:
        |||
          Distinguished name (DN) of the existing LDAP entry to manage password rotation for.
        |||,
    } },
    withDn(value):: self { resource+: {
      vault_ldap_secret_backend_static_role+: { [terraformName]+: { dn: value } },
    } },
    withId(value):: self { resource+: {
      vault_ldap_secret_backend_static_role+: { [terraformName]+: { id: value } },
    } },
    '#withMount':: { 'function': {
      help:
        |||
          The path where the LDAP secrets backend is mounted.
        |||,
    } },
    withMount(value):: self { resource+: {
      vault_ldap_secret_backend_static_role+: { [terraformName]+: { mount: value } },
    } },
    '#withNamespace':: { 'function': {
      help:
        |||
          Target namespace. (requires Enterprise)
        |||,
    } },
    withNamespace(value):: self { resource+: {
      vault_ldap_secret_backend_static_role+: { [terraformName]+: { namespace: value } },
    } },
    '#withPasswordWo':: { 'function': {
      help:
        |||
          Password for the static role. This is required for Vault to manage an existing account and enable rotation.
        |||,
    } },
    withPasswordWo(value):: self { resource+: {
      vault_ldap_secret_backend_static_role+: { [terraformName]+: { password_wo: value } },
    } },
    '#withPasswordWoVersion':: { 'function': {
      help:
        |||
          Version counter for write-only password.
        |||,
    } },
    withPasswordWoVersion(value):: self { resource+: {
      vault_ldap_secret_backend_static_role+: { [terraformName]+: { password_wo_version: value } },
    } },
    '#withRoleName':: { 'function': {
      help:
        |||
          Name of the role.
        |||,
    } },
    withRoleName(value):: self { resource+: {
      vault_ldap_secret_backend_static_role+: { [terraformName]+: { role_name: value } },
    } },
    '#withRotationPeriod':: { 'function': {
      help:
        |||
          The period of time in seconds between each rotation of the root credential. Cannot be used with rotation_schedule.
        |||,
    } },
    withRotationPeriod(value):: self { resource+: {
      vault_ldap_secret_backend_static_role+: { [terraformName]+: { rotation_period: value } },
    } },
    '#withRotationPolicy':: { 'function': {
      help:
        |||
          The rotation policy to use for this credential.
        |||,
    } },
    withRotationPolicy(value):: self { resource+: {
      vault_ldap_secret_backend_static_role+: { [terraformName]+: { rotation_policy: value } },
    } },
    '#withRotationSchedule':: { 'function': {
      help:
        |||
          The cron-style schedule for the root credential to be rotated on. Cannot be used with rotation_period.
        |||,
    } },
    withRotationSchedule(value):: self { resource+: {
      vault_ldap_secret_backend_static_role+: { [terraformName]+: { rotation_schedule: value } },
    } },
    '#withRotationWindow':: { 'function': {
      help:
        |||
          The maximum amount of time in seconds Vault is allowed to complete a rotation once a scheduled rotation is triggered. Can only be used with rotation_schedule.
        |||,
    } },
    withRotationWindow(value):: self { resource+: {
      vault_ldap_secret_backend_static_role+: { [terraformName]+: { rotation_window: value } },
    } },
    '#withSkipImportRotation':: { 'function': {
      help:
        |||
          Skip rotation of the password on import.
        |||,
    } },
    withSkipImportRotation(value):: self { resource+: {
      vault_ldap_secret_backend_static_role+: { [terraformName]+: { skip_import_rotation: value } },
    } },
    '#withUsername':: { 'function': {
      help:
        |||
          The username of the existing LDAP entry to manage password rotation for.
        |||,
    } },
    withUsername(value):: self { resource+: {
      vault_ldap_secret_backend_static_role+: { [terraformName]+: { username: value } },
    } },

  }
  ,
  ref(terraformName):: {
    local refSelf = self,
    plain(suffix=''):: '${ vault_ldap_secret_backend_static_role.%s%s }' % [terraformName, suffix],
    fields:: {
      '#disable_automated_rotation':: { 'function': {
        help:
          |||
            Stops rotation of the root credential until set to false.
          |||,
      } },
      disable_automated_rotation(suffix=''):: refSelf.plain('.disable_automated_rotation%s' % suffix),
      '#dn':: { 'function': {
        help:
          |||
            Distinguished name (DN) of the existing LDAP entry to manage password rotation for.
          |||,
      } },
      dn(suffix=''):: refSelf.plain('.dn%s' % suffix),
      id(suffix=''):: refSelf.plain('.id%s' % suffix),
      '#mount':: { 'function': {
        help:
          |||
            The path where the LDAP secrets backend is mounted.
          |||,
      } },
      mount(suffix=''):: refSelf.plain('.mount%s' % suffix),
      '#namespace':: { 'function': {
        help:
          |||
            Target namespace. (requires Enterprise)
          |||,
      } },
      namespace(suffix=''):: refSelf.plain('.namespace%s' % suffix),
      '#password_wo':: { 'function': {
        help:
          |||
            Password for the static role. This is required for Vault to manage an existing account and enable rotation.
          |||,
      } },
      password_wo(suffix=''):: refSelf.plain('.password_wo%s' % suffix),
      '#password_wo_version':: { 'function': {
        help:
          |||
            Version counter for write-only password.
          |||,
      } },
      password_wo_version(suffix=''):: refSelf.plain('.password_wo_version%s' % suffix),
      '#role_name':: { 'function': {
        help:
          |||
            Name of the role.
          |||,
      } },
      role_name(suffix=''):: refSelf.plain('.role_name%s' % suffix),
      '#rotation_period':: { 'function': {
        help:
          |||
            The period of time in seconds between each rotation of the root credential. Cannot be used with rotation_schedule.
          |||,
      } },
      rotation_period(suffix=''):: refSelf.plain('.rotation_period%s' % suffix),
      '#rotation_policy':: { 'function': {
        help:
          |||
            The rotation policy to use for this credential.
          |||,
      } },
      rotation_policy(suffix=''):: refSelf.plain('.rotation_policy%s' % suffix),
      '#rotation_schedule':: { 'function': {
        help:
          |||
            The cron-style schedule for the root credential to be rotated on. Cannot be used with rotation_period.
          |||,
      } },
      rotation_schedule(suffix=''):: refSelf.plain('.rotation_schedule%s' % suffix),
      '#rotation_window':: { 'function': {
        help:
          |||
            The maximum amount of time in seconds Vault is allowed to complete a rotation once a scheduled rotation is triggered. Can only be used with rotation_schedule.
          |||,
      } },
      rotation_window(suffix=''):: refSelf.plain('.rotation_window%s' % suffix),
      '#skip_import_rotation':: { 'function': {
        help:
          |||
            Skip rotation of the password on import.
          |||,
      } },
      skip_import_rotation(suffix=''):: refSelf.plain('.skip_import_rotation%s' % suffix),
      '#username':: { 'function': {
        help:
          |||
            The username of the existing LDAP entry to manage password rotation for.
          |||,
      } },
      username(suffix=''):: refSelf.plain('.username%s' % suffix),

    },

  },

}
