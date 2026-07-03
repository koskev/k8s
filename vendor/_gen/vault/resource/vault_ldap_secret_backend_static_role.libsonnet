{
  new(terraformName, role_name, username):: {
    _type:: 'tf',
    resource+: {
      vault_ldap_secret_backend_static_role+: { [terraformName]+: {
        role_name: role_name,
        username: username,
      } },
    },
    '#withDisableAutomatedRotation': { 'function': { help: |||
      Stops rotation of the root credential until set to false. 
    ||| } },
    withDisableAutomatedRotation(value):: self {
      resource+: {
        vault_ldap_secret_backend_static_role+: { [terraformName]+: { disable_automated_rotation: value } },
      },
    },
    '#withDn': { 'function': { help: |||
      Distinguished name (DN) of the existing LDAP entry to manage password rotation for. 
    ||| } },
    withDn(value):: self {
      resource+: {
        vault_ldap_secret_backend_static_role+: { [terraformName]+: { dn: value } },
      },
    },
    withId(value):: self {
      resource+: {
        vault_ldap_secret_backend_static_role+: { [terraformName]+: { id: value } },
      },
    },
    '#withMount': { 'function': { help: |||
      The path where the LDAP secrets backend is mounted. 
    ||| } },
    withMount(value):: self {
      resource+: {
        vault_ldap_secret_backend_static_role+: { [terraformName]+: { mount: value } },
      },
    },
    '#withNamespace': { 'function': { help: |||
      Target namespace. (requires Enterprise) 
    ||| } },
    withNamespace(value):: self {
      resource+: {
        vault_ldap_secret_backend_static_role+: { [terraformName]+: { namespace: value } },
      },
    },
    '#withPasswordWo': { 'function': { help: |||
      Password for the static role. This is required for Vault to manage an existing account and enable rotation. 
    ||| } },
    withPasswordWo(value):: self {
      resource+: {
        vault_ldap_secret_backend_static_role+: { [terraformName]+: { password_wo: value } },
      },
    },
    '#withPasswordWoVersion': { 'function': { help: |||
      Version counter for write-only password. 
    ||| } },
    withPasswordWoVersion(value):: self {
      resource+: {
        vault_ldap_secret_backend_static_role+: { [terraformName]+: { password_wo_version: value } },
      },
    },
    '#withRoleName': { 'function': { help: |||
      Name of the role. 
    ||| } },
    withRoleName(value):: self {
      resource+: {
        vault_ldap_secret_backend_static_role+: { [terraformName]+: { role_name: value } },
      },
    },
    '#withRotationPeriod': { 'function': { help: |||
      The period of time in seconds between each rotation of the root credential. Cannot be used with rotation_schedule. 
    ||| } },
    withRotationPeriod(value):: self {
      resource+: {
        vault_ldap_secret_backend_static_role+: { [terraformName]+: { rotation_period: value } },
      },
    },
    '#withRotationPolicy': { 'function': { help: |||
      The rotation policy to use for this credential. 
    ||| } },
    withRotationPolicy(value):: self {
      resource+: {
        vault_ldap_secret_backend_static_role+: { [terraformName]+: { rotation_policy: value } },
      },
    },
    '#withRotationSchedule': { 'function': { help: |||
      The cron-style schedule for the root credential to be rotated on. Cannot be used with rotation_period. 
    ||| } },
    withRotationSchedule(value):: self {
      resource+: {
        vault_ldap_secret_backend_static_role+: { [terraformName]+: { rotation_schedule: value } },
      },
    },
    '#withRotationWindow': { 'function': { help: |||
      The maximum amount of time in seconds Vault is allowed to complete a rotation once a scheduled rotation is triggered. Can only be used with rotation_schedule. 
    ||| } },
    withRotationWindow(value):: self {
      resource+: {
        vault_ldap_secret_backend_static_role+: { [terraformName]+: { rotation_window: value } },
      },
    },
    '#withSkipImportRotation': { 'function': { help: |||
      Skip rotation of the password on import. 
    ||| } },
    withSkipImportRotation(value):: self {
      resource+: {
        vault_ldap_secret_backend_static_role+: { [terraformName]+: { skip_import_rotation: value } },
      },
    },
    '#withUsername': { 'function': { help: |||
      The username of the existing LDAP entry to manage password rotation for. 
    ||| } },
    withUsername(value):: self {
      resource+: {
        vault_ldap_secret_backend_static_role+: { [terraformName]+: { username: value } },
      },
    },
  },
}
