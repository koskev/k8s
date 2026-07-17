{
  local outerSelf = self,
  new(terraformName, role):: self.functions(terraformName) + {
    _type:: 'tf',
    ref():: outerSelf.ref(terraformName),
    resource+: {
      vault_aws_auth_backend_role+: { [terraformName]+: {
        role: role,
      } },
    },
  }
  ,
  functions(terraformName):: {
    withForEach(value):: self { resource+: {
      vault_aws_auth_backend_role+: { [terraformName]+: { for_each: value } },
    } },
    withDependsOn(value):: self { resource+: {
      vault_aws_auth_backend_role+: { [terraformName]+: { depends_on: value } },
    } },
    withCount(value):: self { resource+: {
      vault_aws_auth_backend_role+: { [terraformName]+: { count: value } },
    } },
    withLifecycle(value):: self { resource+: {
      vault_aws_auth_backend_role+: { [terraformName]+: { lifecycle: value } },
    } },
    withProvider(value):: self { resource+: {
      vault_aws_auth_backend_role+: { [terraformName]+: { provider: value } },
    } },
    withProviders(value):: self { resource+: {
      vault_aws_auth_backend_role+: { [terraformName]+: { providers: value } },
    } },
    addCustomData(name, value):: self { resource+: {
      vault_aws_auth_backend_role+: { [terraformName]+: { [name]: value } },
    } },
    '#withAliasMetadata':: { 'function': {
      help:
        |||
          The metadata to be tied to generated entity alias.
            This should be a list or map containing the metadata in key value pairs.
        |||,
    } },
    withAliasMetadata(value):: self { resource+: {
      vault_aws_auth_backend_role+: { [terraformName]+: { alias_metadata: value } },
    } },
    '#withAllowInstanceMigration':: { 'function': {
      help:
        |||
          When true, allows migration of the underlying instance where the client resides. Use with caution.
        |||,
    } },
    withAllowInstanceMigration(value):: self { resource+: {
      vault_aws_auth_backend_role+: { [terraformName]+: { allow_instance_migration: value } },
    } },
    '#withAuthType':: { 'function': {
      help:
        |||
          The auth type permitted for this role.
        |||,
    } },
    withAuthType(value):: self { resource+: {
      vault_aws_auth_backend_role+: { [terraformName]+: { auth_type: value } },
    } },
    '#withBackend':: { 'function': {
      help:
        |||
          Unique name of the auth backend to configure.
        |||,
    } },
    withBackend(value):: self { resource+: {
      vault_aws_auth_backend_role+: { [terraformName]+: { backend: value } },
    } },
    '#withBoundAccountIds':: { 'function': {
      help:
        |||
          Only EC2 instances with this account ID in their identity document will be permitted to log in.
        |||,
    } },
    withBoundAccountIds(value):: self { resource+: {
      vault_aws_auth_backend_role+: { [terraformName]+: { bound_account_ids: value } },
    } },
    '#withBoundAmiIds':: { 'function': {
      help:
        |||
          Only EC2 instances using this AMI ID will be permitted to log in.
        |||,
    } },
    withBoundAmiIds(value):: self { resource+: {
      vault_aws_auth_backend_role+: { [terraformName]+: { bound_ami_ids: value } },
    } },
    '#withBoundEc2InstanceIds':: { 'function': {
      help:
        |||
          Only EC2 instances that match this instance ID will be permitted to log in.
        |||,
    } },
    withBoundEc2InstanceIds(value):: self { resource+: {
      vault_aws_auth_backend_role+: { [terraformName]+: { bound_ec2_instance_ids: value } },
    } },
    '#withBoundIamInstanceProfileArns':: { 'function': {
      help:
        |||
          Only EC2 instances associated with an IAM instance profile ARN that matches this value will be permitted to log in.
        |||,
    } },
    withBoundIamInstanceProfileArns(value):: self { resource+: {
      vault_aws_auth_backend_role+: { [terraformName]+: { bound_iam_instance_profile_arns: value } },
    } },
    '#withBoundIamPrincipalArns':: { 'function': {
      help:
        |||
          The IAM principal that must be authenticated using the iam auth method.
        |||,
    } },
    withBoundIamPrincipalArns(value):: self { resource+: {
      vault_aws_auth_backend_role+: { [terraformName]+: { bound_iam_principal_arns: value } },
    } },
    '#withBoundIamRoleArns':: { 'function': {
      help:
        |||
          Only EC2 instances that match this IAM role ARN will be permitted to log in.
        |||,
    } },
    withBoundIamRoleArns(value):: self { resource+: {
      vault_aws_auth_backend_role+: { [terraformName]+: { bound_iam_role_arns: value } },
    } },
    '#withBoundRegions':: { 'function': {
      help:
        |||
          Only EC2 instances in this region will be permitted to log in.
        |||,
    } },
    withBoundRegions(value):: self { resource+: {
      vault_aws_auth_backend_role+: { [terraformName]+: { bound_regions: value } },
    } },
    '#withBoundSubnetIds':: { 'function': {
      help:
        |||
          Only EC2 instances associated with this subnet ID will be permitted to log in.
        |||,
    } },
    withBoundSubnetIds(value):: self { resource+: {
      vault_aws_auth_backend_role+: { [terraformName]+: { bound_subnet_ids: value } },
    } },
    '#withBoundVpcIds':: { 'function': {
      help:
        |||
          Only EC2 instances associated with this VPC ID will be permitted to log in.
        |||,
    } },
    withBoundVpcIds(value):: self { resource+: {
      vault_aws_auth_backend_role+: { [terraformName]+: { bound_vpc_ids: value } },
    } },
    '#withDisallowReauthentication':: { 'function': {
      help:
        |||
          When true, only allows a single token to be granted per instance ID.
        |||,
    } },
    withDisallowReauthentication(value):: self { resource+: {
      vault_aws_auth_backend_role+: { [terraformName]+: { disallow_reauthentication: value } },
    } },
    withId(value):: self { resource+: {
      vault_aws_auth_backend_role+: { [terraformName]+: { id: value } },
    } },
    '#withInferredAwsRegion':: { 'function': {
      help:
        |||
          The region to search for the inferred entities in.
        |||,
    } },
    withInferredAwsRegion(value):: self { resource+: {
      vault_aws_auth_backend_role+: { [terraformName]+: { inferred_aws_region: value } },
    } },
    '#withInferredEntityType':: { 'function': {
      help:
        |||
          The type of inferencing Vault should do.
        |||,
    } },
    withInferredEntityType(value):: self { resource+: {
      vault_aws_auth_backend_role+: { [terraformName]+: { inferred_entity_type: value } },
    } },
    '#withNamespace':: { 'function': {
      help:
        |||
          Target namespace. (requires Enterprise)
        |||,
    } },
    withNamespace(value):: self { resource+: {
      vault_aws_auth_backend_role+: { [terraformName]+: { namespace: value } },
    } },
    '#withResolveAwsUniqueIds':: { 'function': {
      help:
        |||
          Whether or not Vault should resolve the bound_iam_principal_arn to an AWS Unique ID. When true, deleting a principal and recreating it with the same name won't automatically grant the new principal the same roles in Vault that the old principal had.
        |||,
    } },
    withResolveAwsUniqueIds(value):: self { resource+: {
      vault_aws_auth_backend_role+: { [terraformName]+: { resolve_aws_unique_ids: value } },
    } },
    '#withRole':: { 'function': {
      help:
        |||
          Name of the role.
        |||,
    } },
    withRole(value):: self { resource+: {
      vault_aws_auth_backend_role+: { [terraformName]+: { role: value } },
    } },
    '#withRoleTag':: { 'function': {
      help:
        |||
          The key of the tag on EC2 instance to use for role tags.
        |||,
    } },
    withRoleTag(value):: self { resource+: {
      vault_aws_auth_backend_role+: { [terraformName]+: { role_tag: value } },
    } },
    '#withTokenBoundCidrs':: { 'function': {
      help:
        |||
          Specifies the blocks of IP addresses which are allowed to use the generated token
        |||,
    } },
    withTokenBoundCidrs(value):: self { resource+: {
      vault_aws_auth_backend_role+: { [terraformName]+: { token_bound_cidrs: value } },
    } },
    '#withTokenExplicitMaxTtl':: { 'function': {
      help:
        |||
          Generated Token's Explicit Maximum TTL in seconds
        |||,
    } },
    withTokenExplicitMaxTtl(value):: self { resource+: {
      vault_aws_auth_backend_role+: { [terraformName]+: { token_explicit_max_ttl: value } },
    } },
    '#withTokenMaxTtl':: { 'function': {
      help:
        |||
          The maximum lifetime of the generated token
        |||,
    } },
    withTokenMaxTtl(value):: self { resource+: {
      vault_aws_auth_backend_role+: { [terraformName]+: { token_max_ttl: value } },
    } },
    '#withTokenNoDefaultPolicy':: { 'function': {
      help:
        |||
          If true, the 'default' policy will not automatically be added to generated tokens
        |||,
    } },
    withTokenNoDefaultPolicy(value):: self { resource+: {
      vault_aws_auth_backend_role+: { [terraformName]+: { token_no_default_policy: value } },
    } },
    '#withTokenNumUses':: { 'function': {
      help:
        |||
          The maximum number of times a token may be used, a value of zero means unlimited
        |||,
    } },
    withTokenNumUses(value):: self { resource+: {
      vault_aws_auth_backend_role+: { [terraformName]+: { token_num_uses: value } },
    } },
    '#withTokenPeriod':: { 'function': {
      help:
        |||
          Generated Token's Period
        |||,
    } },
    withTokenPeriod(value):: self { resource+: {
      vault_aws_auth_backend_role+: { [terraformName]+: { token_period: value } },
    } },
    '#withTokenPolicies':: { 'function': {
      help:
        |||
          Generated Token's Policies
        |||,
    } },
    withTokenPolicies(value):: self { resource+: {
      vault_aws_auth_backend_role+: { [terraformName]+: { token_policies: value } },
    } },
    '#withTokenTtl':: { 'function': {
      help:
        |||
          The initial ttl of the token to generate in seconds
        |||,
    } },
    withTokenTtl(value):: self { resource+: {
      vault_aws_auth_backend_role+: { [terraformName]+: { token_ttl: value } },
    } },
    '#withTokenType':: { 'function': {
      help:
        |||
          The type of token to generate, service or batch
        |||,
    } },
    withTokenType(value):: self { resource+: {
      vault_aws_auth_backend_role+: { [terraformName]+: { token_type: value } },
    } },

  }
  ,
  ref(terraformName):: {
    local refSelf = self,
    plain(suffix=''):: '${ vault_aws_auth_backend_role.%s%s }' % [terraformName, suffix],
    fields:: {
      '#alias_metadata':: { 'function': {
        help:
          |||
            The metadata to be tied to generated entity alias.
              This should be a list or map containing the metadata in key value pairs.
          |||,
      } },
      alias_metadata(suffix=''):: refSelf.plain('.alias_metadata%s' % suffix),
      '#allow_instance_migration':: { 'function': {
        help:
          |||
            When true, allows migration of the underlying instance where the client resides. Use with caution.
          |||,
      } },
      allow_instance_migration(suffix=''):: refSelf.plain('.allow_instance_migration%s' % suffix),
      '#auth_type':: { 'function': {
        help:
          |||
            The auth type permitted for this role.
          |||,
      } },
      auth_type(suffix=''):: refSelf.plain('.auth_type%s' % suffix),
      '#backend':: { 'function': {
        help:
          |||
            Unique name of the auth backend to configure.
          |||,
      } },
      backend(suffix=''):: refSelf.plain('.backend%s' % suffix),
      '#bound_account_ids':: { 'function': {
        help:
          |||
            Only EC2 instances with this account ID in their identity document will be permitted to log in.
          |||,
      } },
      bound_account_ids(suffix=''):: refSelf.plain('.bound_account_ids%s' % suffix),
      '#bound_ami_ids':: { 'function': {
        help:
          |||
            Only EC2 instances using this AMI ID will be permitted to log in.
          |||,
      } },
      bound_ami_ids(suffix=''):: refSelf.plain('.bound_ami_ids%s' % suffix),
      '#bound_ec2_instance_ids':: { 'function': {
        help:
          |||
            Only EC2 instances that match this instance ID will be permitted to log in.
          |||,
      } },
      bound_ec2_instance_ids(suffix=''):: refSelf.plain('.bound_ec2_instance_ids%s' % suffix),
      '#bound_iam_instance_profile_arns':: { 'function': {
        help:
          |||
            Only EC2 instances associated with an IAM instance profile ARN that matches this value will be permitted to log in.
          |||,
      } },
      bound_iam_instance_profile_arns(suffix=''):: refSelf.plain('.bound_iam_instance_profile_arns%s' % suffix),
      '#bound_iam_principal_arns':: { 'function': {
        help:
          |||
            The IAM principal that must be authenticated using the iam auth method.
          |||,
      } },
      bound_iam_principal_arns(suffix=''):: refSelf.plain('.bound_iam_principal_arns%s' % suffix),
      '#bound_iam_role_arns':: { 'function': {
        help:
          |||
            Only EC2 instances that match this IAM role ARN will be permitted to log in.
          |||,
      } },
      bound_iam_role_arns(suffix=''):: refSelf.plain('.bound_iam_role_arns%s' % suffix),
      '#bound_regions':: { 'function': {
        help:
          |||
            Only EC2 instances in this region will be permitted to log in.
          |||,
      } },
      bound_regions(suffix=''):: refSelf.plain('.bound_regions%s' % suffix),
      '#bound_subnet_ids':: { 'function': {
        help:
          |||
            Only EC2 instances associated with this subnet ID will be permitted to log in.
          |||,
      } },
      bound_subnet_ids(suffix=''):: refSelf.plain('.bound_subnet_ids%s' % suffix),
      '#bound_vpc_ids':: { 'function': {
        help:
          |||
            Only EC2 instances associated with this VPC ID will be permitted to log in.
          |||,
      } },
      bound_vpc_ids(suffix=''):: refSelf.plain('.bound_vpc_ids%s' % suffix),
      '#disallow_reauthentication':: { 'function': {
        help:
          |||
            When true, only allows a single token to be granted per instance ID.
          |||,
      } },
      disallow_reauthentication(suffix=''):: refSelf.plain('.disallow_reauthentication%s' % suffix),
      id(suffix=''):: refSelf.plain('.id%s' % suffix),
      '#inferred_aws_region':: { 'function': {
        help:
          |||
            The region to search for the inferred entities in.
          |||,
      } },
      inferred_aws_region(suffix=''):: refSelf.plain('.inferred_aws_region%s' % suffix),
      '#inferred_entity_type':: { 'function': {
        help:
          |||
            The type of inferencing Vault should do.
          |||,
      } },
      inferred_entity_type(suffix=''):: refSelf.plain('.inferred_entity_type%s' % suffix),
      '#namespace':: { 'function': {
        help:
          |||
            Target namespace. (requires Enterprise)
          |||,
      } },
      namespace(suffix=''):: refSelf.plain('.namespace%s' % suffix),
      '#resolve_aws_unique_ids':: { 'function': {
        help:
          |||
            Whether or not Vault should resolve the bound_iam_principal_arn to an AWS Unique ID. When true, deleting a principal and recreating it with the same name won't automatically grant the new principal the same roles in Vault that the old principal had.
          |||,
      } },
      resolve_aws_unique_ids(suffix=''):: refSelf.plain('.resolve_aws_unique_ids%s' % suffix),
      '#role':: { 'function': {
        help:
          |||
            Name of the role.
          |||,
      } },
      role(suffix=''):: refSelf.plain('.role%s' % suffix),
      '#role_id':: { 'function': {
        help:
          |||
            The Vault generated role ID.
          |||,
      } },
      role_id(suffix=''):: refSelf.plain('.role_id%s' % suffix),
      '#role_tag':: { 'function': {
        help:
          |||
            The key of the tag on EC2 instance to use for role tags.
          |||,
      } },
      role_tag(suffix=''):: refSelf.plain('.role_tag%s' % suffix),
      '#token_bound_cidrs':: { 'function': {
        help:
          |||
            Specifies the blocks of IP addresses which are allowed to use the generated token
          |||,
      } },
      token_bound_cidrs(suffix=''):: refSelf.plain('.token_bound_cidrs%s' % suffix),
      '#token_explicit_max_ttl':: { 'function': {
        help:
          |||
            Generated Token's Explicit Maximum TTL in seconds
          |||,
      } },
      token_explicit_max_ttl(suffix=''):: refSelf.plain('.token_explicit_max_ttl%s' % suffix),
      '#token_max_ttl':: { 'function': {
        help:
          |||
            The maximum lifetime of the generated token
          |||,
      } },
      token_max_ttl(suffix=''):: refSelf.plain('.token_max_ttl%s' % suffix),
      '#token_no_default_policy':: { 'function': {
        help:
          |||
            If true, the 'default' policy will not automatically be added to generated tokens
          |||,
      } },
      token_no_default_policy(suffix=''):: refSelf.plain('.token_no_default_policy%s' % suffix),
      '#token_num_uses':: { 'function': {
        help:
          |||
            The maximum number of times a token may be used, a value of zero means unlimited
          |||,
      } },
      token_num_uses(suffix=''):: refSelf.plain('.token_num_uses%s' % suffix),
      '#token_period':: { 'function': {
        help:
          |||
            Generated Token's Period
          |||,
      } },
      token_period(suffix=''):: refSelf.plain('.token_period%s' % suffix),
      '#token_policies':: { 'function': {
        help:
          |||
            Generated Token's Policies
          |||,
      } },
      token_policies(suffix=''):: refSelf.plain('.token_policies%s' % suffix),
      '#token_ttl':: { 'function': {
        help:
          |||
            The initial ttl of the token to generate in seconds
          |||,
      } },
      token_ttl(suffix=''):: refSelf.plain('.token_ttl%s' % suffix),
      '#token_type':: { 'function': {
        help:
          |||
            The type of token to generate, service or batch
          |||,
      } },
      token_type(suffix=''):: refSelf.plain('.token_type%s' % suffix),

    },

  },

}
