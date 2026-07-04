{
  '#new':: { 'function': { help: |||
    Retrieves the list of all deSEC DNS zones owned by the account.
  ||| } },
  local outerSelf = self,
  new(terraformName):: self.functions(terraformName) {
    ref():: outerSelf.ref(terraformName),
    _type:: 'tf',
    data+: {
      desec_domains+: {
        [terraformName]+: {
        },
      },
    },
  },
  functions(terraformName):: {
    withForEach(value):: self {
      data+: {
        desec_domains+: { [terraformName]+: { for_each: value } },
      },
    },
    withDependsOn(value):: self {
      data+: {
        desec_domains+: { [terraformName]+: { depends_on: value } },
      },
    },
    withCount(value):: self {
      data+: {
        desec_domains+: { [terraformName]+: { count: value } },
      },
    },
    withLifecycle(value):: self {
      data+: {
        desec_domains+: { [terraformName]+: { lifecycle: value } },
      },
    },
    withProvider(value):: self {
      data+: {
        desec_domains+: { [terraformName]+: { provider: value } },
      },
    },
    withProviders(value):: self {
      data+: {
        desec_domains+: { [terraformName]+: { providers: value } },
      },
    },
    '#owns_qname':: { 'function': { help: |||
      Filter to return only the domain responsible for this DNS query name (at most one result).
    ||| } },
    withOwnsQname(value):: self {
      data+: {
        desec_domains+: { [terraformName]+: { owns_qname: value } },
      },
    },
  },
  ref(terraformName):: {
    local refSelf = self,
    plain(suffix=''):: '${ data.desec_domains.%s%s }' % [terraformName, suffix],
    fields:: {
      '#domains':: { 'function': { help: |||
        List of domains.
      ||| } },
      domains(suffix=''):: refSelf.plain('.domains%s' % suffix),
      '#owns_qname':: { 'function': { help: |||
        Filter to return only the domain responsible for this DNS query name (at most one result).
      ||| } },
      owns_qname(suffix=''):: refSelf.plain('.owns_qname%s' % suffix),
    },
  },
}
