{
  local outerSelf = self,
  new(terraformName, role):: self.functions(terraformName) {
    ref():: outerSelf.ref(terraformName),
    _type:: 'tf',
    resource+: {
      vault_aws_auth_backend_role_tag+: {
        [terraformName]+: {
          role: role,
        },
      },
    },
  },
  functions(terraformName):: {
    withForEach(value):: self {
      resource+: {
        vault_aws_auth_backend_role_tag+: { [terraformName]+: { for_each: value } },
      },
    },
    withDependsOn(value):: self {
      resource+: {
        vault_aws_auth_backend_role_tag+: { [terraformName]+: { depends_on: value } },
      },
    },
    withCount(value):: self {
      resource+: {
        vault_aws_auth_backend_role_tag+: { [terraformName]+: { count: value } },
      },
    },
    withLifecycle(value):: self {
      resource+: {
        vault_aws_auth_backend_role_tag+: { [terraformName]+: { lifecycle: value } },
      },
    },
    withProvider(value):: self {
      resource+: {
        vault_aws_auth_backend_role_tag+: { [terraformName]+: { provider: value } },
      },
    },
    withProviders(value):: self {
      resource+: {
        vault_aws_auth_backend_role_tag+: { [terraformName]+: { providers: value } },
      },
    },
    '#allow_instance_migration':: { 'function': { help: |||
      Allows migration of the underlying instance where the client resides.
    ||| } },
    withAllowInstanceMigration(value):: self {
      resource+: {
        vault_aws_auth_backend_role_tag+: { [terraformName]+: { allow_instance_migration: value } },
      },
    },
    '#backend':: { 'function': { help: |||
      AWS auth backend to read tags from.
    ||| } },
    withBackend(value):: self {
      resource+: {
        vault_aws_auth_backend_role_tag+: { [terraformName]+: { backend: value } },
      },
    },
    '#disallow_reauthentication':: { 'function': { help: |||
      Only allow a single token to be granted per instance ID.
    ||| } },
    withDisallowReauthentication(value):: self {
      resource+: {
        vault_aws_auth_backend_role_tag+: { [terraformName]+: { disallow_reauthentication: value } },
      },
    },
    withId(value):: self {
      resource+: {
        vault_aws_auth_backend_role_tag+: { [terraformName]+: { id: value } },
      },
    },
    '#instance_id':: { 'function': { help: |||
      Instance ID for which this tag is intended. The created tag can only be used by the instance with the given ID.
    ||| } },
    withInstanceId(value):: self {
      resource+: {
        vault_aws_auth_backend_role_tag+: { [terraformName]+: { instance_id: value } },
      },
    },
    '#max_ttl':: { 'function': { help: |||
      The maximum allowed lifetime of tokens issued using this role.
    ||| } },
    withMaxTtl(value):: self {
      resource+: {
        vault_aws_auth_backend_role_tag+: { [terraformName]+: { max_ttl: value } },
      },
    },
    '#namespace':: { 'function': { help: |||
      Target namespace. (requires Enterprise)
    ||| } },
    withNamespace(value):: self {
      resource+: {
        vault_aws_auth_backend_role_tag+: { [terraformName]+: { namespace: value } },
      },
    },
    '#policies':: { 'function': { help: |||
      Policies to be associated with the tag.
    ||| } },
    withPolicies(value):: self {
      resource+: {
        vault_aws_auth_backend_role_tag+: { [terraformName]+: { policies: value } },
      },
    },
    '#role':: { 'function': { help: |||
      Name of the role.
    ||| } },
    withRole(value):: self {
      resource+: {
        vault_aws_auth_backend_role_tag+: { [terraformName]+: { role: value } },
      },
    },
  },
  ref(terraformName):: {
    local refSelf = self,
    plain(suffix=''):: '${ vault_aws_auth_backend_role_tag.%s%s }' % [terraformName, suffix],
    fields:: {
      '#allow_instance_migration':: { 'function': { help: |||
        Allows migration of the underlying instance where the client resides.
      ||| } },
      allow_instance_migration(suffix=''):: refSelf.plain('.allow_instance_migration%s' % suffix),
      '#backend':: { 'function': { help: |||
        AWS auth backend to read tags from.
      ||| } },
      backend(suffix=''):: refSelf.plain('.backend%s' % suffix),
      '#disallow_reauthentication':: { 'function': { help: |||
        Only allow a single token to be granted per instance ID.
      ||| } },
      disallow_reauthentication(suffix=''):: refSelf.plain('.disallow_reauthentication%s' % suffix),
      id(suffix=''):: refSelf.plain('.id%s' % suffix),
      '#instance_id':: { 'function': { help: |||
        Instance ID for which this tag is intended. The created tag can only be used by the instance with the given ID.
      ||| } },
      instance_id(suffix=''):: refSelf.plain('.instance_id%s' % suffix),
      '#max_ttl':: { 'function': { help: |||
        The maximum allowed lifetime of tokens issued using this role.
      ||| } },
      max_ttl(suffix=''):: refSelf.plain('.max_ttl%s' % suffix),
      '#namespace':: { 'function': { help: |||
        Target namespace. (requires Enterprise)
      ||| } },
      namespace(suffix=''):: refSelf.plain('.namespace%s' % suffix),
      '#policies':: { 'function': { help: |||
        Policies to be associated with the tag.
      ||| } },
      policies(suffix=''):: refSelf.plain('.policies%s' % suffix),
      '#role':: { 'function': { help: |||
        Name of the role.
      ||| } },
      role(suffix=''):: refSelf.plain('.role%s' % suffix),
      tag_key(suffix=''):: refSelf.plain('.tag_key%s' % suffix),
      tag_value(suffix=''):: refSelf.plain('.tag_value%s' % suffix),
    },
  },
}
