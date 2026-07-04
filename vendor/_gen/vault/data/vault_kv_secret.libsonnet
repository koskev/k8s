{
  local outerSelf = self,
  new(terraformName, path):: self.functions(terraformName) {
    ref():: outerSelf.ref(terraformName),
    _type:: 'tf',
    data+: {
      vault_kv_secret+: {
        [terraformName]+: {
          path: path,
        },
      },
    },
  },
  functions(terraformName):: {
    withId(value):: self {
      data+: {
        vault_kv_secret+: { [terraformName]+: { id: value } },
      },
    },
    '#withNamespace':: { 'function': { help: |||
      Target namespace. (requires Enterprise)
    ||| } },
    withNamespace(value):: self {
      data+: {
        vault_kv_secret+: { [terraformName]+: { namespace: value } },
      },
    },
    '#withPath':: { 'function': { help: |||
      Full path of the KV-V1 secret.
    ||| } },
    withPath(value):: self {
      data+: {
        vault_kv_secret+: { [terraformName]+: { path: value } },
      },
    },
  },
  ref(terraformName):: {
    local refSelf = self,
    plain(suffix=''):: '${ data.vault_kv_secret.%s%s }' % [terraformName, suffix],
    fields:: {
      '#data':: { 'function': { help: |||
        Map of strings read from Vault.
      ||| } },
      data(suffix=''):: refSelf.plain('.data%s' % suffix),
      '#data_json':: { 'function': { help: |||
        JSON-encoded secret data read from Vault.
      ||| } },
      data_json(suffix=''):: refSelf.plain('.data_json%s' % suffix),
      id(suffix=''):: refSelf.plain('.id%s' % suffix),
      '#lease_duration':: { 'function': { help: |||
        Lease duration in seconds.
      ||| } },
      lease_duration(suffix=''):: refSelf.plain('.lease_duration%s' % suffix),
      '#lease_id':: { 'function': { help: |||
        Lease identifier assigned by Vault.
      ||| } },
      lease_id(suffix=''):: refSelf.plain('.lease_id%s' % suffix),
      '#lease_renewable':: { 'function': { help: |||
        True if the duration of this lease can be extended through renewal.
      ||| } },
      lease_renewable(suffix=''):: refSelf.plain('.lease_renewable%s' % suffix),
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
