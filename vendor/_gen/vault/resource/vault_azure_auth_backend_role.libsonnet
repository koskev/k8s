{
  local outerSelf = self,
  new(terraformName, role):: self.functions(terraformName) + {
    _type:: 'tf',
    ref():: outerSelf.ref(terraformName),
    resource+: {
      vault_azure_auth_backend_role+: { [terraformName]+: {
        role: role,
      } },
    },
  }
  ,
  functions(terraformName):: {
    withForEach(value):: self { resource+: {
      vault_azure_auth_backend_role+: { [terraformName]+: { for_each: value } },
    } },
    withDependsOn(value):: self { resource+: {
      vault_azure_auth_backend_role+: { [terraformName]+: { depends_on: value } },
    } },
    withCount(value):: self { resource+: {
      vault_azure_auth_backend_role+: { [terraformName]+: { count: value } },
    } },
    withLifecycle(value):: self { resource+: {
      vault_azure_auth_backend_role+: { [terraformName]+: { lifecycle: value } },
    } },
    withProvider(value):: self { resource+: {
      vault_azure_auth_backend_role+: { [terraformName]+: { provider: value } },
    } },
    withProviders(value):: self { resource+: {
      vault_azure_auth_backend_role+: { [terraformName]+: { providers: value } },
    } },
    addCustomData(name, value):: self { resource+: {
      vault_azure_auth_backend_role+: { [terraformName]+: { [name]: value } },
    } },
    '#withAliasMetadata':: { 'function': {
      help:
        |||
          The metadata to be tied to generated entity alias.
            This should be a list or map containing the metadata in key value pairs.
        |||,
    } },
    withAliasMetadata(value):: self { resource+: {
      vault_azure_auth_backend_role+: { [terraformName]+: { alias_metadata: value } },
    } },
    '#withBackend':: { 'function': {
      help:
        |||
          Unique name of the auth backend to configure.
        |||,
    } },
    withBackend(value):: self { resource+: {
      vault_azure_auth_backend_role+: { [terraformName]+: { backend: value } },
    } },
    '#withBoundGroupIds':: { 'function': {
      help:
        |||
          The list of group ids that login is restricted to.
        |||,
    } },
    withBoundGroupIds(value):: self { resource+: {
      vault_azure_auth_backend_role+: { [terraformName]+: { bound_group_ids: value } },
    } },
    '#withBoundLocations':: { 'function': {
      help:
        |||
          The list of locations that login is restricted to.
        |||,
    } },
    withBoundLocations(value):: self { resource+: {
      vault_azure_auth_backend_role+: { [terraformName]+: { bound_locations: value } },
    } },
    '#withBoundResourceGroups':: { 'function': {
      help:
        |||
          The list of resource groups that login is restricted to.
        |||,
    } },
    withBoundResourceGroups(value):: self { resource+: {
      vault_azure_auth_backend_role+: { [terraformName]+: { bound_resource_groups: value } },
    } },
    '#withBoundScaleSets':: { 'function': {
      help:
        |||
          The list of scale set names that the login is restricted to.
        |||,
    } },
    withBoundScaleSets(value):: self { resource+: {
      vault_azure_auth_backend_role+: { [terraformName]+: { bound_scale_sets: value } },
    } },
    '#withBoundServicePrincipalIds':: { 'function': {
      help:
        |||
          The list of Service Principal IDs that login is restricted to.
        |||,
    } },
    withBoundServicePrincipalIds(value):: self { resource+: {
      vault_azure_auth_backend_role+: { [terraformName]+: { bound_service_principal_ids: value } },
    } },
    '#withBoundSubscriptionIds':: { 'function': {
      help:
        |||
          The list of subscription IDs that login is restricted to.
        |||,
    } },
    withBoundSubscriptionIds(value):: self { resource+: {
      vault_azure_auth_backend_role+: { [terraformName]+: { bound_subscription_ids: value } },
    } },
    withId(value):: self { resource+: {
      vault_azure_auth_backend_role+: { [terraformName]+: { id: value } },
    } },
    '#withNamespace':: { 'function': {
      help:
        |||
          Target namespace. (requires Enterprise)
        |||,
    } },
    withNamespace(value):: self { resource+: {
      vault_azure_auth_backend_role+: { [terraformName]+: { namespace: value } },
    } },
    '#withRole':: { 'function': {
      help:
        |||
          Name of the role.
        |||,
    } },
    withRole(value):: self { resource+: {
      vault_azure_auth_backend_role+: { [terraformName]+: { role: value } },
    } },
    '#withTokenBoundCidrs':: { 'function': {
      help:
        |||
          Specifies the blocks of IP addresses which are allowed to use the generated token
        |||,
    } },
    withTokenBoundCidrs(value):: self { resource+: {
      vault_azure_auth_backend_role+: { [terraformName]+: { token_bound_cidrs: value } },
    } },
    '#withTokenExplicitMaxTtl':: { 'function': {
      help:
        |||
          Generated Token's Explicit Maximum TTL in seconds
        |||,
    } },
    withTokenExplicitMaxTtl(value):: self { resource+: {
      vault_azure_auth_backend_role+: { [terraformName]+: { token_explicit_max_ttl: value } },
    } },
    '#withTokenMaxTtl':: { 'function': {
      help:
        |||
          The maximum lifetime of the generated token
        |||,
    } },
    withTokenMaxTtl(value):: self { resource+: {
      vault_azure_auth_backend_role+: { [terraformName]+: { token_max_ttl: value } },
    } },
    '#withTokenNoDefaultPolicy':: { 'function': {
      help:
        |||
          If true, the 'default' policy will not automatically be added to generated tokens
        |||,
    } },
    withTokenNoDefaultPolicy(value):: self { resource+: {
      vault_azure_auth_backend_role+: { [terraformName]+: { token_no_default_policy: value } },
    } },
    '#withTokenNumUses':: { 'function': {
      help:
        |||
          The maximum number of times a token may be used, a value of zero means unlimited
        |||,
    } },
    withTokenNumUses(value):: self { resource+: {
      vault_azure_auth_backend_role+: { [terraformName]+: { token_num_uses: value } },
    } },
    '#withTokenPeriod':: { 'function': {
      help:
        |||
          Generated Token's Period
        |||,
    } },
    withTokenPeriod(value):: self { resource+: {
      vault_azure_auth_backend_role+: { [terraformName]+: { token_period: value } },
    } },
    '#withTokenPolicies':: { 'function': {
      help:
        |||
          Generated Token's Policies
        |||,
    } },
    withTokenPolicies(value):: self { resource+: {
      vault_azure_auth_backend_role+: { [terraformName]+: { token_policies: value } },
    } },
    '#withTokenTtl':: { 'function': {
      help:
        |||
          The initial ttl of the token to generate in seconds
        |||,
    } },
    withTokenTtl(value):: self { resource+: {
      vault_azure_auth_backend_role+: { [terraformName]+: { token_ttl: value } },
    } },
    '#withTokenType':: { 'function': {
      help:
        |||
          The type of token to generate, service or batch
        |||,
    } },
    withTokenType(value):: self { resource+: {
      vault_azure_auth_backend_role+: { [terraformName]+: { token_type: value } },
    } },

  }
  ,
  ref(terraformName):: {
    local refSelf = self,
    plain(suffix=''):: '${ vault_azure_auth_backend_role.%s%s }' % [terraformName, suffix],
    fields:: {
      '#alias_metadata':: { 'function': {
        help:
          |||
            The metadata to be tied to generated entity alias.
              This should be a list or map containing the metadata in key value pairs.
          |||,
      } },
      alias_metadata(suffix=''):: refSelf.plain('.alias_metadata%s' % suffix),
      '#backend':: { 'function': {
        help:
          |||
            Unique name of the auth backend to configure.
          |||,
      } },
      backend(suffix=''):: refSelf.plain('.backend%s' % suffix),
      '#bound_group_ids':: { 'function': {
        help:
          |||
            The list of group ids that login is restricted to.
          |||,
      } },
      bound_group_ids(suffix=''):: refSelf.plain('.bound_group_ids%s' % suffix),
      '#bound_locations':: { 'function': {
        help:
          |||
            The list of locations that login is restricted to.
          |||,
      } },
      bound_locations(suffix=''):: refSelf.plain('.bound_locations%s' % suffix),
      '#bound_resource_groups':: { 'function': {
        help:
          |||
            The list of resource groups that login is restricted to.
          |||,
      } },
      bound_resource_groups(suffix=''):: refSelf.plain('.bound_resource_groups%s' % suffix),
      '#bound_scale_sets':: { 'function': {
        help:
          |||
            The list of scale set names that the login is restricted to.
          |||,
      } },
      bound_scale_sets(suffix=''):: refSelf.plain('.bound_scale_sets%s' % suffix),
      '#bound_service_principal_ids':: { 'function': {
        help:
          |||
            The list of Service Principal IDs that login is restricted to.
          |||,
      } },
      bound_service_principal_ids(suffix=''):: refSelf.plain('.bound_service_principal_ids%s' % suffix),
      '#bound_subscription_ids':: { 'function': {
        help:
          |||
            The list of subscription IDs that login is restricted to.
          |||,
      } },
      bound_subscription_ids(suffix=''):: refSelf.plain('.bound_subscription_ids%s' % suffix),
      id(suffix=''):: refSelf.plain('.id%s' % suffix),
      '#namespace':: { 'function': {
        help:
          |||
            Target namespace. (requires Enterprise)
          |||,
      } },
      namespace(suffix=''):: refSelf.plain('.namespace%s' % suffix),
      '#role':: { 'function': {
        help:
          |||
            Name of the role.
          |||,
      } },
      role(suffix=''):: refSelf.plain('.role%s' % suffix),
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
