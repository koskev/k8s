{
  local outerSelf = self,
  '#new':: { 'function': {
    help:
      |||
        Retrieves the list of DNS Resource Record Sets (RRsets) within a deSEC domain, with optional filtering by subname or type.
      |||,
  } },
  new(terraformName, domain):: self.functions(terraformName) + {
    _type:: 'tf',
    ref():: outerSelf.ref(terraformName),
    data+: {
      desec_rrsets+: { [terraformName]+: {
        domain: domain,
      } },
    },
  }
  ,
  functions(terraformName):: {
    withForEach(value):: self { data+: {
      desec_rrsets+: { [terraformName]+: { for_each: value } },
    } },
    withDependsOn(value):: self { data+: {
      desec_rrsets+: { [terraformName]+: { depends_on: value } },
    } },
    withCount(value):: self { data+: {
      desec_rrsets+: { [terraformName]+: { count: value } },
    } },
    withLifecycle(value):: self { data+: {
      desec_rrsets+: { [terraformName]+: { lifecycle: value } },
    } },
    withProvider(value):: self { data+: {
      desec_rrsets+: { [terraformName]+: { provider: value } },
    } },
    withProviders(value):: self { data+: {
      desec_rrsets+: { [terraformName]+: { providers: value } },
    } },
    addCustomData(name, value):: self { data+: {
      desec_rrsets+: { [terraformName]+: { [name]: value } },
    } },
    '#withDomain':: { 'function': {
      help:
        |||
          The domain name to list RRsets for.
        |||,
    } },
    withDomain(value):: self { data+: {
      desec_rrsets+: { [terraformName]+: { domain: value } },
    } },
    '#withSubname':: { 'function': {
      help:
        |||
          Filter RRsets by this subname. Leave unset to return RRsets for all subnames.
        |||,
    } },
    withSubname(value):: self { data+: {
      desec_rrsets+: { [terraformName]+: { subname: value } },
    } },
    '#withType':: { 'function': {
      help:
        |||
          Filter RRsets by this record type (e.g. `A`, `AAAA`, `TXT`). Leave unset to return all types.
        |||,
    } },
    withType(value):: self { data+: {
      desec_rrsets+: { [terraformName]+: { type: value } },
    } },

  }
  ,
  ref(terraformName):: {
    local refSelf = self,
    plain(suffix=''):: '${ data.desec_rrsets.%s%s }' % [terraformName, suffix],
    fields:: {
      '#domain':: { 'function': {
        help:
          |||
            The domain name to list RRsets for.
          |||,
      } },
      domain(suffix=''):: refSelf.plain('.domain%s' % suffix),
      '#rrsets':: { 'function': {
        help:
          |||
            List of RRsets matching the filter criteria.
          |||,
      } },
      rrsets(suffix=''):: refSelf.plain('.rrsets%s' % suffix),
      '#subname':: { 'function': {
        help:
          |||
            Filter RRsets by this subname. Leave unset to return RRsets for all subnames.
          |||,
      } },
      subname(suffix=''):: refSelf.plain('.subname%s' % suffix),
      '#type':: { 'function': {
        help:
          |||
            Filter RRsets by this record type (e.g. `A`, `AAAA`, `TXT`). Leave unset to return all types.
          |||,
      } },
      type(suffix=''):: refSelf.plain('.type%s' % suffix),

    },

  },

}
