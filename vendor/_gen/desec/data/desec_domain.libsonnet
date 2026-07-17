{
  local outerSelf = self,
  '#new':: { 'function': {
    help:
      |||
        Retrieves information about a specific deSEC DNS zone.
      |||,
  } },
  new(terraformName, name):: self.functions(terraformName) + {
    _type:: 'tf',
    ref():: outerSelf.ref(terraformName),
    data+: {
      desec_domain+: { [terraformName]+: {
        name: name,
      } },
    },
  }
  ,
  functions(terraformName):: {
    withForEach(value):: self { data+: {
      desec_domain+: { [terraformName]+: { for_each: value } },
    } },
    withDependsOn(value):: self { data+: {
      desec_domain+: { [terraformName]+: { depends_on: value } },
    } },
    withCount(value):: self { data+: {
      desec_domain+: { [terraformName]+: { count: value } },
    } },
    withLifecycle(value):: self { data+: {
      desec_domain+: { [terraformName]+: { lifecycle: value } },
    } },
    withProvider(value):: self { data+: {
      desec_domain+: { [terraformName]+: { provider: value } },
    } },
    withProviders(value):: self { data+: {
      desec_domain+: { [terraformName]+: { providers: value } },
    } },
    addCustomData(name, value):: self { data+: {
      desec_domain+: { [terraformName]+: { [name]: value } },
    } },
    '#withName':: { 'function': {
      help:
        |||
          The domain name to look up.
        |||,
    } },
    withName(value):: self { data+: {
      desec_domain+: { [terraformName]+: { name: value } },
    } },

  }
  ,
  ref(terraformName):: {
    local refSelf = self,
    plain(suffix=''):: '${ data.desec_domain.%s%s }' % [terraformName, suffix],
    fields:: {
      '#created':: { 'function': {
        help:
          |||
            Timestamp of domain creation in ISO 8601 format.
          |||,
      } },
      created(suffix=''):: refSelf.plain('.created%s' % suffix),
      '#id':: { 'function': {
        help:
          |||
            The domain name, used as the data source identifier.
          |||,
      } },
      id(suffix=''):: refSelf.plain('.id%s' % suffix),
      '#keys':: { 'function': {
        help:
          |||
            DNSSEC public key information for the domain.
          |||,
      } },
      keys(suffix=''):: refSelf.plain('.keys%s' % suffix),
      '#minimum_ttl':: { 'function': {
        help:
          |||
            The minimum TTL (in seconds) that can be used for RRsets in this domain.
          |||,
      } },
      minimum_ttl(suffix=''):: refSelf.plain('.minimum_ttl%s' % suffix),
      '#name':: { 'function': {
        help:
          |||
            The domain name to look up.
          |||,
      } },
      name(suffix=''):: refSelf.plain('.name%s' % suffix),
      '#published':: { 'function': {
        help:
          |||
            Timestamp of when the domain's DNS records were last published.
          |||,
      } },
      published(suffix=''):: refSelf.plain('.published%s' % suffix),
      '#touched':: { 'function': {
        help:
          |||
            Timestamp of when the domain's DNS records were last touched.
          |||,
      } },
      touched(suffix=''):: refSelf.plain('.touched%s' % suffix),

    },

  },

}
