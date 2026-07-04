{
  '#new':: { 'function': { help: |||
    Manages a deSEC DNS Resource Record Set (RRset). An RRset is the set of all DNS records of a given type for a given name within a domain.

    Use `@` as the `subname` to manage records at the zone apex (root of the domain).
  ||| } },
  local outerSelf = self,
  new(terraformName, domain, rdata, subname, ttl, type):: self.functions(terraformName) {
    ref():: outerSelf.ref(terraformName),
    _type:: 'tf',
    resource+: {
      desec_rrset+: {
        [terraformName]+: {
          domain: domain,
          rdata: rdata,
          subname: subname,
          ttl: ttl,
          type: type,
        },
      },
    },
  },
  functions(terraformName):: {
    withForEach(value):: self {
      resource+: {
        desec_rrset+: { [terraformName]+: { for_each: value } },
      },
    },
    withDependsOn(value):: self {
      resource+: {
        desec_rrset+: { [terraformName]+: { depends_on: value } },
      },
    },
    withCount(value):: self {
      resource+: {
        desec_rrset+: { [terraformName]+: { count: value } },
      },
    },
    withLifecycle(value):: self {
      resource+: {
        desec_rrset+: { [terraformName]+: { lifecycle: value } },
      },
    },
    withProvider(value):: self {
      resource+: {
        desec_rrset+: { [terraformName]+: { provider: value } },
      },
    },
    withProviders(value):: self {
      resource+: {
        desec_rrset+: { [terraformName]+: { providers: value } },
      },
    },
    '#domain':: { 'function': { help: |||
      The domain name that this RRset belongs to.
    ||| } },
    withDomain(value):: self {
      resource+: {
        desec_rrset+: { [terraformName]+: { domain: value } },
      },
    },
    '#rdata':: { 'function': { help: |||
      The set of RDATA strings. The format depends on the record type. For example, `A` records contain IPv4 addresses, `MX` records contain `priority hostname.` pairs.
    ||| } },
    withRdata(value):: self {
      resource+: {
        desec_rrset+: { [terraformName]+: { rdata: value } },
      },
    },
    '#subname':: { 'function': { help: |||
      The subdomain part of the RRset name. Use `@` or `""` for the zone apex (root of the domain).
    ||| } },
    withSubname(value):: self {
      resource+: {
        desec_rrset+: { [terraformName]+: { subname: value } },
      },
    },
    '#ttl':: { 'function': { help: |||
      The TTL (time-to-live) in seconds. Must be at least the domain's `minimum_ttl`.
    ||| } },
    withTtl(value):: self {
      resource+: {
        desec_rrset+: { [terraformName]+: { ttl: value } },
      },
    },
    '#type':: { 'function': { help: |||
      The DNS record type (e.g. `A`, `AAAA`, `CNAME`, `MX`, `TXT`). Must be uppercase.
    ||| } },
    withType(value):: self {
      resource+: {
        desec_rrset+: { [terraformName]+: { type: value } },
      },
    },
  },
  ref(terraformName):: {
    local refSelf = self,
    plain(suffix=''):: '${ desec_rrset.%s%s }' % [terraformName, suffix],
    fields:: {
      '#created':: { 'function': { help: |||
        Timestamp of RRset creation in ISO 8601 format.
      ||| } },
      created(suffix=''):: refSelf.plain('.created%s' % suffix),
      '#domain':: { 'function': { help: |||
        The domain name that this RRset belongs to.
      ||| } },
      domain(suffix=''):: refSelf.plain('.domain%s' % suffix),
      '#id':: { 'function': { help: |||
        The resource identifier in the form `domain/subname/type`.
      ||| } },
      id(suffix=''):: refSelf.plain('.id%s' % suffix),
      '#rdata':: { 'function': { help: |||
        The set of RDATA strings. The format depends on the record type. For example, `A` records contain IPv4 addresses, `MX` records contain `priority hostname.` pairs.
      ||| } },
      rdata(suffix=''):: refSelf.plain('.rdata%s' % suffix),
      '#subname':: { 'function': { help: |||
        The subdomain part of the RRset name. Use `@` or `""` for the zone apex (root of the domain).
      ||| } },
      subname(suffix=''):: refSelf.plain('.subname%s' % suffix),
      '#touched':: { 'function': { help: |||
        Timestamp of when the RRset was last touched.
      ||| } },
      touched(suffix=''):: refSelf.plain('.touched%s' % suffix),
      '#ttl':: { 'function': { help: |||
        The TTL (time-to-live) in seconds. Must be at least the domain's `minimum_ttl`.
      ||| } },
      ttl(suffix=''):: refSelf.plain('.ttl%s' % suffix),
      '#type':: { 'function': { help: |||
        The DNS record type (e.g. `A`, `AAAA`, `CNAME`, `MX`, `TXT`). Must be uppercase.
      ||| } },
      type(suffix=''):: refSelf.plain('.type%s' % suffix),
    },
  },
}
