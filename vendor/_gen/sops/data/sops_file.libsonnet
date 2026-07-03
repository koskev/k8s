{
  new(terraformName, source_file):: {
    _type:: 'tf',
    data+: {
      sops_file+: { [terraformName]+: {
        source_file: source_file,
      } },
    },
    '#withData':: { 'function': { help: |||
      The unmarshalled data as a dictionary. Use dot-separated keys to access nested data. 
    ||| } },
    withData(value):: self {
      data+: {
        sops_file+: { [terraformName]+: { data: value } },
      },
    },
    '#withId':: { 'function': { help: |||
      Unique identifier for this data source. 
    ||| } },
    withId(value):: self {
      data+: {
        sops_file+: { [terraformName]+: { id: value } },
      },
    },
    '#withInputType':: { 'function': { help: |||
      The provider will use the file extension to determine how to unmarshal the data. If your file does not have the usual extension, set this argument to `yaml`, `json`, `dotenv` (`.env`), `ini` accordingly, or `raw` if the encrypted data is encoded differently. 
    ||| } },
    withInputType(value):: self {
      data+: {
        sops_file+: { [terraformName]+: { input_type: value } },
      },
    },
    '#withRaw':: { 'function': { help: |||
      The entire unencrypted file as a string. 
    ||| } },
    withRaw(value):: self {
      data+: {
        sops_file+: { [terraformName]+: { raw: value } },
      },
    },
    '#withSourceFile':: { 'function': { help: |||
      Path to the encrypted file. 
    ||| } },
    withSourceFile(value):: self {
      data+: {
        sops_file+: { [terraformName]+: { source_file: value } },
      },
    },
  },
}
