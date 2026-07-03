{
  new(terraformName, username, rotation_period, name):: {
    _type:: 'tf',
    resource+: {
      vault_aws_secret_backend_static_role+: { [terraformName]+: {
        username: username,
        rotation_period: rotation_period,
        name: name,
      } },
    },
    withAssumeRoleArn(value):: self {
      resource+: {
        vault_aws_secret_backend_static_role+: { [terraformName]+: { assume_role_arn: value } },
      },
    },
    withUsername(value):: self {
      resource+: {
        vault_aws_secret_backend_static_role+: { [terraformName]+: { username: value } },
      },
    },
    withRotationPeriod(value):: self {
      resource+: {
        vault_aws_secret_backend_static_role+: { [terraformName]+: { rotation_period: value } },
      },
    },
    withBackend(value):: self {
      resource+: {
        vault_aws_secret_backend_static_role+: { [terraformName]+: { backend: value } },
      },
    },
    withId(value):: self {
      resource+: {
        vault_aws_secret_backend_static_role+: { [terraformName]+: { id: value } },
      },
    },
    withName(value):: self {
      resource+: {
        vault_aws_secret_backend_static_role+: { [terraformName]+: { name: value } },
      },
    },
    withNamespace(value):: self {
      resource+: {
        vault_aws_secret_backend_static_role+: { [terraformName]+: { namespace: value } },
      },
    },
    withAssumeRoleSessionName(value):: self {
      resource+: {
        vault_aws_secret_backend_static_role+: { [terraformName]+: { assume_role_session_name: value } },
      },
    },
    withExternalId(value):: self {
      resource+: {
        vault_aws_secret_backend_static_role+: { [terraformName]+: { external_id: value } },
      },
    },
  },
}
