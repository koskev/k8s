{
  local outerSelf = self,
  '#new':: { 'function': {
    help:
      |||
        Retrieves a specific DNS Resource Record Set (RRset) from a deSEC domain.
      |||,
  } },
  new(terraformName, domain, subname, type):: self.functions(terraformName) + {
    _type:: 'tf',
    ref():: outerSelf.ref(terraformName),
    data+: {
      desec_rrset+: { [terraformName]+: {
        domain: domain,
        subname: subname,
        type: type,
      } },
    },
  }
  ,
  functions(terraformName):: {
    withForEach(value):: self { data+: {
      desec_rrset+: { [terraformName]+: { for_each: value } },
    } },
    withDependsOn(value):: self { data+: {
      desec_rrset+: { [terraformName]+: { depends_on: value } },
    } },
    withCount(value):: self { data+: {
      desec_rrset+: { [terraformName]+: { count: value } },
    } },
    withLifecycle(value):: self { data+: {
      desec_rrset+: { [terraformName]+: { lifecycle: value } },
    } },
    withProvider(value):: self { data+: {
      desec_rrset+: { [terraformName]+: { provider: value } },
    } },
    withProviders(value):: self { data+: {
      desec_rrset+: { [terraformName]+: { providers: value } },
    } },
    addCustomData(name, value):: self { data+: {
      desec_rrset+: { [terraformName]+: { [name]: value } },
    } },
    '#withDomain':: { 'function': {
      help:
        |||
          The domain name.
        |||,
    } },
    withDomain(value):: self { data+: {
      desec_rrset+: { [terraformName]+: { domain: value } },
    } },
    '#withSubname':: { 'function': {
      help:
        |||
          The subdomain part of the RRset name. Use `@` for the zone apex.
        |||,
    } },
    withSubname(value):: self { data+: {
      desec_rrset+: { [terraformName]+: { subname: value } },
    } },
    '#withType':: { 'function': {
      help:
        |||
          The DNS record type (e.g. `A`, `AAAA`, `TXT`).
        |||,
    } },
    withType(value):: self { data+: {
      desec_rrset+: { [terraformName]+: { type: value } },
    } },

  }
  ,
  ref(terraformName):: {
    local refSelf = self,
    plain(suffix=''):: '${ data.desec_rrset.%s%s }' % [terraformName, suffix],
    fields:: {
      '#created':: { 'function': {
        help:
          |||
            Timestamp of RRset creation in ISO 8601 format.
          |||,
      } },
      created(suffix=''):: refSelf.plain('.created%s' % suffix),
      '#domain':: { 'function': {
        help:
          |||
            The domain name.
          |||,
      } },
      domain(suffix=''):: refSelf.plain('.domain%s' % suffix),
      '#name':: { 'function': {
        help:
          |||
            The full DNS name of the RRset.
          |||,
      } },
      name(suffix=''):: refSelf.plain('.name%s' % suffix),
      '#rdata':: { 'function': {
        help:
          |||
            The set of RDATA strings.
          |||,
      } },
      rdata(suffix=''):: refSelf.plain('.rdata%s' % suffix),
      '#subname':: { 'function': {
        help:
          |||
            The subdomain part of the RRset name. Use `@` for the zone apex.
          |||,
      } },
      subname(suffix=''):: refSelf.plain('.subname%s' % suffix),
      '#touched':: { 'function': {
        help:
          |||
            Timestamp of when the RRset was last touched.
          |||,
      } },
      touched(suffix=''):: refSelf.plain('.touched%s' % suffix),
      '#ttl':: { 'function': {
        help:
          |||
            The TTL (time-to-live) in seconds.
          |||,
      } },
      ttl(suffix=''):: refSelf.plain('.ttl%s' % suffix),
      '#type':: { 'function': {
        help:
          |||
            The DNS record type (e.g. `A`, `AAAA`, `TXT`).
          |||,
      } },
      type(suffix=''):: refSelf.plain('.type%s' % suffix),

    },

  },

}
