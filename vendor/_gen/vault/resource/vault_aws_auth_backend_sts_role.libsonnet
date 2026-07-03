{
  new(terraformName, account_id, sts_role):: {
    _type:: 'tf',
    resource+: {
      vault_aws_auth_backend_sts_role+: { [terraformName]+: {
        account_id: account_id,
        sts_role: sts_role,
      } },
    },
    '#withAccountId': { 'function': { help: |||
      AWS account ID to be associated with STS role. 
    ||| } },
    withAccountId(value):: self {
      resource+: {
        vault_aws_auth_backend_sts_role+: { [terraformName]+: { account_id: value } },
      },
    },
    '#withBackend': { 'function': { help: |||
      Unique name of the auth backend to configure. 
    ||| } },
    withBackend(value):: self {
      resource+: {
        vault_aws_auth_backend_sts_role+: { [terraformName]+: { backend: value } },
      },
    },
    '#withExternalId': { 'function': { help: |||
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
    '#withNamespace': { 'function': { help: |||
      Target namespace. (requires Enterprise) 
    ||| } },
    withNamespace(value):: self {
      resource+: {
        vault_aws_auth_backend_sts_role+: { [terraformName]+: { namespace: value } },
      },
    },
    '#withStsRole': { 'function': { help: |||
      AWS ARN for STS role to be assumed when interacting with the account specified. 
    ||| } },
    withStsRole(value):: self {
      resource+: {
        vault_aws_auth_backend_sts_role+: { [terraformName]+: { sts_role: value } },
      },
    },
  },
}
