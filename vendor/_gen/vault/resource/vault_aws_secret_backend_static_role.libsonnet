{
  new(terraformName, name, rotation_period, username):: {
    _type:: 'tf',
    resource+: {
      vault_aws_secret_backend_static_role+: { [terraformName]+: {
        name: name,
        rotation_period: rotation_period,
        username: username,
      } },
    },
    '#withAssumeRoleArn':: { 'function': { help: |||
      The ARN of the role to assume when managing the static role. This is required for cross-account role management.  
    ||| } },
    withAssumeRoleArn(value):: self {
      resource+: {
        vault_aws_secret_backend_static_role+: { [terraformName]+: { assume_role_arn: value } },
      },
    },
    '#withAssumeRoleSessionName':: { 'function': { help: |||
      Session name to use when assuming the role. 
    ||| } },
    withAssumeRoleSessionName(value):: self {
      resource+: {
        vault_aws_secret_backend_static_role+: { [terraformName]+: { assume_role_session_name: value } },
      },
    },
    '#withBackend':: { 'function': { help: |||
      The path where the AWS secrets backend is mounted. 
    ||| } },
    withBackend(value):: self {
      resource+: {
        vault_aws_secret_backend_static_role+: { [terraformName]+: { backend: value } },
      },
    },
    '#withExternalId':: { 'function': { help: |||
      External ID to use when assuming the role. 
    ||| } },
    withExternalId(value):: self {
      resource+: {
        vault_aws_secret_backend_static_role+: { [terraformName]+: { external_id: value } },
      },
    },
    withId(value):: self {
      resource+: {
        vault_aws_secret_backend_static_role+: { [terraformName]+: { id: value } },
      },
    },
    '#withName':: { 'function': { help: |||
      Name of the role. 
    ||| } },
    withName(value):: self {
      resource+: {
        vault_aws_secret_backend_static_role+: { [terraformName]+: { name: value } },
      },
    },
    '#withNamespace':: { 'function': { help: |||
      Target namespace. (requires Enterprise) 
    ||| } },
    withNamespace(value):: self {
      resource+: {
        vault_aws_secret_backend_static_role+: { [terraformName]+: { namespace: value } },
      },
    },
    '#withRotationPeriod':: { 'function': { help: |||
      How often Vault should rotate the password of the user entry. 
    ||| } },
    withRotationPeriod(value):: self {
      resource+: {
        vault_aws_secret_backend_static_role+: { [terraformName]+: { rotation_period: value } },
      },
    },
    '#withUsername':: { 'function': { help: |||
      The username of the existing AWS IAM user to manage password rotation for. 
    ||| } },
    withUsername(value):: self {
      resource+: {
        vault_aws_secret_backend_static_role+: { [terraformName]+: { username: value } },
      },
    },
  },
}
