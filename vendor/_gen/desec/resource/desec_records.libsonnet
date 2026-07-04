{
  '#new':: { 'function': { help: |||
    Manages a set of deSEC DNS RRsets via the bulk RRset API.

    RRsets can be specified in one of two ways (mutually exclusive):

    - **Mode A (`zonefile`)**: Provide a BIND-format zone file string. The `rrsets` attribute is computed.
    - **Mode B (`rrsets`)**: Provide a structured set of RRset objects. The `zonefile` attribute is computed.

    This resource **co-exists** with `desec_rrset` resources. Only the RRsets explicitly declared are owned and managed; other RRsets in the domain are not touched.

    The following record types are silently ignored because they are managed automatically by deSEC: `SOA`, `RRSIG`, `NSEC`, `NSEC3`, `NSEC3PARAM`, `CDNSKEY`, `CDS`, and apex `NS` records.
  ||| } },
  local outerSelf = self,
  new(terraformName, domain):: self.functions(terraformName) {
    ref():: outerSelf.ref(terraformName),
    _type:: 'tf',
    resource+: {
      desec_records+: {
        [terraformName]+: {
          domain: domain,
        },
      },
    },
  },
  functions(terraformName):: {
    withForEach(value):: self {
      resource+: {
        desec_records+: { [terraformName]+: { for_each: value } },
      },
    },
    withDependsOn(value):: self {
      resource+: {
        desec_records+: { [terraformName]+: { depends_on: value } },
      },
    },
    withCount(value):: self {
      resource+: {
        desec_records+: { [terraformName]+: { count: value } },
      },
    },
    withLifecycle(value):: self {
      resource+: {
        desec_records+: { [terraformName]+: { lifecycle: value } },
      },
    },
    withProvider(value):: self {
      resource+: {
        desec_records+: { [terraformName]+: { provider: value } },
      },
    },
    withProviders(value):: self {
      resource+: {
        desec_records+: { [terraformName]+: { providers: value } },
      },
    },
    '#domain':: { 'function': { help: |||
      The domain name to manage RRsets for. Changing this forces a new resource.
    ||| } },
    withDomain(value):: self {
      resource+: {
        desec_records+: { [terraformName]+: { domain: value } },
      },
    },
    '#exclusive':: { 'function': { help: |||
      When `true`, only the declared RRsets may exist on the domain (excluding automatically managed types such as SOA, RRSIG, NSEC*, CDNSKEY, CDS, and apex NS). Any other RRsets found on the domain are deleted.

      When `false` (the default), this resource co-exists with other records on the domain and only manages the RRsets explicitly declared in the configuration.
    ||| } },
    withExclusive(value):: self {
      resource+: {
        desec_records+: { [terraformName]+: { exclusive: value } },
      },
    },
    '#rrsets':: { 'function': { help: |||
      Structured set of RRset objects.

      Mutually exclusive with `zonefile`. When set, the `zonefile` attribute is computed. When `zonefile` is set instead, this attribute is computed from the parsed zone file.

      Each element represents one RRset (a unique `(subname, type)` pair).
    ||| } },
    withRrsets(value):: self {
      resource+: {
        desec_records+: { [terraformName]+: { rrsets: value } },
      },
    },
    '#zonefile':: { 'function': { help: |||
      Zone file content in RFC 1035 / BIND format.

      Mutually exclusive with `rrsets`. When set, the `rrsets` attribute is computed from the parsed zone file. When `rrsets` is set instead, this attribute is computed as a canonical reconstruction of the live RRsets.

      Format and ordering differences (comments, whitespace, record ordering) are suppressed: a plan will only show a diff when the set of RRsets or their values actually change.
    ||| } },
    withZonefile(value):: self {
      resource+: {
        desec_records+: { [terraformName]+: { zonefile: value } },
      },
    },
  },
  ref(terraformName):: {
    local refSelf = self,
    plain(suffix=''):: '${ desec_records.%s%s }' % [terraformName, suffix],
    fields:: {
      '#domain':: { 'function': { help: |||
        The domain name to manage RRsets for. Changing this forces a new resource.
      ||| } },
      domain(suffix=''):: refSelf.plain('.domain%s' % suffix),
      '#exclusive':: { 'function': { help: |||
        When `true`, only the declared RRsets may exist on the domain (excluding automatically managed types such as SOA, RRSIG, NSEC*, CDNSKEY, CDS, and apex NS). Any other RRsets found on the domain are deleted.

        When `false` (the default), this resource co-exists with other records on the domain and only manages the RRsets explicitly declared in the configuration.
      ||| } },
      exclusive(suffix=''):: refSelf.plain('.exclusive%s' % suffix),
      '#rrsets':: { 'function': { help: |||
        Structured set of RRset objects.

        Mutually exclusive with `zonefile`. When set, the `zonefile` attribute is computed. When `zonefile` is set instead, this attribute is computed from the parsed zone file.

        Each element represents one RRset (a unique `(subname, type)` pair).
      ||| } },
      rrsets(suffix=''):: refSelf.plain('.rrsets%s' % suffix),
      '#zonefile':: { 'function': { help: |||
        Zone file content in RFC 1035 / BIND format.

        Mutually exclusive with `rrsets`. When set, the `rrsets` attribute is computed from the parsed zone file. When `rrsets` is set instead, this attribute is computed as a canonical reconstruction of the live RRsets.

        Format and ordering differences (comments, whitespace, record ordering) are suppressed: a plan will only show a diff when the set of RRsets or their values actually change.
      ||| } },
      zonefile(suffix=''):: refSelf.plain('.zonefile%s' % suffix),
    },
  },
}
