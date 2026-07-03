{
  new(terraformName, name, rotation_period, username):: self.functions(terraformName) {
    _type:: 'tf',
    resource+: {
      vault_aws_secret_backend_static_role+: {
        [terraformName]+: {
          name: name,
          rotation_period: rotation_period,
          username: username,
        },
      },
    },
  },
  functions(terraformName):: {
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
  ref(terraformName):: {
    local refSelf = self,
    plain(suffix=''):: '${ vault_aws_secret_backend_static_role.%s%s }' % [terraformName, suffix],
    fields:: {
      '#assume_role_arn':: { 'function': { help: |||
        The ARN of the role to assume when managing the static role. This is required for cross-account role management.  
      ||| } },
      assume_role_arn(suffix=''):: refSelf.plain('.assume_role_arn%s' % suffix),
      '#assume_role_session_name':: { 'function': { help: |||
        Session name to use when assuming the role. 
      ||| } },
      assume_role_session_name(suffix=''):: refSelf.plain('.assume_role_session_name%s' % suffix),
      '#backend':: { 'function': { help: |||
        The path where the AWS secrets backend is mounted. 
      ||| } },
      backend(suffix=''):: refSelf.plain('.backend%s' % suffix),
      '#external_id':: { 'function': { help: |||
        External ID to use when assuming the role. 
      ||| } },
      external_id(suffix=''):: refSelf.plain('.external_id%s' % suffix),
      id(suffix=''):: refSelf.plain('.id%s' % suffix),
      '#name':: { 'function': { help: |||
        Name of the role. 
      ||| } },
      name(suffix=''):: refSelf.plain('.name%s' % suffix),
      '#namespace':: { 'function': { help: |||
        Target namespace. (requires Enterprise) 
      ||| } },
      namespace(suffix=''):: refSelf.plain('.namespace%s' % suffix),
      '#rotation_period':: { 'function': { help: |||
        How often Vault should rotate the password of the user entry. 
      ||| } },
      rotation_period(suffix=''):: refSelf.plain('.rotation_period%s' % suffix),
      '#username':: { 'function': { help: |||
        The username of the existing AWS IAM user to manage password rotation for. 
      ||| } },
      username(suffix=''):: refSelf.plain('.username%s' % suffix),
    },
  },
}
