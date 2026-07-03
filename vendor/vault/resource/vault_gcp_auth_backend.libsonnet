{
  new(terraformName):: {
    _type:: 'tf',
    resource+: {
      vault_gcp_auth_backend+: { [terraformName]+: {
      } },
    },
    withIdentityTokenTtl(value):: self {
      resource+: {
        vault_gcp_auth_backend+: { [terraformName]+: { identity_token_ttl: value } },
      },
    },
    withAccessor(value):: self {
      resource+: {
        vault_gcp_auth_backend+: { [terraformName]+: { accessor: value } },
      },
    },
    withProjectId(value):: self {
      resource+: {
        vault_gcp_auth_backend+: { [terraformName]+: { project_id: value } },
      },
    },
    withTune(value):: self {
      resource+: {
        vault_gcp_auth_backend+: { [terraformName]+: { tune: value } },
      },
    },
    withRotationPeriod(value):: self {
      resource+: {
        vault_gcp_auth_backend+: { [terraformName]+: { rotation_period: value } },
      },
    },
    withPath(value):: self {
      resource+: {
        vault_gcp_auth_backend+: { [terraformName]+: { path: value } },
      },
    },
    withServiceAccountEmail(value):: self {
      resource+: {
        vault_gcp_auth_backend+: { [terraformName]+: { service_account_email: value } },
      },
    },
    withCredentialsWoVersion(value):: self {
      resource+: {
        vault_gcp_auth_backend+: { [terraformName]+: { credentials_wo_version: value } },
      },
    },
    withGceMetadata(value):: self {
      resource+: {
        vault_gcp_auth_backend+: { [terraformName]+: { gce_metadata: value } },
      },
    },
    withIdentityTokenAudience(value):: self {
      resource+: {
        vault_gcp_auth_backend+: { [terraformName]+: { identity_token_audience: value } },
      },
    },
    withLocal(value):: self {
      resource+: {
        vault_gcp_auth_backend+: { [terraformName]+: { 'local': value } },
      },
    },
    withDisableRemount(value):: self {
      resource+: {
        vault_gcp_auth_backend+: { [terraformName]+: { disable_remount: value } },
      },
    },
    withRotationWindow(value):: self {
      resource+: {
        vault_gcp_auth_backend+: { [terraformName]+: { rotation_window: value } },
      },
    },
    withIamAlias(value):: self {
      resource+: {
        vault_gcp_auth_backend+: { [terraformName]+: { iam_alias: value } },
      },
    },
    withIamMetadata(value):: self {
      resource+: {
        vault_gcp_auth_backend+: { [terraformName]+: { iam_metadata: value } },
      },
    },
    withNamespace(value):: self {
      resource+: {
        vault_gcp_auth_backend+: { [terraformName]+: { namespace: value } },
      },
    },
    withPrivateKeyId(value):: self {
      resource+: {
        vault_gcp_auth_backend+: { [terraformName]+: { private_key_id: value } },
      },
    },
    withDisableAutomatedRotation(value):: self {
      resource+: {
        vault_gcp_auth_backend+: { [terraformName]+: { disable_automated_rotation: value } },
      },
    },
    withClientEmail(value):: self {
      resource+: {
        vault_gcp_auth_backend+: { [terraformName]+: { client_email: value } },
      },
    },
    withRotationSchedule(value):: self {
      resource+: {
        vault_gcp_auth_backend+: { [terraformName]+: { rotation_schedule: value } },
      },
    },
    withDescription(value):: self {
      resource+: {
        vault_gcp_auth_backend+: { [terraformName]+: { description: value } },
      },
    },
    withClientId(value):: self {
      resource+: {
        vault_gcp_auth_backend+: { [terraformName]+: { client_id: value } },
      },
    },
    withCredentialsWo(value):: self {
      resource+: {
        vault_gcp_auth_backend+: { [terraformName]+: { credentials_wo: value } },
      },
    },
    withGceAlias(value):: self {
      resource+: {
        vault_gcp_auth_backend+: { [terraformName]+: { gce_alias: value } },
      },
    },
    withIdentityTokenKey(value):: self {
      resource+: {
        vault_gcp_auth_backend+: { [terraformName]+: { identity_token_key: value } },
      },
    },
    withId(value):: self {
      resource+: {
        vault_gcp_auth_backend+: { [terraformName]+: { id: value } },
      },
    },
    withCredentials(value):: self {
      resource+: {
        vault_gcp_auth_backend+: { [terraformName]+: { credentials: value } },
      },
    },
  },
}
