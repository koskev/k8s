{
  new(terraformName, account_id, sts_role):: self.functions(terraformName) {
    _type:: 'tf',
    resource+: {
      vault_aws_auth_backend_sts_role+: {
        [terraformName]+: {
          account_id: account_id,
          sts_role: sts_role,
        },
      },
    },
  },
  functions(terraformName):: {
    '#withAccountId':: { 'function': { help: |||
      AWS account ID to be associated with STS role. 
    ||| } },
    withAccountId(value):: self {
      resource+: {
        vault_aws_auth_backend_sts_role+: { [terraformName]+: { account_id: value } },
      },
    },
    '#withBackend':: { 'function': { help: |||
      Unique name of the auth backend to configure. 
    ||| } },
    withBackend(value):: self {
      resource+: {
        vault_aws_auth_backend_sts_role+: { [terraformName]+: { backend: value } },
      },
    },
    '#withExternalId':: { 'function': { help: |||
      External ID expected by the STS role. 
    ||| } },
    withExternalId(value):: self {
      resource+: {
        vault_aws_auth_backend_sts_role+: { [terraformName]+: { external_id: value } },
      },
    },
    withId(value):: self {
      resource+: {
        vault_aws_auth_backend_sts_role+: { [terraformName]+: { id: value } },
      },
    },
    '#withNamespace':: { 'function': { help: |||
      Target namespace. (requires Enterprise) 
    ||| } },
    withNamespace(value):: self {
      resource+: {
        vault_aws_auth_backend_sts_role+: { [terraformName]+: { namespace: value } },
      },
    },
    '#withStsRole':: { 'function': { help: |||
      AWS ARN for STS role to be assumed when interacting with the account specified. 
    ||| } },
    withStsRole(value):: self {
      resource+: {
        vault_aws_auth_backend_sts_role+: { [terraformName]+: { sts_role: value } },
      },
    },
  },
  ref(terraformName):: {
    local refSelf = self,
    plain(suffix=''):: '${ vault_aws_auth_backend_sts_role.%s%s }' % [terraformName, suffix],
    fields:: {
      '#account_id':: { 'function': { help: |||
        AWS account ID to be associated with STS role. 
      ||| } },
      account_id(suffix=''):: refSelf.plain('.account_id%s' % suffix),
      '#backend':: { 'function': { help: |||
        Unique name of the auth backend to configure. 
      ||| } },
      backend(suffix=''):: refSelf.plain('.backend%s' % suffix),
      '#external_id':: { 'function': { help: |||
        External ID expected by the STS role. 
      ||| } },
      external_id(suffix=''):: refSelf.plain('.external_id%s' % suffix),
      id(suffix=''):: refSelf.plain('.id%s' % suffix),
      '#namespace':: { 'function': { help: |||
        Target namespace. (requires Enterprise) 
      ||| } },
      namespace(suffix=''):: refSelf.plain('.namespace%s' % suffix),
      '#sts_role':: { 'function': { help: |||
        AWS ARN for STS role to be assumed when interacting with the account specified. 
      ||| } },
      sts_role(suffix=''):: refSelf.plain('.sts_role%s' % suffix),
    },
  },
}
