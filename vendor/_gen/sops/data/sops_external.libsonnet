{
  local outerSelf = self,
  '#new':: { 'function': {
    help:
      |||
        Read data from a sops-encrypted string. Useful if the data does not reside on disk locally (otherwise use `sops_file`).
      |||,
  } },
  new(terraformName, source):: self.functions(terraformName) + {
    _type:: 'tf',
    ref():: outerSelf.ref(terraformName),
    data+: {
      sops_external+: { [terraformName]+: {
        source: source,
      } },
    },
  }
  ,
  functions(terraformName):: {
    withForEach(value):: self { data+: {
      sops_external+: { [terraformName]+: { for_each: value } },
    } },
    withDependsOn(value):: self { data+: {
      sops_external+: { [terraformName]+: { depends_on: value } },
    } },
    withCount(value):: self { data+: {
      sops_external+: { [terraformName]+: { count: value } },
    } },
    withLifecycle(value):: self { data+: {
      sops_external+: { [terraformName]+: { lifecycle: value } },
    } },
    withProvider(value):: self { data+: {
      sops_external+: { [terraformName]+: { provider: value } },
    } },
    withProviders(value):: self { data+: {
      sops_external+: { [terraformName]+: { providers: value } },
    } },
    addCustomData(name, value):: self { data+: {
      sops_external+: { [terraformName]+: { [name]: value } },
    } },
    '#withInputType':: { 'function': {
      help:
        |||
          `yaml`, `json` `dotenv` (`.env`), `ini` or `raw`, depending on the structure of the un-encrypted data.
        |||,
    } },
    withInputType(value):: self { data+: {
      sops_external+: { [terraformName]+: { input_type: value } },
    } },
    '#withSource':: { 'function': {
      help:
        |||
          A string with sops-encrypted data
        |||,
    } },
    withSource(value):: self { data+: {
      sops_external+: { [terraformName]+: { source: value } },
    } },

  }
  ,
  ref(terraformName):: {
    local refSelf = self,
    plain(suffix=''):: '${ data.sops_external.%s%s }' % [terraformName, suffix],
    fields:: {
      '#data':: { 'function': {
        help:
          |||
            Decrypted data
          |||,
      } },
      data(suffix=''):: refSelf.plain('.data%s' % suffix),
      '#id':: { 'function': {
        help:
          |||
            Unique identifier for this data source
          |||,
      } },
      id(suffix=''):: refSelf.plain('.id%s' % suffix),
      '#input_type':: { 'function': {
        help:
          |||
            `yaml`, `json` `dotenv` (`.env`), `ini` or `raw`, depending on the structure of the un-encrypted data.
          |||,
      } },
      input_type(suffix=''):: refSelf.plain('.input_type%s' % suffix),
      '#raw':: { 'function': {
        help:
          |||
            Raw decrypted content
          |||,
      } },
      raw(suffix=''):: refSelf.plain('.raw%s' % suffix),
      '#source':: { 'function': {
        help:
          |||
            A string with sops-encrypted data
          |||,
      } },
      source(suffix=''):: refSelf.plain('.source%s' % suffix),

    },

  },

}
