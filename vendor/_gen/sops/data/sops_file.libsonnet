{
  local outerSelf = self,
  '#new':: { 'function': {
    help:
      |||
        Read data from a sops-encrypted file on disk.
      |||,
  } },
  new(terraformName, source_file):: self.functions(terraformName) + {
    _type:: 'tf',
    ref():: outerSelf.ref(terraformName),
    data+: {
      sops_file+: { [terraformName]+: {
        source_file: source_file,
      } },
    },
  }
  ,
  functions(terraformName):: {
    withForEach(value):: self { data+: {
      sops_file+: { [terraformName]+: { for_each: value } },
    } },
    withDependsOn(value):: self { data+: {
      sops_file+: { [terraformName]+: { depends_on: value } },
    } },
    withCount(value):: self { data+: {
      sops_file+: { [terraformName]+: { count: value } },
    } },
    withLifecycle(value):: self { data+: {
      sops_file+: { [terraformName]+: { lifecycle: value } },
    } },
    withProvider(value):: self { data+: {
      sops_file+: { [terraformName]+: { provider: value } },
    } },
    withProviders(value):: self { data+: {
      sops_file+: { [terraformName]+: { providers: value } },
    } },
    addCustomData(name, value):: self { data+: {
      sops_file+: { [terraformName]+: { [name]: value } },
    } },
    '#withInputType':: { 'function': {
      help:
        |||
          The provider will use the file extension to determine how to unmarshal the data. If your file does not have the usual extension, set this argument to `yaml`, `json`, `dotenv` (`.env`), `ini` accordingly, or `raw` if the encrypted data is encoded differently.
        |||,
    } },
    withInputType(value):: self { data+: {
      sops_file+: { [terraformName]+: { input_type: value } },
    } },
    '#withSourceFile':: { 'function': {
      help:
        |||
          Path to the encrypted file.
        |||,
    } },
    withSourceFile(value):: self { data+: {
      sops_file+: { [terraformName]+: { source_file: value } },
    } },

  }
  ,
  ref(terraformName):: {
    local refSelf = self,
    plain(suffix=''):: '${ data.sops_file.%s%s }' % [terraformName, suffix],
    fields:: {
      '#data':: { 'function': {
        help:
          |||
            The unmarshalled data as a dictionary. Use dot-separated keys to access nested data.
          |||,
      } },
      data(suffix=''):: refSelf.plain('.data%s' % suffix),
      '#id':: { 'function': {
        help:
          |||
            Unique identifier for this data source.
          |||,
      } },
      id(suffix=''):: refSelf.plain('.id%s' % suffix),
      '#input_type':: { 'function': {
        help:
          |||
            The provider will use the file extension to determine how to unmarshal the data. If your file does not have the usual extension, set this argument to `yaml`, `json`, `dotenv` (`.env`), `ini` accordingly, or `raw` if the encrypted data is encoded differently.
          |||,
      } },
      input_type(suffix=''):: refSelf.plain('.input_type%s' % suffix),
      '#raw':: { 'function': {
        help:
          |||
            The entire unencrypted file as a string.
          |||,
      } },
      raw(suffix=''):: refSelf.plain('.raw%s' % suffix),
      '#source_file':: { 'function': {
        help:
          |||
            Path to the encrypted file.
          |||,
      } },
      source_file(suffix=''):: refSelf.plain('.source_file%s' % suffix),

    },

  },

}
