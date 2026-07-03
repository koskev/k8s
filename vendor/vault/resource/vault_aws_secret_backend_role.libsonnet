{
  new(terraformName, credential_type, backend, name):: {
    _type:: 'tf',
    resource+: {
      vault_aws_secret_backend_role+: { [terraformName]+: {
        credential_type: credential_type,
        backend: backend,
        name: name,
      } },
    },
    withCredentialType(value):: self {
      resource+: {
        vault_aws_secret_backend_role+: { [terraformName]+: { credential_type: value } },
      },
    },
    withSessionTags(value):: self {
      resource+: {
        vault_aws_secret_backend_role+: { [terraformName]+: { session_tags: value } },
      },
    },
    withBackend(value):: self {
      resource+: {
        vault_aws_secret_backend_role+: { [terraformName]+: { backend: value } },
      },
    },
    withExternalId(value):: self {
      resource+: {
        vault_aws_secret_backend_role+: { [terraformName]+: { external_id: value } },
      },
    },
    withPolicyDocument(value):: self {
      resource+: {
        vault_aws_secret_backend_role+: { [terraformName]+: { policy_document: value } },
      },
    },
    withRoleArns(value):: self {
      resource+: {
        vault_aws_secret_backend_role+: { [terraformName]+: { role_arns: value } },
      },
    },
    withPolicyArns(value):: self {
      resource+: {
        vault_aws_secret_backend_role+: { [terraformName]+: { policy_arns: value } },
      },
    },
    withIamGroups(value):: self {
      resource+: {
        vault_aws_secret_backend_role+: { [terraformName]+: { iam_groups: value } },
      },
    },
    withNamespace(value):: self {
      resource+: {
        vault_aws_secret_backend_role+: { [terraformName]+: { namespace: value } },
      },
    },
    withMaxStsTtl(value):: self {
      resource+: {
        vault_aws_secret_backend_role+: { [terraformName]+: { max_sts_ttl: value } },
      },
    },
    withId(value):: self {
      resource+: {
        vault_aws_secret_backend_role+: { [terraformName]+: { id: value } },
      },
    },
    withName(value):: self {
      resource+: {
        vault_aws_secret_backend_role+: { [terraformName]+: { name: value } },
      },
    },
    withDefaultStsTtl(value):: self {
      resource+: {
        vault_aws_secret_backend_role+: { [terraformName]+: { default_sts_ttl: value } },
      },
    },
    withIamTags(value):: self {
      resource+: {
        vault_aws_secret_backend_role+: { [terraformName]+: { iam_tags: value } },
      },
    },
    withMfaSerialNumber(value):: self {
      resource+: {
        vault_aws_secret_backend_role+: { [terraformName]+: { mfa_serial_number: value } },
      },
    },
    withPermissionsBoundaryArn(value):: self {
      resource+: {
        vault_aws_secret_backend_role+: { [terraformName]+: { permissions_boundary_arn: value } },
      },
    },
    withUserPath(value):: self {
      resource+: {
        vault_aws_secret_backend_role+: { [terraformName]+: { user_path: value } },
      },
    },
  },
}
