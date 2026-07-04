{
  '#new':: { 'function': { help: |||
    Retrieves information about a specific deSEC token scoping policy.
  ||| } },
  local outerSelf = self,
  new(terraformName, id, token_id):: self.functions(terraformName) {
    ref():: outerSelf.ref(terraformName),
    _type:: 'tf',
    data+: {
      desec_token_policy+: {
        [terraformName]+: {
          id: id,
          token_id: token_id,
        },
      },
    },
  },
  functions(terraformName):: {
    withForEach(value):: self {
      data+: {
        desec_token_policy+: { [terraformName]+: { for_each: value } },
      },
    },
    withDependsOn(value):: self {
      data+: {
        desec_token_policy+: { [terraformName]+: { depends_on: value } },
      },
    },
    withCount(value):: self {
      data+: {
        desec_token_policy+: { [terraformName]+: { count: value } },
      },
    },
    withLifecycle(value):: self {
      data+: {
        desec_token_policy+: { [terraformName]+: { lifecycle: value } },
      },
    },
    withProvider(value):: self {
      data+: {
        desec_token_policy+: { [terraformName]+: { provider: value } },
      },
    },
    withProviders(value):: self {
      data+: {
        desec_token_policy+: { [terraformName]+: { providers: value } },
      },
    },
    '#id':: { 'function': { help: |||
      The UUID of the policy to look up.
    ||| } },
    withId(value):: self {
      data+: {
        desec_token_policy+: { [terraformName]+: { id: value } },
      },
    },
    '#token_id':: { 'function': { help: |||
      The UUID of the token this policy belongs to.
    ||| } },
    withTokenId(value):: self {
      data+: {
        desec_token_policy+: { [terraformName]+: { token_id: value } },
      },
    },
  },
  ref(terraformName):: {
    local refSelf = self,
    plain(suffix=''):: '${ data.desec_token_policy.%s%s }' % [terraformName, suffix],
    fields:: {
      '#domain':: { 'function': { help: |||
        Domain name this policy applies to, or `null` for the default policy.
      ||| } },
      domain(suffix=''):: refSelf.plain('.domain%s' % suffix),
      '#id':: { 'function': { help: |||
        The UUID of the policy to look up.
      ||| } },
      id(suffix=''):: refSelf.plain('.id%s' % suffix),
      '#perm_write':: { 'function': { help: |||
        Whether this policy grants write permission.
      ||| } },
      perm_write(suffix=''):: refSelf.plain('.perm_write%s' % suffix),
      '#subname':: { 'function': { help: |||
        Subname this policy applies to, or `null` for a wildcard match.
      ||| } },
      subname(suffix=''):: refSelf.plain('.subname%s' % suffix),
      '#token_id':: { 'function': { help: |||
        The UUID of the token this policy belongs to.
      ||| } },
      token_id(suffix=''):: refSelf.plain('.token_id%s' % suffix),
      '#type':: { 'function': { help: |||
        DNS record type this policy applies to, or `null` for a wildcard match.
      ||| } },
      type(suffix=''):: refSelf.plain('.type%s' % suffix),
    },
  },
}
