{
  new(terraformName, role):: {
    _type:: 'tf',
    resource+: {
      vault_aws_auth_backend_role_tag+: { [terraformName]+: {
        role: role,
      } },
    },
    withId(value):: self {
      resource+: {
        vault_aws_auth_backend_role_tag+: { [terraformName]+: { id: value } },
      },
    },
    withMaxTtl(value):: self {
      resource+: {
        vault_aws_auth_backend_role_tag+: { [terraformName]+: { max_ttl: value } },
      },
    },
    withTagValue(value):: self {
      resource+: {
        vault_aws_auth_backend_role_tag+: { [terraformName]+: { tag_value: value } },
      },
    },
    withAllowInstanceMigration(value):: self {
      resource+: {
        vault_aws_auth_backend_role_tag+: { [terraformName]+: { allow_instance_migration: value } },
      },
    },
    withInstanceId(value):: self {
      resource+: {
        vault_aws_auth_backend_role_tag+: { [terraformName]+: { instance_id: value } },
      },
    },
    withNamespace(value):: self {
      resource+: {
        vault_aws_auth_backend_role_tag+: { [terraformName]+: { namespace: value } },
      },
    },
    withRole(value):: self {
      resource+: {
        vault_aws_auth_backend_role_tag+: { [terraformName]+: { role: value } },
      },
    },
    withPolicies(value):: self {
      resource+: {
        vault_aws_auth_backend_role_tag+: { [terraformName]+: { policies: value } },
      },
    },
    withBackend(value):: self {
      resource+: {
        vault_aws_auth_backend_role_tag+: { [terraformName]+: { backend: value } },
      },
    },
    withDisallowReauthentication(value):: self {
      resource+: {
        vault_aws_auth_backend_role_tag+: { [terraformName]+: { disallow_reauthentication: value } },
      },
    },
    withTagKey(value):: self {
      resource+: {
        vault_aws_auth_backend_role_tag+: { [terraformName]+: { tag_key: value } },
      },
    },
  },
}
