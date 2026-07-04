{
  '#new':: { 'function': { help: |||
    Manages a scoping policy for a deSEC API token.

    Token policies restrict which DNS records a token may write. A *default* policy (all of `domain`, `subname`, and `type` unset / `null`) must exist before any specific policies can be created, and it cannot be deleted while specific policies are still in place. Use `depends_on` to enforce this ordering in your configuration.
  ||| } },
  local outerSelf = self,
  new(terraformName, token_id):: self.functions(terraformName) {
    ref():: outerSelf.ref(terraformName),
    _type:: 'tf',
    resource+: {
      desec_token_policy+: {
        [terraformName]+: {
          token_id: token_id,
        },
      },
    },
  },
  functions(terraformName):: {
    withForEach(value):: self {
      resource+: {
        desec_token_policy+: { [terraformName]+: { for_each: value } },
      },
    },
    withDependsOn(value):: self {
      resource+: {
        desec_token_policy+: { [terraformName]+: { depends_on: value } },
      },
    },
    withCount(value):: self {
      resource+: {
        desec_token_policy+: { [terraformName]+: { count: value } },
      },
    },
    withLifecycle(value):: self {
      resource+: {
        desec_token_policy+: { [terraformName]+: { lifecycle: value } },
      },
    },
    withProvider(value):: self {
      resource+: {
        desec_token_policy+: { [terraformName]+: { provider: value } },
      },
    },
    withProviders(value):: self {
      resource+: {
        desec_token_policy+: { [terraformName]+: { providers: value } },
      },
    },
    '#domain':: { 'function': { help: |||
      Domain name this policy applies to. Omit or set to `null` for the default (catch-all) policy.
    ||| } },
    withDomain(value):: self {
      resource+: {
        desec_token_policy+: { [terraformName]+: { domain: value } },
      },
    },
    '#perm_write':: { 'function': { help: |||
      Whether this policy grants write permission. Defaults to `false`.
    ||| } },
    withPermWrite(value):: self {
      resource+: {
        desec_token_policy+: { [terraformName]+: { perm_write: value } },
      },
    },
    '#subname':: { 'function': { help: |||
      Subname (subdomain label) this policy applies to. Omit or set to `null` for a wildcard match on subname.
    ||| } },
    withSubname(value):: self {
      resource+: {
        desec_token_policy+: { [terraformName]+: { subname: value } },
      },
    },
    '#token_id':: { 'function': { help: |||
      The UUID of the token this policy belongs to.
    ||| } },
    withTokenId(value):: self {
      resource+: {
        desec_token_policy+: { [terraformName]+: { token_id: value } },
      },
    },
    '#type':: { 'function': { help: |||
      DNS record type this policy applies to (e.g. `A`, `AAAA`, `TXT`). Omit or set to `null` for a wildcard match on type.
    ||| } },
    withType(value):: self {
      resource+: {
        desec_token_policy+: { [terraformName]+: { type: value } },
      },
    },
  },
  ref(terraformName):: {
    local refSelf = self,
    plain(suffix=''):: '${ desec_token_policy.%s%s }' % [terraformName, suffix],
    fields:: {
      '#domain':: { 'function': { help: |||
        Domain name this policy applies to. Omit or set to `null` for the default (catch-all) policy.
      ||| } },
      domain(suffix=''):: refSelf.plain('.domain%s' % suffix),
      '#id':: { 'function': { help: |||
        The policy's UUID, used as the resource identifier.
      ||| } },
      id(suffix=''):: refSelf.plain('.id%s' % suffix),
      '#perm_write':: { 'function': { help: |||
        Whether this policy grants write permission. Defaults to `false`.
      ||| } },
      perm_write(suffix=''):: refSelf.plain('.perm_write%s' % suffix),
      '#subname':: { 'function': { help: |||
        Subname (subdomain label) this policy applies to. Omit or set to `null` for a wildcard match on subname.
      ||| } },
      subname(suffix=''):: refSelf.plain('.subname%s' % suffix),
      '#token_id':: { 'function': { help: |||
        The UUID of the token this policy belongs to.
      ||| } },
      token_id(suffix=''):: refSelf.plain('.token_id%s' % suffix),
      '#type':: { 'function': { help: |||
        DNS record type this policy applies to (e.g. `A`, `AAAA`, `TXT`). Omit or set to `null` for a wildcard match on type.
      ||| } },
      type(suffix=''):: refSelf.plain('.type%s' % suffix),
    },
  },
}
