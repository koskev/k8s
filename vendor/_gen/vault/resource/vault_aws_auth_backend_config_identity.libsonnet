{
  new(terraformName):: {
    _type:: 'tf',
    resource+: {
      vault_aws_auth_backend_config_identity+: { [terraformName]+: {
      } },
    },
    '#withBackend': { 'function': { help: |||
      Unique name of the auth backend to configure. 
    ||| } },
    withBackend(value):: self {
      resource+: {
        vault_aws_auth_backend_config_identity+: { [terraformName]+: { backend: value } },
      },
    },
    '#withEc2Alias': { 'function': { help: |||
      Configures how to generate the identity alias when using the ec2 auth method. 
    ||| } },
    withEc2Alias(value):: self {
      resource+: {
        vault_aws_auth_backend_config_identity+: { [terraformName]+: { ec2_alias: value } },
      },
    },
    '#withEc2Metadata': { 'function': { help: |||
      The metadata to include on the token returned by the login endpoint. 
    ||| } },
    withEc2Metadata(value):: self {
      resource+: {
        vault_aws_auth_backend_config_identity+: { [terraformName]+: { ec2_metadata: value } },
      },
    },
    '#withIamAlias': { 'function': { help: |||
      How to generate the identity alias when using the iam auth method. 
    ||| } },
    withIamAlias(value):: self {
      resource+: {
        vault_aws_auth_backend_config_identity+: { [terraformName]+: { iam_alias: value } },
      },
    },
    '#withIamMetadata': { 'function': { help: |||
      The metadata to include on the token returned by the login endpoint. 
    ||| } },
    withIamMetadata(value):: self {
      resource+: {
        vault_aws_auth_backend_config_identity+: { [terraformName]+: { iam_metadata: value } },
      },
    },
    withId(value):: self {
      resource+: {
        vault_aws_auth_backend_config_identity+: { [terraformName]+: { id: value } },
      },
    },
    '#withNamespace': { 'function': { help: |||
      Target namespace. (requires Enterprise) 
    ||| } },
    withNamespace(value):: self {
      resource+: {
        vault_aws_auth_backend_config_identity+: { [terraformName]+: { namespace: value } },
      },
    },
  },
}
