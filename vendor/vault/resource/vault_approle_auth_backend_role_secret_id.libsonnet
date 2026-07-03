{
  new(terraformName, role_name):: {
    _type:: 'tf',
    resource+: {
      vault_approle_auth_backend_role_secret_id+: { [terraformName]+: {
        role_name: role_name,
      } },
    },
    withWrappingToken(value):: self {
      resource+: {
        vault_approle_auth_backend_role_secret_id+: { [terraformName]+: { wrapping_token: value } },
      },
    },
    withBackend(value):: self {
      resource+: {
        vault_approle_auth_backend_role_secret_id+: { [terraformName]+: { backend: value } },
      },
    },
    withTtl(value):: self {
      resource+: {
        vault_approle_auth_backend_role_secret_id+: { [terraformName]+: { ttl: value } },
      },
    },
    withWrappingAccessor(value):: self {
      resource+: {
        vault_approle_auth_backend_role_secret_id+: { [terraformName]+: { wrapping_accessor: value } },
      },
    },
    withNamespace(value):: self {
      resource+: {
        vault_approle_auth_backend_role_secret_id+: { [terraformName]+: { namespace: value } },
      },
    },
    withCidrList(value):: self {
      resource+: {
        vault_approle_auth_backend_role_secret_id+: { [terraformName]+: { cidr_list: value } },
      },
    },
    withAccessor(value):: self {
      resource+: {
        vault_approle_auth_backend_role_secret_id+: { [terraformName]+: { accessor: value } },
      },
    },
    withRoleName(value):: self {
      resource+: {
        vault_approle_auth_backend_role_secret_id+: { [terraformName]+: { role_name: value } },
      },
    },
    withId(value):: self {
      resource+: {
        vault_approle_auth_backend_role_secret_id+: { [terraformName]+: { id: value } },
      },
    },
    withSecretId(value):: self {
      resource+: {
        vault_approle_auth_backend_role_secret_id+: { [terraformName]+: { secret_id: value } },
      },
    },
    withMetadata(value):: self {
      resource+: {
        vault_approle_auth_backend_role_secret_id+: { [terraformName]+: { metadata: value } },
      },
    },
    withWithWrappedAccessor(value):: self {
      resource+: {
        vault_approle_auth_backend_role_secret_id+: { [terraformName]+: { with_wrapped_accessor: value } },
      },
    },
    withNumUses(value):: self {
      resource+: {
        vault_approle_auth_backend_role_secret_id+: { [terraformName]+: { num_uses: value } },
      },
    },
    withTokenBoundCidrs(value):: self {
      resource+: {
        vault_approle_auth_backend_role_secret_id+: { [terraformName]+: { token_bound_cidrs: value } },
      },
    },
    withWrappingTtl(value):: self {
      resource+: {
        vault_approle_auth_backend_role_secret_id+: { [terraformName]+: { wrapping_ttl: value } },
      },
    },
  },
}
