{
  new(terraformName):: {
    _type:: 'tf',
    resource+: {
      vault_aws_auth_backend_config_identity+: { [terraformName]+: {
      } },
    },
    withNamespace(value):: self {
      resource+: {
        vault_aws_auth_backend_config_identity+: { [terraformName]+: { namespace: value } },
      },
    },
    withIamAlias(value):: self {
      resource+: {
        vault_aws_auth_backend_config_identity+: { [terraformName]+: { iam_alias: value } },
      },
    },
    withBackend(value):: self {
      resource+: {
        vault_aws_auth_backend_config_identity+: { [terraformName]+: { backend: value } },
      },
    },
    withEc2Alias(value):: self {
      resource+: {
        vault_aws_auth_backend_config_identity+: { [terraformName]+: { ec2_alias: value } },
      },
    },
    withId(value):: self {
      resource+: {
        vault_aws_auth_backend_config_identity+: { [terraformName]+: { id: value } },
      },
    },
    withEc2Metadata(value):: self {
      resource+: {
        vault_aws_auth_backend_config_identity+: { [terraformName]+: { ec2_metadata: value } },
      },
    },
    withIamMetadata(value):: self {
      resource+: {
        vault_aws_auth_backend_config_identity+: { [terraformName]+: { iam_metadata: value } },
      },
    },
  },
}
