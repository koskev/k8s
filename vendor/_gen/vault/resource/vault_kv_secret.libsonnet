{
  local outerSelf = self,
  new(terraformName, data_json, path):: self.functions(terraformName) {
    ref():: outerSelf.ref(terraformName),
    _type:: 'tf',
    resource+: {
      vault_kv_secret+: {
        [terraformName]+: {
          data_json: data_json,
          path: path,
        },
      },
    },
  },
  functions(terraformName):: {
    withForEach(value):: self {
      resource+: {
        vault_kv_secret+: { [terraformName]+: { for_each: value } },
      },
    },
    withDependsOn(value):: self {
      resource+: {
        vault_kv_secret+: { [terraformName]+: { depends_on: value } },
      },
    },
    withCount(value):: self {
      resource+: {
        vault_kv_secret+: { [terraformName]+: { count: value } },
      },
    },
    withLifecycle(value):: self {
      resource+: {
        vault_kv_secret+: { [terraformName]+: { lifecycle: value } },
      },
    },
    withProvider(value):: self {
      resource+: {
        vault_kv_secret+: { [terraformName]+: { provider: value } },
      },
    },
    withProviders(value):: self {
      resource+: {
        vault_kv_secret+: { [terraformName]+: { providers: value } },
      },
    },
    '#data_json':: { 'function': { help: |||
      JSON-encoded secret data to write.
    ||| } },
    withDataJson(value):: self {
      resource+: {
        vault_kv_secret+: { [terraformName]+: { data_json: value } },
      },
    },
    withId(value):: self {
      resource+: {
        vault_kv_secret+: { [terraformName]+: { id: value } },
      },
    },
    '#namespace':: { 'function': { help: |||
      Target namespace. (requires Enterprise)
    ||| } },
    withNamespace(value):: self {
      resource+: {
        vault_kv_secret+: { [terraformName]+: { namespace: value } },
      },
    },
    '#path':: { 'function': { help: |||
      Full path of the KV-V1 secret.
    ||| } },
    withPath(value):: self {
      resource+: {
        vault_kv_secret+: { [terraformName]+: { path: value } },
      },
    },
  },
  ref(terraformName):: {
    local refSelf = self,
    plain(suffix=''):: '${ vault_kv_secret.%s%s }' % [terraformName, suffix],
    fields:: {
      '#data':: { 'function': { help: |||
        Map of strings read from Vault.
      ||| } },
      data(suffix=''):: refSelf.plain('.data%s' % suffix),
      '#data_json':: { 'function': { help: |||
        JSON-encoded secret data to write.
      ||| } },
      data_json(suffix=''):: refSelf.plain('.data_json%s' % suffix),
      id(suffix=''):: refSelf.plain('.id%s' % suffix),
      '#namespace':: { 'function': { help: |||
        Target namespace. (requires Enterprise)
      ||| } },
      namespace(suffix=''):: refSelf.plain('.namespace%s' % suffix),
      '#path':: { 'function': { help: |||
        Full path of the KV-V1 secret.
      ||| } },
      path(suffix=''):: refSelf.plain('.path%s' % suffix),
    },
  },
}
