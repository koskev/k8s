{
  new(terraformName, data_json, path):: self.functions(terraformName) {
    _type:: 'tf',
    resource+: {
      vault_generic_endpoint+: {
        [terraformName]+: {
          data_json: data_json,
          path: path,
        },
      },
    },
  },
  functions(terraformName):: {
    '#withDataJson':: { 'function': { help: |||
      JSON-encoded data to write. 
    ||| } },
    withDataJson(value):: self {
      resource+: {
        vault_generic_endpoint+: { [terraformName]+: { data_json: value } },
      },
    },
    '#withDisableDelete':: { 'function': { help: |||
      Don't attempt to delete the path from Vault if true 
    ||| } },
    withDisableDelete(value):: self {
      resource+: {
        vault_generic_endpoint+: { [terraformName]+: { disable_delete: value } },
      },
    },
    '#withDisableRead':: { 'function': { help: |||
      Don't attempt to read the path from Vault if true; drift won't be detected 
    ||| } },
    withDisableRead(value):: self {
      resource+: {
        vault_generic_endpoint+: { [terraformName]+: { disable_read: value } },
      },
    },
    withId(value):: self {
      resource+: {
        vault_generic_endpoint+: { [terraformName]+: { id: value } },
      },
    },
    '#withIgnoreAbsentFields':: { 'function': { help: |||
      When reading, disregard fields not present in data_json 
    ||| } },
    withIgnoreAbsentFields(value):: self {
      resource+: {
        vault_generic_endpoint+: { [terraformName]+: { ignore_absent_fields: value } },
      },
    },
    '#withNamespace':: { 'function': { help: |||
      Target namespace. (requires Enterprise) 
    ||| } },
    withNamespace(value):: self {
      resource+: {
        vault_generic_endpoint+: { [terraformName]+: { namespace: value } },
      },
    },
    '#withPath':: { 'function': { help: |||
      Full path where to the endpoint that will be written 
    ||| } },
    withPath(value):: self {
      resource+: {
        vault_generic_endpoint+: { [terraformName]+: { path: value } },
      },
    },
    '#withWriteFields':: { 'function': { help: |||
      Top-level fields returned by write to persist in state 
    ||| } },
    withWriteFields(value):: self {
      resource+: {
        vault_generic_endpoint+: { [terraformName]+: { write_fields: value } },
      },
    },
  },
  ref(terraformName):: {
    local refSelf = self,
    plain(suffix=''):: '${ vault_generic_endpoint.%s%s }' % [terraformName, suffix],
    fields:: {
      '#data_json':: { 'function': { help: |||
        JSON-encoded data to write. 
      ||| } },
      data_json(suffix=''):: refSelf.plain('.data_json%s' % suffix),
      '#disable_delete':: { 'function': { help: |||
        Don't attempt to delete the path from Vault if true 
      ||| } },
      disable_delete(suffix=''):: refSelf.plain('.disable_delete%s' % suffix),
      '#disable_read':: { 'function': { help: |||
        Don't attempt to read the path from Vault if true; drift won't be detected 
      ||| } },
      disable_read(suffix=''):: refSelf.plain('.disable_read%s' % suffix),
      id(suffix=''):: refSelf.plain('.id%s' % suffix),
      '#ignore_absent_fields':: { 'function': { help: |||
        When reading, disregard fields not present in data_json 
      ||| } },
      ignore_absent_fields(suffix=''):: refSelf.plain('.ignore_absent_fields%s' % suffix),
      '#namespace':: { 'function': { help: |||
        Target namespace. (requires Enterprise) 
      ||| } },
      namespace(suffix=''):: refSelf.plain('.namespace%s' % suffix),
      '#path':: { 'function': { help: |||
        Full path where to the endpoint that will be written 
      ||| } },
      path(suffix=''):: refSelf.plain('.path%s' % suffix),
      '#write_data':: { 'function': { help: |||
        Map of strings returned by write operation 
      ||| } },
      write_data(suffix=''):: refSelf.plain('.write_data%s' % suffix),
      '#write_data_json':: { 'function': { help: |||
        JSON data returned by write operation 
      ||| } },
      write_data_json(suffix=''):: refSelf.plain('.write_data_json%s' % suffix),
      '#write_fields':: { 'function': { help: |||
        Top-level fields returned by write to persist in state 
      ||| } },
      write_fields(suffix=''):: refSelf.plain('.write_fields%s' % suffix),
    },
  },
}
