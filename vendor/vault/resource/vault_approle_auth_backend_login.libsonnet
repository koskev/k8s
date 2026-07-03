{
  new(terraformName, role_id):: {
    _type:: 'tf',
    resource+: {
      vault_approle_auth_backend_login+: { [terraformName]+: {
        role_id: role_id,
      } },
    },
    withBackend(value):: self {
      resource+: {
        vault_approle_auth_backend_login+: { [terraformName]+: { backend: value } },
      },
    },
    withRenewable(value):: self {
      resource+: {
        vault_approle_auth_backend_login+: { [terraformName]+: { renewable: value } },
      },
    },
    withRoleId(value):: self {
      resource+: {
        vault_approle_auth_backend_login+: { [terraformName]+: { role_id: value } },
      },
    },
    withId(value):: self {
      resource+: {
        vault_approle_auth_backend_login+: { [terraformName]+: { id: value } },
      },
    },
    withSecretId(value):: self {
      resource+: {
        vault_approle_auth_backend_login+: { [terraformName]+: { secret_id: value } },
      },
    },
    withMetadata(value):: self {
      resource+: {
        vault_approle_auth_backend_login+: { [terraformName]+: { metadata: value } },
      },
    },
    withAccessor(value):: self {
      resource+: {
        vault_approle_auth_backend_login+: { [terraformName]+: { accessor: value } },
      },
    },
    withLeaseDuration(value):: self {
      resource+: {
        vault_approle_auth_backend_login+: { [terraformName]+: { lease_duration: value } },
      },
    },
    withClientToken(value):: self {
      resource+: {
        vault_approle_auth_backend_login+: { [terraformName]+: { client_token: value } },
      },
    },
    withLeaseStarted(value):: self {
      resource+: {
        vault_approle_auth_backend_login+: { [terraformName]+: { lease_started: value } },
      },
    },
    withNamespace(value):: self {
      resource+: {
        vault_approle_auth_backend_login+: { [terraformName]+: { namespace: value } },
      },
    },
    withPolicies(value):: self {
      resource+: {
        vault_approle_auth_backend_login+: { [terraformName]+: { policies: value } },
      },
    },
    withSecretIdWo(value):: self {
      resource+: {
        vault_approle_auth_backend_login+: { [terraformName]+: { secret_id_wo: value } },
      },
    },
    withSecretIdWoVersion(value):: self {
      resource+: {
        vault_approle_auth_backend_login+: { [terraformName]+: { secret_id_wo_version: value } },
      },
    },
  },
}
