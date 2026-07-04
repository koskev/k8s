{
  local outerSelf = self,
  new(terraformName, path):: self.functions(terraformName) {
    ref():: outerSelf.ref(terraformName),
    _type:: 'tf',
    data+: {
      vault_kv_secrets_list+: {
        [terraformName]+: {
          path: path,
        },
      },
    },
  },
  functions(terraformName):: {
    withId(value):: self {
      data+: {
        vault_kv_secrets_list+: { [terraformName]+: { id: value } },
      },
    },
    '#withNamespace':: { 'function': { help: |||
      Target namespace. (requires Enterprise)
    ||| } },
    withNamespace(value):: self {
      data+: {
        vault_kv_secrets_list+: { [terraformName]+: { namespace: value } },
      },
    },
    '#withPath':: { 'function': { help: |||
      Full KV-V1 path where secrets will be listed.
    ||| } },
    withPath(value):: self {
      data+: {
        vault_kv_secrets_list+: { [terraformName]+: { path: value } },
      },
    },
  },
  ref(terraformName):: {
    local refSelf = self,
    plain(suffix=''):: '${ data.vault_kv_secrets_list.%s%s }' % [terraformName, suffix],
    fields:: {
      id(suffix=''):: refSelf.plain('.id%s' % suffix),
      '#names':: { 'function': { help: |||
        List of all secret names.
      ||| } },
      names(suffix=''):: refSelf.plain('.names%s' % suffix),
      '#namespace':: { 'function': { help: |||
        Target namespace. (requires Enterprise)
      ||| } },
      namespace(suffix=''):: refSelf.plain('.namespace%s' % suffix),
      '#path':: { 'function': { help: |||
        Full KV-V1 path where secrets will be listed.
      ||| } },
      path(suffix=''):: refSelf.plain('.path%s' % suffix),
    },
  },
}
