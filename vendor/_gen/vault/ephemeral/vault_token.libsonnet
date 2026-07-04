{
  '#new':: { 'function': { help: |||
    Provides an ephemeral resource to create Vault tokens with automatic revocation.
  ||| } },
  local outerSelf = self,
  new(terraformName):: self.functions(terraformName) {
    ref():: outerSelf.ref(terraformName),
    _type:: 'tf',
    ephemeral+: {
      vault_token+: {
        [terraformName]+: {
        },
      },
    },
  },
  functions(terraformName):: {
    withForEach(value):: self {
      ephemeral+: {
        vault_token+: { [terraformName]+: { for_each: value } },
      },
    },
    withDependsOn(value):: self {
      ephemeral+: {
        vault_token+: { [terraformName]+: { depends_on: value } },
      },
    },
    withCount(value):: self {
      ephemeral+: {
        vault_token+: { [terraformName]+: { count: value } },
      },
    },
    withLifecycle(value):: self {
      ephemeral+: {
        vault_token+: { [terraformName]+: { lifecycle: value } },
      },
    },
    withProvider(value):: self {
      ephemeral+: {
        vault_token+: { [terraformName]+: { provider: value } },
      },
    },
    withProviders(value):: self {
      ephemeral+: {
        vault_token+: { [terraformName]+: { providers: value } },
      },
    },
    '#display_name':: { 'function': { help: |||
      The display name of the token.
    ||| } },
    withDisplayName(value):: self {
      ephemeral+: {
        vault_token+: { [terraformName]+: { display_name: value } },
      },
    },
    '#entity_alias':: { 'function': { help: |||
      Name of the entity alias to associate with during token creation.
    ||| } },
    withEntityAlias(value):: self {
      ephemeral+: {
        vault_token+: { [terraformName]+: { entity_alias: value } },
      },
    },
    '#explicit_max_ttl':: { 'function': { help: |||
      The explicit max TTL of the token.
    ||| } },
    withExplicitMaxTtl(value):: self {
      ephemeral+: {
        vault_token+: { [terraformName]+: { explicit_max_ttl: value } },
      },
    },
    '#id':: { 'function': { help: |||
      The ID of the client token. This is an input field, not a resource identifier. Can only be specified by a root token. The ID provided may not contain a '.' character and should not start with the 's.' prefix.
    ||| } },
    withId(value):: self {
      ephemeral+: {
        vault_token+: { [terraformName]+: { id: value } },
      },
    },
    '#metadata':: { 'function': { help: |||
      Metadata to be associated with the token.
    ||| } },
    withMetadata(value):: self {
      ephemeral+: {
        vault_token+: { [terraformName]+: { metadata: value } },
      },
    },
    '#mount_id':: { 'function': { help: |||
      Terraform ID of the mount resource. Used to defer the provisioning of the ephemeral resource till the apply stage.
    ||| } },
    withMountId(value):: self {
      ephemeral+: {
        vault_token+: { [terraformName]+: { mount_id: value } },
      },
    },
    '#namespace':: { 'function': { help: |||
      Target namespace. (requires Enterprise)
    ||| } },
    withNamespace(value):: self {
      ephemeral+: {
        vault_token+: { [terraformName]+: { namespace: value } },
      },
    },
    '#no_default_policy':: { 'function': { help: |||
      Flag to disable the default policy.
    ||| } },
    withNoDefaultPolicy(value):: self {
      ephemeral+: {
        vault_token+: { [terraformName]+: { no_default_policy: value } },
      },
    },
    '#no_parent':: { 'function': { help: |||
      Flag to create a token without parent.
    ||| } },
    withNoParent(value):: self {
      ephemeral+: {
        vault_token+: { [terraformName]+: { no_parent: value } },
      },
    },
    '#num_uses':: { 'function': { help: |||
      The number of allowed uses of the token.
    ||| } },
    withNumUses(value):: self {
      ephemeral+: {
        vault_token+: { [terraformName]+: { num_uses: value } },
      },
    },
    '#period':: { 'function': { help: |||
      The period of the token for periodic tokens.
    ||| } },
    withPeriod(value):: self {
      ephemeral+: {
        vault_token+: { [terraformName]+: { period: value } },
      },
    },
    '#policies':: { 'function': { help: |||
      List of policies to attach to the token.
    ||| } },
    withPolicies(value):: self {
      ephemeral+: {
        vault_token+: { [terraformName]+: { policies: value } },
      },
    },
    '#renewable':: { 'function': { help: |||
      Flag to allow the token to be renewed.
    ||| } },
    withRenewable(value):: self {
      ephemeral+: {
        vault_token+: { [terraformName]+: { renewable: value } },
      },
    },
    '#role_name':: { 'function': { help: |||
      The token role name.
    ||| } },
    withRoleName(value):: self {
      ephemeral+: {
        vault_token+: { [terraformName]+: { role_name: value } },
      },
    },
    '#ttl':: { 'function': { help: |||
      The TTL period of the token.
    ||| } },
    withTtl(value):: self {
      ephemeral+: {
        vault_token+: { [terraformName]+: { ttl: value } },
      },
    },
    '#type':: { 'function': { help: |||
      The token type. Can be 'batch' or 'service'.
    ||| } },
    withType(value):: self {
      ephemeral+: {
        vault_token+: { [terraformName]+: { type: value } },
      },
    },
    '#wrapping_ttl':: { 'function': { help: |||
      The TTL period of the wrapped token.
    ||| } },
    withWrappingTtl(value):: self {
      ephemeral+: {
        vault_token+: { [terraformName]+: { wrapping_ttl: value } },
      },
    },
  },
  ref(terraformName):: {
    local refSelf = self,
    plain(suffix=''):: '${ vault_token.%s%s }' % [terraformName, suffix],
    fields:: {
      '#accessor':: { 'function': { help: |||
        The token accessor.
      ||| } },
      accessor(suffix=''):: refSelf.plain('.accessor%s' % suffix),
      '#client_token':: { 'function': { help: |||
        The client token value.
      ||| } },
      client_token(suffix=''):: refSelf.plain('.client_token%s' % suffix),
      '#display_name':: { 'function': { help: |||
        The display name of the token.
      ||| } },
      display_name(suffix=''):: refSelf.plain('.display_name%s' % suffix),
      '#entity_alias':: { 'function': { help: |||
        Name of the entity alias to associate with during token creation.
      ||| } },
      entity_alias(suffix=''):: refSelf.plain('.entity_alias%s' % suffix),
      '#entity_id':: { 'function': { help: |||
        The entity ID associated with the token.
      ||| } },
      entity_id(suffix=''):: refSelf.plain('.entity_id%s' % suffix),
      '#explicit_max_ttl':: { 'function': { help: |||
        The explicit max TTL of the token.
      ||| } },
      explicit_max_ttl(suffix=''):: refSelf.plain('.explicit_max_ttl%s' % suffix),
      '#id':: { 'function': { help: |||
        The ID of the client token. This is an input field, not a resource identifier. Can only be specified by a root token. The ID provided may not contain a '.' character and should not start with the 's.' prefix.
      ||| } },
      id(suffix=''):: refSelf.plain('.id%s' % suffix),
      '#lease_duration':: { 'function': { help: |||
        The token lease duration.
      ||| } },
      lease_duration(suffix=''):: refSelf.plain('.lease_duration%s' % suffix),
      '#lease_id':: { 'function': { help: |||
        The lease ID associated with the token.
      ||| } },
      lease_id(suffix=''):: refSelf.plain('.lease_id%s' % suffix),
      '#metadata':: { 'function': { help: |||
        Metadata to be associated with the token.
      ||| } },
      metadata(suffix=''):: refSelf.plain('.metadata%s' % suffix),
      '#mount_id':: { 'function': { help: |||
        Terraform ID of the mount resource. Used to defer the provisioning of the ephemeral resource till the apply stage.
      ||| } },
      mount_id(suffix=''):: refSelf.plain('.mount_id%s' % suffix),
      '#namespace':: { 'function': { help: |||
        Target namespace. (requires Enterprise)
      ||| } },
      namespace(suffix=''):: refSelf.plain('.namespace%s' % suffix),
      '#no_default_policy':: { 'function': { help: |||
        Flag to disable the default policy.
      ||| } },
      no_default_policy(suffix=''):: refSelf.plain('.no_default_policy%s' % suffix),
      '#no_parent':: { 'function': { help: |||
        Flag to create a token without parent.
      ||| } },
      no_parent(suffix=''):: refSelf.plain('.no_parent%s' % suffix),
      '#num_uses':: { 'function': { help: |||
        The number of allowed uses of the token.
      ||| } },
      num_uses(suffix=''):: refSelf.plain('.num_uses%s' % suffix),
      '#orphan':: { 'function': { help: |||
        Whether the token is an orphan token.
      ||| } },
      orphan(suffix=''):: refSelf.plain('.orphan%s' % suffix),
      '#period':: { 'function': { help: |||
        The period of the token for periodic tokens.
      ||| } },
      period(suffix=''):: refSelf.plain('.period%s' % suffix),
      '#policies':: { 'function': { help: |||
        List of policies to attach to the token.
      ||| } },
      policies(suffix=''):: refSelf.plain('.policies%s' % suffix),
      '#renewable':: { 'function': { help: |||
        Flag to allow the token to be renewed.
      ||| } },
      renewable(suffix=''):: refSelf.plain('.renewable%s' % suffix),
      '#role_name':: { 'function': { help: |||
        The token role name.
      ||| } },
      role_name(suffix=''):: refSelf.plain('.role_name%s' % suffix),
      '#token_policies':: { 'function': { help: |||
        The list of policies attached to the token.
      ||| } },
      token_policies(suffix=''):: refSelf.plain('.token_policies%s' % suffix),
      '#ttl':: { 'function': { help: |||
        The TTL period of the token.
      ||| } },
      ttl(suffix=''):: refSelf.plain('.ttl%s' % suffix),
      '#type':: { 'function': { help: |||
        The token type. Can be 'batch' or 'service'.
      ||| } },
      type(suffix=''):: refSelf.plain('.type%s' % suffix),
      '#wrapped_token':: { 'function': { help: |||
        The wrapped token value.
      ||| } },
      wrapped_token(suffix=''):: refSelf.plain('.wrapped_token%s' % suffix),
      '#wrapping_accessor':: { 'function': { help: |||
        The wrapping accessor.
      ||| } },
      wrapping_accessor(suffix=''):: refSelf.plain('.wrapping_accessor%s' % suffix),
      '#wrapping_ttl':: { 'function': { help: |||
        The TTL period of the wrapped token.
      ||| } },
      wrapping_ttl(suffix=''):: refSelf.plain('.wrapping_ttl%s' % suffix),
    },
  },
}
