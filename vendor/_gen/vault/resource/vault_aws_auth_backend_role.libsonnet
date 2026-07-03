{
  new(terraformName, role):: {
    _type:: 'tf',
    resource+: {
      vault_aws_auth_backend_role+: { [terraformName]+: {
        role: role,
      } },
    },
    '#withAliasMetadata':: { 'function': { help: |||
      The metadata to be tied to generated entity alias.
       This should be a list or map containing the metadata in key value pairs. 
    ||| } },
    withAliasMetadata(value):: self {
      resource+: {
        vault_aws_auth_backend_role+: { [terraformName]+: { alias_metadata: value } },
      },
    },
    '#withAllowInstanceMigration':: { 'function': { help: |||
      When true, allows migration of the underlying instance where the client resides. Use with caution. 
    ||| } },
    withAllowInstanceMigration(value):: self {
      resource+: {
        vault_aws_auth_backend_role+: { [terraformName]+: { allow_instance_migration: value } },
      },
    },
    '#withAuthType':: { 'function': { help: |||
      The auth type permitted for this role. 
    ||| } },
    withAuthType(value):: self {
      resource+: {
        vault_aws_auth_backend_role+: { [terraformName]+: { auth_type: value } },
      },
    },
    '#withBackend':: { 'function': { help: |||
      Unique name of the auth backend to configure. 
    ||| } },
    withBackend(value):: self {
      resource+: {
        vault_aws_auth_backend_role+: { [terraformName]+: { backend: value } },
      },
    },
    '#withBoundAccountIds':: { 'function': { help: |||
      Only EC2 instances with this account ID in their identity document will be permitted to log in. 
    ||| } },
    withBoundAccountIds(value):: self {
      resource+: {
        vault_aws_auth_backend_role+: { [terraformName]+: { bound_account_ids: value } },
      },
    },
    '#withBoundAmiIds':: { 'function': { help: |||
      Only EC2 instances using this AMI ID will be permitted to log in. 
    ||| } },
    withBoundAmiIds(value):: self {
      resource+: {
        vault_aws_auth_backend_role+: { [terraformName]+: { bound_ami_ids: value } },
      },
    },
    '#withBoundEc2InstanceIds':: { 'function': { help: |||
      Only EC2 instances that match this instance ID will be permitted to log in. 
    ||| } },
    withBoundEc2InstanceIds(value):: self {
      resource+: {
        vault_aws_auth_backend_role+: { [terraformName]+: { bound_ec2_instance_ids: value } },
      },
    },
    '#withBoundIamInstanceProfileArns':: { 'function': { help: |||
      Only EC2 instances associated with an IAM instance profile ARN that matches this value will be permitted to log in. 
    ||| } },
    withBoundIamInstanceProfileArns(value):: self {
      resource+: {
        vault_aws_auth_backend_role+: { [terraformName]+: { bound_iam_instance_profile_arns: value } },
      },
    },
    '#withBoundIamPrincipalArns':: { 'function': { help: |||
      The IAM principal that must be authenticated using the iam auth method. 
    ||| } },
    withBoundIamPrincipalArns(value):: self {
      resource+: {
        vault_aws_auth_backend_role+: { [terraformName]+: { bound_iam_principal_arns: value } },
      },
    },
    '#withBoundIamRoleArns':: { 'function': { help: |||
      Only EC2 instances that match this IAM role ARN will be permitted to log in. 
    ||| } },
    withBoundIamRoleArns(value):: self {
      resource+: {
        vault_aws_auth_backend_role+: { [terraformName]+: { bound_iam_role_arns: value } },
      },
    },
    '#withBoundRegions':: { 'function': { help: |||
      Only EC2 instances in this region will be permitted to log in. 
    ||| } },
    withBoundRegions(value):: self {
      resource+: {
        vault_aws_auth_backend_role+: { [terraformName]+: { bound_regions: value } },
      },
    },
    '#withBoundSubnetIds':: { 'function': { help: |||
      Only EC2 instances associated with this subnet ID will be permitted to log in. 
    ||| } },
    withBoundSubnetIds(value):: self {
      resource+: {
        vault_aws_auth_backend_role+: { [terraformName]+: { bound_subnet_ids: value } },
      },
    },
    '#withBoundVpcIds':: { 'function': { help: |||
      Only EC2 instances associated with this VPC ID will be permitted to log in. 
    ||| } },
    withBoundVpcIds(value):: self {
      resource+: {
        vault_aws_auth_backend_role+: { [terraformName]+: { bound_vpc_ids: value } },
      },
    },
    '#withDisallowReauthentication':: { 'function': { help: |||
      When true, only allows a single token to be granted per instance ID. 
    ||| } },
    withDisallowReauthentication(value):: self {
      resource+: {
        vault_aws_auth_backend_role+: { [terraformName]+: { disallow_reauthentication: value } },
      },
    },
    withId(value):: self {
      resource+: {
        vault_aws_auth_backend_role+: { [terraformName]+: { id: value } },
      },
    },
    '#withInferredAwsRegion':: { 'function': { help: |||
      The region to search for the inferred entities in. 
    ||| } },
    withInferredAwsRegion(value):: self {
      resource+: {
        vault_aws_auth_backend_role+: { [terraformName]+: { inferred_aws_region: value } },
      },
    },
    '#withInferredEntityType':: { 'function': { help: |||
      The type of inferencing Vault should do. 
    ||| } },
    withInferredEntityType(value):: self {
      resource+: {
        vault_aws_auth_backend_role+: { [terraformName]+: { inferred_entity_type: value } },
      },
    },
    '#withNamespace':: { 'function': { help: |||
      Target namespace. (requires Enterprise) 
    ||| } },
    withNamespace(value):: self {
      resource+: {
        vault_aws_auth_backend_role+: { [terraformName]+: { namespace: value } },
      },
    },
    '#withResolveAwsUniqueIds':: { 'function': { help: |||
      Whether or not Vault should resolve the bound_iam_principal_arn to an AWS Unique ID. When true, deleting a principal and recreating it with the same name won't automatically grant the new principal the same roles in Vault that the old principal had. 
    ||| } },
    withResolveAwsUniqueIds(value):: self {
      resource+: {
        vault_aws_auth_backend_role+: { [terraformName]+: { resolve_aws_unique_ids: value } },
      },
    },
    '#withRole':: { 'function': { help: |||
      Name of the role. 
    ||| } },
    withRole(value):: self {
      resource+: {
        vault_aws_auth_backend_role+: { [terraformName]+: { role: value } },
      },
    },
    '#withRoleId':: { 'function': { help: |||
      The Vault generated role ID. 
    ||| } },
    withRoleId(value):: self {
      resource+: {
        vault_aws_auth_backend_role+: { [terraformName]+: { role_id: value } },
      },
    },
    '#withRoleTag':: { 'function': { help: |||
      The key of the tag on EC2 instance to use for role tags. 
    ||| } },
    withRoleTag(value):: self {
      resource+: {
        vault_aws_auth_backend_role+: { [terraformName]+: { role_tag: value } },
      },
    },
    '#withTokenBoundCidrs':: { 'function': { help: |||
      Specifies the blocks of IP addresses which are allowed to use the generated token 
    ||| } },
    withTokenBoundCidrs(value):: self {
      resource+: {
        vault_aws_auth_backend_role+: { [terraformName]+: { token_bound_cidrs: value } },
      },
    },
    '#withTokenExplicitMaxTtl':: { 'function': { help: |||
      Generated Token's Explicit Maximum TTL in seconds 
    ||| } },
    withTokenExplicitMaxTtl(value):: self {
      resource+: {
        vault_aws_auth_backend_role+: { [terraformName]+: { token_explicit_max_ttl: value } },
      },
    },
    '#withTokenMaxTtl':: { 'function': { help: |||
      The maximum lifetime of the generated token 
    ||| } },
    withTokenMaxTtl(value):: self {
      resource+: {
        vault_aws_auth_backend_role+: { [terraformName]+: { token_max_ttl: value } },
      },
    },
    '#withTokenNoDefaultPolicy':: { 'function': { help: |||
      If true, the 'default' policy will not automatically be added to generated tokens 
    ||| } },
    withTokenNoDefaultPolicy(value):: self {
      resource+: {
        vault_aws_auth_backend_role+: { [terraformName]+: { token_no_default_policy: value } },
      },
    },
    '#withTokenNumUses':: { 'function': { help: |||
      The maximum number of times a token may be used, a value of zero means unlimited 
    ||| } },
    withTokenNumUses(value):: self {
      resource+: {
        vault_aws_auth_backend_role+: { [terraformName]+: { token_num_uses: value } },
      },
    },
    '#withTokenPeriod':: { 'function': { help: |||
      Generated Token's Period 
    ||| } },
    withTokenPeriod(value):: self {
      resource+: {
        vault_aws_auth_backend_role+: { [terraformName]+: { token_period: value } },
      },
    },
    '#withTokenPolicies':: { 'function': { help: |||
      Generated Token's Policies 
    ||| } },
    withTokenPolicies(value):: self {
      resource+: {
        vault_aws_auth_backend_role+: { [terraformName]+: { token_policies: value } },
      },
    },
    '#withTokenTtl':: { 'function': { help: |||
      The initial ttl of the token to generate in seconds 
    ||| } },
    withTokenTtl(value):: self {
      resource+: {
        vault_aws_auth_backend_role+: { [terraformName]+: { token_ttl: value } },
      },
    },
    '#withTokenType':: { 'function': { help: |||
      The type of token to generate, service or batch 
    ||| } },
    withTokenType(value):: self {
      resource+: {
        vault_aws_auth_backend_role+: { [terraformName]+: { token_type: value } },
      },
    },
  },
}
