{
  '#new':: { 'function': { help: |||
    Manages a deSEC DNS zone (domain). Domain names are immutable after creation.
  ||| } },
  local outerSelf = self,
  new(terraformName, name):: self.functions(terraformName) {
    ref():: outerSelf.ref(terraformName),
    _type:: 'tf',
    resource+: {
      desec_domain+: {
        [terraformName]+: {
          name: name,
        },
      },
    },
  },
  functions(terraformName):: {
    withForEach(value):: self {
      resource+: {
        desec_domain+: { [terraformName]+: { for_each: value } },
      },
    },
    withDependsOn(value):: self {
      resource+: {
        desec_domain+: { [terraformName]+: { depends_on: value } },
      },
    },
    withCount(value):: self {
      resource+: {
        desec_domain+: { [terraformName]+: { count: value } },
      },
    },
    withLifecycle(value):: self {
      resource+: {
        desec_domain+: { [terraformName]+: { lifecycle: value } },
      },
    },
    withProvider(value):: self {
      resource+: {
        desec_domain+: { [terraformName]+: { provider: value } },
      },
    },
    withProviders(value):: self {
      resource+: {
        desec_domain+: { [terraformName]+: { providers: value } },
      },
    },
    '#name':: { 'function': { help: |||
      The domain name (e.g. `example.com`). Must be unique and is immutable after creation. IDN/unicode domains must be provided in their Punycode form (e.g. `xn--mnchen-3ya.de`).
    ||| } },
    withName(value):: self {
      resource+: {
        desec_domain+: { [terraformName]+: { name: value } },
      },
    },
  },
  ref(terraformName):: {
    local refSelf = self,
    plain(suffix=''):: '${ desec_domain.%s%s }' % [terraformName, suffix],
    fields:: {
      '#created':: { 'function': { help: |||
        Timestamp of domain creation in ISO 8601 format.
      ||| } },
      created(suffix=''):: refSelf.plain('.created%s' % suffix),
      '#id':: { 'function': { help: |||
        The domain name, used as the resource identifier.
      ||| } },
      id(suffix=''):: refSelf.plain('.id%s' % suffix),
      '#keys':: { 'function': { help: |||
        DNSSEC public key information for the domain.
      ||| } },
      keys(suffix=''):: refSelf.plain('.keys%s' % suffix),
      '#minimum_ttl':: { 'function': { help: |||
        The minimum TTL (in seconds) that can be used for RRsets in this domain. Set automatically by the server.
      ||| } },
      minimum_ttl(suffix=''):: refSelf.plain('.minimum_ttl%s' % suffix),
      '#name':: { 'function': { help: |||
        The domain name (e.g. `example.com`). Must be unique and is immutable after creation. IDN/unicode domains must be provided in their Punycode form (e.g. `xn--mnchen-3ya.de`).
      ||| } },
      name(suffix=''):: refSelf.plain('.name%s' % suffix),
      '#published':: { 'function': { help: |||
        Timestamp of when the domain's DNS records were last published.
      ||| } },
      published(suffix=''):: refSelf.plain('.published%s' % suffix),
      '#touched':: { 'function': { help: |||
        Timestamp of when the domain's DNS records were last touched.
      ||| } },
      touched(suffix=''):: refSelf.plain('.touched%s' % suffix),
    },
  },
}
