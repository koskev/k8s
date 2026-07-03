{
  new(terraformName, data_json, path):: self.functions(terraformName) {
    _type:: 'tf',
    resource+: {
      vault_generic_secret+: {
        [terraformName]+: {
          data_json: data_json,
          path: path,
        },
      },
    },
  },
  functions(terraformName):: {
    '#withDataJson':: { 'function': { help: |||
      JSON-encoded secret data to write. 
    ||| } },
    withDataJson(value):: self {
      resource+: {
        vault_generic_secret+: { [terraformName]+: { data_json: value } },
      },
    },
    '#withDeleteAllVersions':: { 'function': { help: |||
      Only applicable for kv-v2 stores. If set, permanently deletes all versions for the specified key. 
    ||| } },
    withDeleteAllVersions(value):: self {
      resource+: {
        vault_generic_secret+: { [terraformName]+: { delete_all_versions: value } },
      },
    },
    '#withDisableRead':: { 'function': { help: |||
      Don't attempt to read the token from Vault if true; drift won't be detected. 
    ||| } },
    withDisableRead(value):: self {
      resource+: {
        vault_generic_secret+: { [terraformName]+: { disable_read: value } },
      },
    },
    withId(value):: self {
      resource+: {
        vault_generic_secret+: { [terraformName]+: { id: value } },
      },
    },
    '#withNamespace':: { 'function': { help: |||
      Target namespace. (requires Enterprise) 
    ||| } },
    withNamespace(value):: self {
      resource+: {
        vault_generic_secret+: { [terraformName]+: { namespace: value } },
      },
    },
    '#withPath':: { 'function': { help: |||
      Full path where the generic secret will be written. 
    ||| } },
    withPath(value):: self {
      resource+: {
        vault_generic_secret+: { [terraformName]+: { path: value } },
      },
    },
  },
  ref(terraformName):: {
    local refSelf = self,
    plain(suffix=''):: '${ vault_generic_secret.%s%s }' % [terraformName, suffix],
    fields:: {
      '#data':: { 'function': { help: |||
        Map of strings read from Vault. 
      ||| } },
      data(suffix=''):: refSelf.plain('.data%s' % suffix),
      '#data_json':: { 'function': { help: |||
        JSON-encoded secret data to write. 
      ||| } },
      data_json(suffix=''):: refSelf.plain('.data_json%s' % suffix),
      '#delete_all_versions':: { 'function': { help: |||
        Only applicable for kv-v2 stores. If set, permanently deletes all versions for the specified key. 
      ||| } },
      delete_all_versions(suffix=''):: refSelf.plain('.delete_all_versions%s' % suffix),
      '#disable_read':: { 'function': { help: |||
        Don't attempt to read the token from Vault if true; drift won't be detected. 
      ||| } },
      disable_read(suffix=''):: refSelf.plain('.disable_read%s' % suffix),
      id(suffix=''):: refSelf.plain('.id%s' % suffix),
      '#namespace':: { 'function': { help: |||
        Target namespace. (requires Enterprise) 
      ||| } },
      namespace(suffix=''):: refSelf.plain('.namespace%s' % suffix),
      '#path':: { 'function': { help: |||
        Full path where the generic secret will be written. 
      ||| } },
      path(suffix=''):: refSelf.plain('.path%s' % suffix),
    },
  },
}
