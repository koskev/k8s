{
  local outerSelf = self,
  new(terraformName, home_tenancy_id):: self.functions(terraformName) {
    ref():: outerSelf.ref(terraformName),
    _type:: 'tf',
    resource+: {
      vault_oci_auth_backend+: {
        [terraformName]+: {
          home_tenancy_id: home_tenancy_id,
        },
      },
    },
  },
  functions(terraformName):: {
    withForEach(value):: self {
      resource+: {
        vault_oci_auth_backend+: { [terraformName]+: { for_each: value } },
      },
    },
    withDependsOn(value):: self {
      resource+: {
        vault_oci_auth_backend+: { [terraformName]+: { depends_on: value } },
      },
    },
    withCount(value):: self {
      resource+: {
        vault_oci_auth_backend+: { [terraformName]+: { count: value } },
      },
    },
    withLifecycle(value):: self {
      resource+: {
        vault_oci_auth_backend+: { [terraformName]+: { lifecycle: value } },
      },
    },
    withProvider(value):: self {
      resource+: {
        vault_oci_auth_backend+: { [terraformName]+: { provider: value } },
      },
    },
    withProviders(value):: self {
      resource+: {
        vault_oci_auth_backend+: { [terraformName]+: { providers: value } },
      },
    },
    withDescription(value):: self {
      resource+: {
        vault_oci_auth_backend+: { [terraformName]+: { description: value } },
      },
    },
    '#disable_automated_rotation':: { 'function': { help: |||
      Stops rotation of the root credential until set to false.
    ||| } },
    withDisableAutomatedRotation(value):: self {
      resource+: {
        vault_oci_auth_backend+: { [terraformName]+: { disable_automated_rotation: value } },
      },
    },
    '#disable_remount':: { 'function': { help: |||
      If set, opts out of mount migration on path updates.
    ||| } },
    withDisableRemount(value):: self {
      resource+: {
        vault_oci_auth_backend+: { [terraformName]+: { disable_remount: value } },
      },
    },
    '#home_tenancy_id':: { 'function': { help: |||
      The Tenancy OCID of your OCI account.
    ||| } },
    withHomeTenancyId(value):: self {
      resource+: {
        vault_oci_auth_backend+: { [terraformName]+: { home_tenancy_id: value } },
      },
    },
    withId(value):: self {
      resource+: {
        vault_oci_auth_backend+: { [terraformName]+: { id: value } },
      },
    },
    '#namespace':: { 'function': { help: |||
      Target namespace. (requires Enterprise)
    ||| } },
    withNamespace(value):: self {
      resource+: {
        vault_oci_auth_backend+: { [terraformName]+: { namespace: value } },
      },
    },
    '#path':: { 'function': { help: |||
      Unique name of the auth backend to configure.
    ||| } },
    withPath(value):: self {
      resource+: {
        vault_oci_auth_backend+: { [terraformName]+: { path: value } },
      },
    },
    '#rotation_period':: { 'function': { help: |||
      The period of time in seconds between each rotation of the root credential. Cannot be used with rotation_schedule.
    ||| } },
    withRotationPeriod(value):: self {
      resource+: {
        vault_oci_auth_backend+: { [terraformName]+: { rotation_period: value } },
      },
    },
    '#rotation_schedule':: { 'function': { help: |||
      The cron-style schedule for the root credential to be rotated on. Cannot be used with rotation_period.
    ||| } },
    withRotationSchedule(value):: self {
      resource+: {
        vault_oci_auth_backend+: { [terraformName]+: { rotation_schedule: value } },
      },
    },
    '#rotation_window':: { 'function': { help: |||
      The maximum amount of time in seconds Vault is allowed to complete a rotation once a scheduled rotation is triggered. Can only be used with rotation_schedule.
    ||| } },
    withRotationWindow(value):: self {
      resource+: {
        vault_oci_auth_backend+: { [terraformName]+: { rotation_window: value } },
      },
    },
    withTune(value):: self {
      resource+: {
        vault_oci_auth_backend+: { [terraformName]+: { tune: value } },
      },
    },
  },
  ref(terraformName):: {
    local refSelf = self,
    plain(suffix=''):: '${ vault_oci_auth_backend.%s%s }' % [terraformName, suffix],
    fields:: {
      '#accessor':: { 'function': { help: |||
        The accessor of the auth backend
      ||| } },
      accessor(suffix=''):: refSelf.plain('.accessor%s' % suffix),
      description(suffix=''):: refSelf.plain('.description%s' % suffix),
      '#disable_automated_rotation':: { 'function': { help: |||
        Stops rotation of the root credential until set to false.
      ||| } },
      disable_automated_rotation(suffix=''):: refSelf.plain('.disable_automated_rotation%s' % suffix),
      '#disable_remount':: { 'function': { help: |||
        If set, opts out of mount migration on path updates.
      ||| } },
      disable_remount(suffix=''):: refSelf.plain('.disable_remount%s' % suffix),
      '#home_tenancy_id':: { 'function': { help: |||
        The Tenancy OCID of your OCI account.
      ||| } },
      home_tenancy_id(suffix=''):: refSelf.plain('.home_tenancy_id%s' % suffix),
      id(suffix=''):: refSelf.plain('.id%s' % suffix),
      '#namespace':: { 'function': { help: |||
        Target namespace. (requires Enterprise)
      ||| } },
      namespace(suffix=''):: refSelf.plain('.namespace%s' % suffix),
      '#path':: { 'function': { help: |||
        Unique name of the auth backend to configure.
      ||| } },
      path(suffix=''):: refSelf.plain('.path%s' % suffix),
      '#rotation_period':: { 'function': { help: |||
        The period of time in seconds between each rotation of the root credential. Cannot be used with rotation_schedule.
      ||| } },
      rotation_period(suffix=''):: refSelf.plain('.rotation_period%s' % suffix),
      '#rotation_schedule':: { 'function': { help: |||
        The cron-style schedule for the root credential to be rotated on. Cannot be used with rotation_period.
      ||| } },
      rotation_schedule(suffix=''):: refSelf.plain('.rotation_schedule%s' % suffix),
      '#rotation_window':: { 'function': { help: |||
        The maximum amount of time in seconds Vault is allowed to complete a rotation once a scheduled rotation is triggered. Can only be used with rotation_schedule.
      ||| } },
      rotation_window(suffix=''):: refSelf.plain('.rotation_window%s' % suffix),
      tune(suffix=''):: refSelf.plain('.tune%s' % suffix),
    },
  },
}
