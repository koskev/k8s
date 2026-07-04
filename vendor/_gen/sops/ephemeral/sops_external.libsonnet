{
  '#new':: { 'function': { help: |||
    Read data from a sops-encrypted string. Useful if the data does not reside on disk locally (otherwise use `sops_file`).
  ||| } },
  local outerSelf = self,
  new(terraformName, source):: self.functions(terraformName) {
    ref():: outerSelf.ref(terraformName),
    _type:: 'tf',
    ephemeral+: {
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
      ephemeral+: {
        sops_external+: { [terraformName]+: { input_type: value } },
      },
    },
    '#withSource':: { 'function': { help: |||
      A string with sops-encrypted data
    ||| } },
    withSource(value):: self {
      ephemeral+: {
        sops_external+: { [terraformName]+: { source: value } },
      },
    },
  },
  ref(terraformName):: {
    local refSelf = self,
    plain(suffix=''):: '${ sops_external.%s%s }' % [terraformName, suffix],
    fields:: {
      '#data':: { 'function': { help: |||
        Decrypted data
      ||| } },
      data(suffix=''):: refSelf.plain('.data%s' % suffix),
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
