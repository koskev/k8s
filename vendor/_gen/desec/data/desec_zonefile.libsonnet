{
  '#new':: { 'function': { help: |||
    Exports a deSEC DNS zone in RFC 1035 / BIND zone file format.

    The returned content is plain text. Each resource record is on its own line in the form:

    ```
    <name>  <ttl>  IN  <type>  <rdata>
    ```

    The export includes a comment header line with the domain name and export timestamp. DNSSEC-specific record types (RRSIG, NSEC, NSEC3, etc.) are excluded — only user-managed record types are present.

    See the [deSEC API documentation](https://desec.readthedocs.io/en/latest/dns/domains.html#exporting-a-domain-as-zonefile) for further details.
  ||| } },
  local outerSelf = self,
  new(terraformName, name):: self.functions(terraformName) {
    ref():: outerSelf.ref(terraformName),
    _type:: 'tf',
    data+: {
      desec_zonefile+: {
        [terraformName]+: {
          name: name,
        },
      },
    },
  },
  functions(terraformName):: {
    withForEach(value):: self {
      data+: {
        desec_zonefile+: { [terraformName]+: { for_each: value } },
      },
    },
    withDependsOn(value):: self {
      data+: {
        desec_zonefile+: { [terraformName]+: { depends_on: value } },
      },
    },
    withCount(value):: self {
      data+: {
        desec_zonefile+: { [terraformName]+: { count: value } },
      },
    },
    withLifecycle(value):: self {
      data+: {
        desec_zonefile+: { [terraformName]+: { lifecycle: value } },
      },
    },
    withProvider(value):: self {
      data+: {
        desec_zonefile+: { [terraformName]+: { provider: value } },
      },
    },
    withProviders(value):: self {
      data+: {
        desec_zonefile+: { [terraformName]+: { providers: value } },
      },
    },
    '#name':: { 'function': { help: |||
      The domain name to export.
    ||| } },
    withName(value):: self {
      data+: {
        desec_zonefile+: { [terraformName]+: { name: value } },
      },
    },
  },
  ref(terraformName):: {
    local refSelf = self,
    plain(suffix=''):: '${ data.desec_zonefile.%s%s }' % [terraformName, suffix],
    fields:: {
      '#name':: { 'function': { help: |||
        The domain name to export.
      ||| } },
      name(suffix=''):: refSelf.plain('.name%s' % suffix),
      '#zonefile':: { 'function': { help: |||
        The zone file content in RFC 1035 / BIND format. Includes all user-managed RRsets. DNSSEC-related types are excluded.
      ||| } },
      zonefile(suffix=''):: refSelf.plain('.zonefile%s' % suffix),
    },
  },
}
