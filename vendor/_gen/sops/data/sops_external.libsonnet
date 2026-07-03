{
  new(terraformName, source):: {
    _type:: 'tf',
    data+: {
      sops_external+: { [terraformName]+: {
        source: source,
      } },
    },
    '#withData':: { 'function': { help: |||
      Decrypted data 
    ||| } },
    withData(value):: self {
      data+: {
        sops_external+: { [terraformName]+: { data: value } },
      },
    },
    '#withId':: { 'function': { help: |||
      Unique identifier for this data source 
    ||| } },
    withId(value):: self {
      data+: {
        sops_external+: { [terraformName]+: { id: value } },
      },
    },
    '#withInputType':: { 'function': { help: |||
      `yaml`, `json` `dotenv` (`.env`), `ini` or `raw`, depending on the structure of the un-encrypted data. 
    ||| } },
    withInputType(value):: self {
      data+: {
        sops_external+: { [terraformName]+: { input_type: value } },
      },
    },
    '#withRaw':: { 'function': { help: |||
      Raw decrypted content 
    ||| } },
    withRaw(value):: self {
      data+: {
        sops_external+: { [terraformName]+: { raw: value } },
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
}
