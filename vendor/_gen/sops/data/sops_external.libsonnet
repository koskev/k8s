{
  new(terraformName, source):: self.functions(terraformName) {
    _type:: 'tf',
    data+: {
      sops_external+: {
        [terraformName]+: {
          source: source,
        },
      },
    },
  },
  functions(terraformName):: {
    '#withInputType':: { 'function': { help: |||
      `yaml`, `json` `dotenv` (`.env`), `ini` or `raw`, depending on the structure of the un-encrypted data. 
    ||| } },
    withInputType(value):: self {
      data+: {
        sops_external+: { [terraformName]+: { input_type: value } },
      },
    },
    '#withSource':: { 'function': { help: |||
      A string with sops-encrypted data 
    ||| } },
    withSource(value):: self {
      data+: {
        sops_external+: { [terraformName]+: { source: value } },
      },
    },
  },
  ref(terraformName):: {
    local refSelf = self,
    plain(suffix=''):: '${ data.sops_external.%s%s }' % [terraformName, suffix],
    fields:: {
      '#data':: { 'function': { help: |||
        Decrypted data 
      ||| } },
      data(suffix=''):: refSelf.plain('.data%s' % suffix),
      '#id':: { 'function': { help: |||
        Unique identifier for this data source 
      ||| } },
      id(suffix=''):: refSelf.plain('.id%s' % suffix),
      '#input_type':: { 'function': { help: |||
        `yaml`, `json` `dotenv` (`.env`), `ini` or `raw`, depending on the structure of the un-encrypted data. 
      ||| } },
      input_type(suffix=''):: refSelf.plain('.input_type%s' % suffix),
      '#raw':: { 'function': { help: |||
        Raw decrypted content 
      ||| } },
      raw(suffix=''):: refSelf.plain('.raw%s' % suffix),
      '#source':: { 'function': { help: |||
        A string with sops-encrypted data 
      ||| } },
      source(suffix=''):: refSelf.plain('.source%s' % suffix),
    },
  },
}
