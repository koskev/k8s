{
  new(terraformName, home_tenancy_id):: {
    _type:: 'tf',
    resource+: {
      vault_oci_auth_backend+: { [terraformName]+: {
        home_tenancy_id: home_tenancy_id,
      } },
    },
    withDisableRemount(value):: self {
      resource+: {
        vault_oci_auth_backend+: { [terraformName]+: { disable_remount: value } },
      },
    },
    withNamespace(value):: self {
      resource+: {
        vault_oci_auth_backend+: { [terraformName]+: { namespace: value } },
      },
    },
    withRotationPeriod(value):: self {
      resource+: {
        vault_oci_auth_backend+: { [terraformName]+: { rotation_period: value } },
      },
    },
    withTune(value):: self {
      resource+: {
        vault_oci_auth_backend+: { [terraformName]+: { tune: value } },
      },
    },
    withRotationSchedule(value):: self {
      resource+: {
        vault_oci_auth_backend+: { [terraformName]+: { rotation_schedule: value } },
      },
    },
    withDescription(value):: self {
      resource+: {
        vault_oci_auth_backend+: { [terraformName]+: { description: value } },
      },
    },
    withDisableAutomatedRotation(value):: self {
      resource+: {
        vault_oci_auth_backend+: { [terraformName]+: { disable_automated_rotation: value } },
      },
    },
    withHomeTenancyId(value):: self {
      resource+: {
        vault_oci_auth_backend+: { [terraformName]+: { home_tenancy_id: value } },
      },
    },
    withAccessor(value):: self {
      resource+: {
        vault_oci_auth_backend+: { [terraformName]+: { accessor: value } },
      },
    },
    withPath(value):: self {
      resource+: {
        vault_oci_auth_backend+: { [terraformName]+: { path: value } },
      },
    },
    withId(value):: self {
      resource+: {
        vault_oci_auth_backend+: { [terraformName]+: { id: value } },
      },
    },
    withRotationWindow(value):: self {
      resource+: {
        vault_oci_auth_backend+: { [terraformName]+: { rotation_window: value } },
      },
    },
  },
}
