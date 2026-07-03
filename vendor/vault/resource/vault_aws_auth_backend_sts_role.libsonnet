{
  new(terraformName, account_id, sts_role):: {
    _type:: 'tf',
    resource+: {
      vault_aws_auth_backend_sts_role+: { [terraformName]+: {
        account_id: account_id,
        sts_role: sts_role,
      } },
    },
    withId(value):: self {
      resource+: {
        vault_aws_auth_backend_sts_role+: { [terraformName]+: { id: value } },
      },
    },
    withBackend(value):: self {
      resource+: {
        vault_aws_auth_backend_sts_role+: { [terraformName]+: { backend: value } },
      },
    },
    withExternalId(value):: self {
      resource+: {
        vault_aws_auth_backend_sts_role+: { [terraformName]+: { external_id: value } },
      },
    },
    withAccountId(value):: self {
      resource+: {
        vault_aws_auth_backend_sts_role+: { [terraformName]+: { account_id: value } },
      },
    },
    withNamespace(value):: self {
      resource+: {
        vault_aws_auth_backend_sts_role+: { [terraformName]+: { namespace: value } },
      },
    },
    withStsRole(value):: self {
      resource+: {
        vault_aws_auth_backend_sts_role+: { [terraformName]+: { sts_role: value } },
      },
    },
  },
}
