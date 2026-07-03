{
  new(terraformName, backend, credential_type, name):: {
    _type:: 'tf',
    resource+: {
      vault_aws_secret_backend_role+: { [terraformName]+: {
        backend: backend,
        credential_type: credential_type,
        name: name,
      } },
    },
    '#withBackend':: { 'function': { help: |||
      The path of the AWS Secret Backend the role belongs to. 
    ||| } },
    withBackend(value):: self {
      resource+: {
        vault_aws_secret_backend_role+: { [terraformName]+: { backend: value } },
      },
    },
    '#withCredentialType':: { 'function': { help: |||
      Role credential type. 
    ||| } },
    withCredentialType(value):: self {
      resource+: {
        vault_aws_secret_backend_role+: { [terraformName]+: { credential_type: value } },
      },
    },
    '#withDefaultStsTtl':: { 'function': { help: |||
      The default TTL in seconds for STS credentials. When a TTL is not specified when STS credentials are requested, and a default TTL is specified on the role, then this default TTL will be used. Valid only when credential_type is one of assumed_role or federation_token. 
    ||| } },
    withDefaultStsTtl(value):: self {
      resource+: {
        vault_aws_secret_backend_role+: { [terraformName]+: { default_sts_ttl: value } },
      },
    },
    '#withExternalId':: { 'function': { help: |||
      External ID to set for assume role creds. 
    ||| } },
    withExternalId(value):: self {
      resource+: {
        vault_aws_secret_backend_role+: { [terraformName]+: { external_id: value } },
      },
    },
    '#withIamGroups':: { 'function': { help: |||
      A list of IAM group names. IAM users generated against this vault role will be added to these IAM Groups. For a credential type of assumed_role or federation_token, the policies sent to the corresponding AWS call (sts:AssumeRole or sts:GetFederation) will be the policies from each group in iam_groups combined with the policy_document and policy_arns parameters. 
    ||| } },
    withIamGroups(value):: self {
      resource+: {
        vault_aws_secret_backend_role+: { [terraformName]+: { iam_groups: value } },
      },
    },
    '#withIamTags':: { 'function': { help: |||
      A map of strings representing key/value pairs used as tags for any IAM user created by this role. 
    ||| } },
    withIamTags(value):: self {
      resource+: {
        vault_aws_secret_backend_role+: { [terraformName]+: { iam_tags: value } },
      },
    },
    withId(value):: self {
      resource+: {
        vault_aws_secret_backend_role+: { [terraformName]+: { id: value } },
      },
    },
    '#withMaxStsTtl':: { 'function': { help: |||
      The max allowed TTL in seconds for STS credentials (credentials TTL are capped to max_sts_ttl). Valid only when credential_type is one of assumed_role or federation_token. 
    ||| } },
    withMaxStsTtl(value):: self {
      resource+: {
        vault_aws_secret_backend_role+: { [terraformName]+: { max_sts_ttl: value } },
      },
    },
    '#withMfaSerialNumber':: { 'function': { help: |||
      The ARN or hardware device number of the device configured to the IAM user for multi-factor authentication. Only required if the IAM user has an MFA device set up in AWS. 
    ||| } },
    withMfaSerialNumber(value):: self {
      resource+: {
        vault_aws_secret_backend_role+: { [terraformName]+: { mfa_serial_number: value } },
      },
    },
    '#withName':: { 'function': { help: |||
      Unique name for the role. 
    ||| } },
    withName(value):: self {
      resource+: {
        vault_aws_secret_backend_role+: { [terraformName]+: { name: value } },
      },
    },
    '#withNamespace':: { 'function': { help: |||
      Target namespace. (requires Enterprise) 
    ||| } },
    withNamespace(value):: self {
      resource+: {
        vault_aws_secret_backend_role+: { [terraformName]+: { namespace: value } },
      },
    },
    '#withPermissionsBoundaryArn':: { 'function': { help: |||
      The ARN of the AWS Permissions Boundary to attach to IAM users created in the role. Valid only when credential_type is iam_user. If not specified, then no permissions boundary policy will be attached. 
    ||| } },
    withPermissionsBoundaryArn(value):: self {
      resource+: {
        vault_aws_secret_backend_role+: { [terraformName]+: { permissions_boundary_arn: value } },
      },
    },
    '#withPolicyArns':: { 'function': { help: |||
      ARN for an existing IAM policy the role should use. 
    ||| } },
    withPolicyArns(value):: self {
      resource+: {
        vault_aws_secret_backend_role+: { [terraformName]+: { policy_arns: value } },
      },
    },
    '#withPolicyDocument':: { 'function': { help: |||
      IAM policy the role should use in JSON format. 
    ||| } },
    withPolicyDocument(value):: self {
      resource+: {
        vault_aws_secret_backend_role+: { [terraformName]+: { policy_document: value } },
      },
    },
    '#withRoleArns':: { 'function': { help: |||
      ARNs of AWS roles allowed to be assumed. Only valid when credential_type is 'assumed_role' 
    ||| } },
    withRoleArns(value):: self {
      resource+: {
        vault_aws_secret_backend_role+: { [terraformName]+: { role_arns: value } },
      },
    },
    '#withSessionTags':: { 'function': { help: |||
      Session tags to be set for assume role creds created. 
    ||| } },
    withSessionTags(value):: self {
      resource+: {
        vault_aws_secret_backend_role+: { [terraformName]+: { session_tags: value } },
      },
    },
    '#withUserPath':: { 'function': { help: |||
      The path for the user name. Valid only when credential_type is iam_user. Default is / 
    ||| } },
    withUserPath(value):: self {
      resource+: {
        vault_aws_secret_backend_role+: { [terraformName]+: { user_path: value } },
      },
    },
  },
}
