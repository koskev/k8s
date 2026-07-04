{
  local outerSelf = self,
  new(terraformName, name, path):: self.functions(terraformName) {
    ref():: outerSelf.ref(terraformName),
    _type:: 'tf',
    resource+: {
      vault_saml_auth_backend_role+: {
        [terraformName]+: {
          name: name,
          path: path,
        },
      },
    },
  },
  functions(terraformName):: {
    '#withAliasMetadata':: { 'function': { help: |||
      The metadata to be tied to generated entity alias.
        This should be a list or map containing the metadata in key value pairs.
    ||| } },
    withAliasMetadata(value):: self {
      resource+: {
        vault_saml_auth_backend_role+: { [terraformName]+: { alias_metadata: value } },
      },
    },
    '#withBoundAttributes':: { 'function': { help: |||
      Mapping of attribute names to values that are expected to exist in the SAML assertion.
    ||| } },
    withBoundAttributes(value):: self {
      resource+: {
        vault_saml_auth_backend_role+: { [terraformName]+: { bound_attributes: value } },
      },
    },
    '#withBoundAttributesType':: { 'function': { help: |||
      The type of matching assertion to perform on bound_attributes.
    ||| } },
    withBoundAttributesType(value):: self {
      resource+: {
        vault_saml_auth_backend_role+: { [terraformName]+: { bound_attributes_type: value } },
      },
    },
    '#withBoundSubjects':: { 'function': { help: |||
      The subject being asserted for SAML authentication.
    ||| } },
    withBoundSubjects(value):: self {
      resource+: {
        vault_saml_auth_backend_role+: { [terraformName]+: { bound_subjects: value } },
      },
    },
    '#withBoundSubjectsType':: { 'function': { help: |||
      The type of matching assertion to perform on bound_subjects.
    ||| } },
    withBoundSubjectsType(value):: self {
      resource+: {
        vault_saml_auth_backend_role+: { [terraformName]+: { bound_subjects_type: value } },
      },
    },
    '#withGroupsAttribute':: { 'function': { help: |||
      The attribute to use to identify the set of groups to which the user belongs.
    ||| } },
    withGroupsAttribute(value):: self {
      resource+: {
        vault_saml_auth_backend_role+: { [terraformName]+: { groups_attribute: value } },
      },
    },
    withId(value):: self {
      resource+: {
        vault_saml_auth_backend_role+: { [terraformName]+: { id: value } },
      },
    },
    '#withName':: { 'function': { help: |||
      Unique name of the role.
    ||| } },
    withName(value):: self {
      resource+: {
        vault_saml_auth_backend_role+: { [terraformName]+: { name: value } },
      },
    },
    '#withNamespace':: { 'function': { help: |||
      Target namespace. (requires Enterprise)
    ||| } },
    withNamespace(value):: self {
      resource+: {
        vault_saml_auth_backend_role+: { [terraformName]+: { namespace: value } },
      },
    },
    '#withPath':: { 'function': { help: |||
      Path where SAML Auth engine is mounted.
    ||| } },
    withPath(value):: self {
      resource+: {
        vault_saml_auth_backend_role+: { [terraformName]+: { path: value } },
      },
    },
    '#withTokenBoundCidrs':: { 'function': { help: |||
      Specifies the blocks of IP addresses which are allowed to use the generated token
    ||| } },
    withTokenBoundCidrs(value):: self {
      resource+: {
        vault_saml_auth_backend_role+: { [terraformName]+: { token_bound_cidrs: value } },
      },
    },
    '#withTokenExplicitMaxTtl':: { 'function': { help: |||
      Generated Token's Explicit Maximum TTL in seconds
    ||| } },
    withTokenExplicitMaxTtl(value):: self {
      resource+: {
        vault_saml_auth_backend_role+: { [terraformName]+: { token_explicit_max_ttl: value } },
      },
    },
    '#withTokenMaxTtl':: { 'function': { help: |||
      The maximum lifetime of the generated token
    ||| } },
    withTokenMaxTtl(value):: self {
      resource+: {
        vault_saml_auth_backend_role+: { [terraformName]+: { token_max_ttl: value } },
      },
    },
    '#withTokenNoDefaultPolicy':: { 'function': { help: |||
      If true, the 'default' policy will not automatically be added to generated tokens
    ||| } },
    withTokenNoDefaultPolicy(value):: self {
      resource+: {
        vault_saml_auth_backend_role+: { [terraformName]+: { token_no_default_policy: value } },
      },
    },
    '#withTokenNumUses':: { 'function': { help: |||
      The maximum number of times a token may be used, a value of zero means unlimited
    ||| } },
    withTokenNumUses(value):: self {
      resource+: {
        vault_saml_auth_backend_role+: { [terraformName]+: { token_num_uses: value } },
      },
    },
    '#withTokenPeriod':: { 'function': { help: |||
      Generated Token's Period
    ||| } },
    withTokenPeriod(value):: self {
      resource+: {
        vault_saml_auth_backend_role+: { [terraformName]+: { token_period: value } },
      },
    },
    '#withTokenPolicies':: { 'function': { help: |||
      Generated Token's Policies
    ||| } },
    withTokenPolicies(value):: self {
      resource+: {
        vault_saml_auth_backend_role+: { [terraformName]+: { token_policies: value } },
      },
    },
    '#withTokenTtl':: { 'function': { help: |||
      The initial ttl of the token to generate in seconds
    ||| } },
    withTokenTtl(value):: self {
      resource+: {
        vault_saml_auth_backend_role+: { [terraformName]+: { token_ttl: value } },
      },
    },
    '#withTokenType':: { 'function': { help: |||
      The type of token to generate, service or batch
    ||| } },
    withTokenType(value):: self {
      resource+: {
        vault_saml_auth_backend_role+: { [terraformName]+: { token_type: value } },
      },
    },
  },
  ref(terraformName):: {
    local refSelf = self,
    plain(suffix=''):: '${ vault_saml_auth_backend_role.%s%s }' % [terraformName, suffix],
    fields:: {
      '#alias_metadata':: { 'function': { help: |||
        The metadata to be tied to generated entity alias.
          This should be a list or map containing the metadata in key value pairs.
      ||| } },
      alias_metadata(suffix=''):: refSelf.plain('.alias_metadata%s' % suffix),
      '#bound_attributes':: { 'function': { help: |||
        Mapping of attribute names to values that are expected to exist in the SAML assertion.
      ||| } },
      bound_attributes(suffix=''):: refSelf.plain('.bound_attributes%s' % suffix),
      '#bound_attributes_type':: { 'function': { help: |||
        The type of matching assertion to perform on bound_attributes.
      ||| } },
      bound_attributes_type(suffix=''):: refSelf.plain('.bound_attributes_type%s' % suffix),
      '#bound_subjects':: { 'function': { help: |||
        The subject being asserted for SAML authentication.
      ||| } },
      bound_subjects(suffix=''):: refSelf.plain('.bound_subjects%s' % suffix),
      '#bound_subjects_type':: { 'function': { help: |||
        The type of matching assertion to perform on bound_subjects.
      ||| } },
      bound_subjects_type(suffix=''):: refSelf.plain('.bound_subjects_type%s' % suffix),
      '#groups_attribute':: { 'function': { help: |||
        The attribute to use to identify the set of groups to which the user belongs.
      ||| } },
      groups_attribute(suffix=''):: refSelf.plain('.groups_attribute%s' % suffix),
      id(suffix=''):: refSelf.plain('.id%s' % suffix),
      '#name':: { 'function': { help: |||
        Unique name of the role.
      ||| } },
      name(suffix=''):: refSelf.plain('.name%s' % suffix),
      '#namespace':: { 'function': { help: |||
        Target namespace. (requires Enterprise)
      ||| } },
      namespace(suffix=''):: refSelf.plain('.namespace%s' % suffix),
      '#path':: { 'function': { help: |||
        Path where SAML Auth engine is mounted.
      ||| } },
      path(suffix=''):: refSelf.plain('.path%s' % suffix),
      '#token_bound_cidrs':: { 'function': { help: |||
        Specifies the blocks of IP addresses which are allowed to use the generated token
      ||| } },
      token_bound_cidrs(suffix=''):: refSelf.plain('.token_bound_cidrs%s' % suffix),
      '#token_explicit_max_ttl':: { 'function': { help: |||
        Generated Token's Explicit Maximum TTL in seconds
      ||| } },
      token_explicit_max_ttl(suffix=''):: refSelf.plain('.token_explicit_max_ttl%s' % suffix),
      '#token_max_ttl':: { 'function': { help: |||
        The maximum lifetime of the generated token
      ||| } },
      token_max_ttl(suffix=''):: refSelf.plain('.token_max_ttl%s' % suffix),
      '#token_no_default_policy':: { 'function': { help: |||
        If true, the 'default' policy will not automatically be added to generated tokens
      ||| } },
      token_no_default_policy(suffix=''):: refSelf.plain('.token_no_default_policy%s' % suffix),
      '#token_num_uses':: { 'function': { help: |||
        The maximum number of times a token may be used, a value of zero means unlimited
      ||| } },
      token_num_uses(suffix=''):: refSelf.plain('.token_num_uses%s' % suffix),
      '#token_period':: { 'function': { help: |||
        Generated Token's Period
      ||| } },
      token_period(suffix=''):: refSelf.plain('.token_period%s' % suffix),
      '#token_policies':: { 'function': { help: |||
        Generated Token's Policies
      ||| } },
      token_policies(suffix=''):: refSelf.plain('.token_policies%s' % suffix),
      '#token_ttl':: { 'function': { help: |||
        The initial ttl of the token to generate in seconds
      ||| } },
      token_ttl(suffix=''):: refSelf.plain('.token_ttl%s' % suffix),
      '#token_type':: { 'function': { help: |||
        The type of token to generate, service or batch
      ||| } },
      token_type(suffix=''):: refSelf.plain('.token_type%s' % suffix),
    },
  },
}
