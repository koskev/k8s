{
  new(terraformName, role):: {
    _type:: 'tf',
    resource+: {
      vault_aws_auth_backend_role+: { [terraformName]+: {
        role: role,
      } },
    },
    withBoundRegions(value):: self {
      resource+: {
        vault_aws_auth_backend_role+: { [terraformName]+: { bound_regions: value } },
      },
    },
    withInferredEntityType(value):: self {
      resource+: {
        vault_aws_auth_backend_role+: { [terraformName]+: { inferred_entity_type: value } },
      },
    },
    withAliasMetadata(value):: self {
      resource+: {
        vault_aws_auth_backend_role+: { [terraformName]+: { alias_metadata: value } },
      },
    },
    withRoleId(value):: self {
      resource+: {
        vault_aws_auth_backend_role+: { [terraformName]+: { role_id: value } },
      },
    },
    withNamespace(value):: self {
      resource+: {
        vault_aws_auth_backend_role+: { [terraformName]+: { namespace: value } },
      },
    },
    withTokenPeriod(value):: self {
      resource+: {
        vault_aws_auth_backend_role+: { [terraformName]+: { token_period: value } },
      },
    },
    withTokenType(value):: self {
      resource+: {
        vault_aws_auth_backend_role+: { [terraformName]+: { token_type: value } },
      },
    },
    withResolveAwsUniqueIds(value):: self {
      resource+: {
        vault_aws_auth_backend_role+: { [terraformName]+: { resolve_aws_unique_ids: value } },
      },
    },
    withBoundIamRoleArns(value):: self {
      resource+: {
        vault_aws_auth_backend_role+: { [terraformName]+: { bound_iam_role_arns: value } },
      },
    },
    withTokenPolicies(value):: self {
      resource+: {
        vault_aws_auth_backend_role+: { [terraformName]+: { token_policies: value } },
      },
    },
    withDisallowReauthentication(value):: self {
      resource+: {
        vault_aws_auth_backend_role+: { [terraformName]+: { disallow_reauthentication: value } },
      },
    },
    withBoundIamInstanceProfileArns(value):: self {
      resource+: {
        vault_aws_auth_backend_role+: { [terraformName]+: { bound_iam_instance_profile_arns: value } },
      },
    },
    withAuthType(value):: self {
      resource+: {
        vault_aws_auth_backend_role+: { [terraformName]+: { auth_type: value } },
      },
    },
    withBoundAccountIds(value):: self {
      resource+: {
        vault_aws_auth_backend_role+: { [terraformName]+: { bound_account_ids: value } },
      },
    },
    withTokenMaxTtl(value):: self {
      resource+: {
        vault_aws_auth_backend_role+: { [terraformName]+: { token_max_ttl: value } },
      },
    },
    withBoundSubnetIds(value):: self {
      resource+: {
        vault_aws_auth_backend_role+: { [terraformName]+: { bound_subnet_ids: value } },
      },
    },
    withInferredAwsRegion(value):: self {
      resource+: {
        vault_aws_auth_backend_role+: { [terraformName]+: { inferred_aws_region: value } },
      },
    },
    withBoundIamPrincipalArns(value):: self {
      resource+: {
        vault_aws_auth_backend_role+: { [terraformName]+: { bound_iam_principal_arns: value } },
      },
    },
    withRole(value):: self {
      resource+: {
        vault_aws_auth_backend_role+: { [terraformName]+: { role: value } },
      },
    },
    withTokenTtl(value):: self {
      resource+: {
        vault_aws_auth_backend_role+: { [terraformName]+: { token_ttl: value } },
      },
    },
    withId(value):: self {
      resource+: {
        vault_aws_auth_backend_role+: { [terraformName]+: { id: value } },
      },
    },
    withBoundVpcIds(value):: self {
      resource+: {
        vault_aws_auth_backend_role+: { [terraformName]+: { bound_vpc_ids: value } },
      },
    },
    withBackend(value):: self {
      resource+: {
        vault_aws_auth_backend_role+: { [terraformName]+: { backend: value } },
      },
    },
    withRoleTag(value):: self {
      resource+: {
        vault_aws_auth_backend_role+: { [terraformName]+: { role_tag: value } },
      },
    },
    withTokenNumUses(value):: self {
      resource+: {
        vault_aws_auth_backend_role+: { [terraformName]+: { token_num_uses: value } },
      },
    },
    withTokenNoDefaultPolicy(value):: self {
      resource+: {
        vault_aws_auth_backend_role+: { [terraformName]+: { token_no_default_policy: value } },
      },
    },
    withAllowInstanceMigration(value):: self {
      resource+: {
        vault_aws_auth_backend_role+: { [terraformName]+: { allow_instance_migration: value } },
      },
    },
    withBoundEc2InstanceIds(value):: self {
      resource+: {
        vault_aws_auth_backend_role+: { [terraformName]+: { bound_ec2_instance_ids: value } },
      },
    },
    withBoundAmiIds(value):: self {
      resource+: {
        vault_aws_auth_backend_role+: { [terraformName]+: { bound_ami_ids: value } },
      },
    },
    withTokenExplicitMaxTtl(value):: self {
      resource+: {
        vault_aws_auth_backend_role+: { [terraformName]+: { token_explicit_max_ttl: value } },
      },
    },
    withTokenBoundCidrs(value):: self {
      resource+: {
        vault_aws_auth_backend_role+: { [terraformName]+: { token_bound_cidrs: value } },
      },
    },
  },
}
