{
  local outerSelf = self,
  new(terraformName, backend, role, service_account_name):: self.functions(terraformName) {
    ref():: outerSelf.ref(terraformName),
    _type:: 'tf',
    resource+: {
      vault_ad_secret_role+: {
        [terraformName]+: {
          backend: backend,
          role: role,
          service_account_name: service_account_name,
        },
      },
    },
  },
  functions(terraformName):: {
    withForEach(value):: self {
      resource+: {
        vault_ad_secret_role+: { [terraformName]+: { for_each: value } },
      },
    },
    withDependsOn(value):: self {
      resource+: {
        vault_ad_secret_role+: { [terraformName]+: { depends_on: value } },
      },
    },
    withCount(value):: self {
      resource+: {
        vault_ad_secret_role+: { [terraformName]+: { count: value } },
      },
    },
    withLifecycle(value):: self {
      resource+: {
        vault_ad_secret_role+: { [terraformName]+: { lifecycle: value } },
      },
    },
    withProvider(value):: self {
      resource+: {
        vault_ad_secret_role+: { [terraformName]+: { provider: value } },
      },
    },
    withProviders(value):: self {
      resource+: {
        vault_ad_secret_role+: { [terraformName]+: { providers: value } },
      },
    },
    '#backend':: { 'function': { help: |||
      The mount path for the AD backend.
    ||| } },
    withBackend(value):: self {
      resource+: {
        vault_ad_secret_role+: { [terraformName]+: { backend: value } },
      },
    },
    withId(value):: self {
      resource+: {
        vault_ad_secret_role+: { [terraformName]+: { id: value } },
      },
    },
    '#namespace':: { 'function': { help: |||
      Target namespace. (requires Enterprise)
    ||| } },
    withNamespace(value):: self {
      resource+: {
        vault_ad_secret_role+: { [terraformName]+: { namespace: value } },
      },
    },
    '#role':: { 'function': { help: |||
      Name of the role.
    ||| } },
    withRole(value):: self {
      resource+: {
        vault_ad_secret_role+: { [terraformName]+: { role: value } },
      },
    },
    '#service_account_name':: { 'function': { help: |||
      The username/logon name for the service account with which this role will be associated.
    ||| } },
    withServiceAccountName(value):: self {
      resource+: {
        vault_ad_secret_role+: { [terraformName]+: { service_account_name: value } },
      },
    },
    '#ttl':: { 'function': { help: |||
      In seconds, the default password time-to-live.
    ||| } },
    withTtl(value):: self {
      resource+: {
        vault_ad_secret_role+: { [terraformName]+: { ttl: value } },
      },
    },
  },
  ref(terraformName):: {
    local refSelf = self,
    plain(suffix=''):: '${ vault_ad_secret_role.%s%s }' % [terraformName, suffix],
    fields:: {
      '#backend':: { 'function': { help: |||
        The mount path for the AD backend.
      ||| } },
      backend(suffix=''):: refSelf.plain('.backend%s' % suffix),
      id(suffix=''):: refSelf.plain('.id%s' % suffix),
      '#last_vault_rotation':: { 'function': { help: |||
        Last time Vault rotated this service account's password.
      ||| } },
      last_vault_rotation(suffix=''):: refSelf.plain('.last_vault_rotation%s' % suffix),
      '#namespace':: { 'function': { help: |||
        Target namespace. (requires Enterprise)
      ||| } },
      namespace(suffix=''):: refSelf.plain('.namespace%s' % suffix),
      '#password_last_set':: { 'function': { help: |||
        Last time Vault set this service account's password.
      ||| } },
      password_last_set(suffix=''):: refSelf.plain('.password_last_set%s' % suffix),
      '#role':: { 'function': { help: |||
        Name of the role.
      ||| } },
      role(suffix=''):: refSelf.plain('.role%s' % suffix),
      '#service_account_name':: { 'function': { help: |||
        The username/logon name for the service account with which this role will be associated.
      ||| } },
      service_account_name(suffix=''):: refSelf.plain('.service_account_name%s' % suffix),
      '#ttl':: { 'function': { help: |||
        In seconds, the default password time-to-live.
      ||| } },
      ttl(suffix=''):: refSelf.plain('.ttl%s' % suffix),
    },
  },
}
