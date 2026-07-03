{
  new(terraformName, mount):: self.functions(terraformName) {
    _type:: 'tf',
    resource+: {
      vault_kv_secret_backend_v2+: {
        [terraformName]+: {
          mount: mount,
        },
      },
    },
  },
  functions(terraformName):: {
    '#withCasRequired':: { 'function': { help: |||
      If true, all keys will require the cas parameter to be set on all write requests. 
    ||| } },
    withCasRequired(value):: self {
      resource+: {
        vault_kv_secret_backend_v2+: { [terraformName]+: { cas_required: value } },
      },
    },
    '#withDeleteVersionAfter':: { 'function': { help: |||
      If set, specifies the length of time before a version is deleted 
    ||| } },
    withDeleteVersionAfter(value):: self {
      resource+: {
        vault_kv_secret_backend_v2+: { [terraformName]+: { delete_version_after: value } },
      },
    },
    withId(value):: self {
      resource+: {
        vault_kv_secret_backend_v2+: { [terraformName]+: { id: value } },
      },
    },
    '#withMaxVersions':: { 'function': { help: |||
      The number of versions to keep per key. 
    ||| } },
    withMaxVersions(value):: self {
      resource+: {
        vault_kv_secret_backend_v2+: { [terraformName]+: { max_versions: value } },
      },
    },
    '#withMount':: { 'function': { help: |||
      Path where KV-V2 engine is mounted. 
    ||| } },
    withMount(value):: self {
      resource+: {
        vault_kv_secret_backend_v2+: { [terraformName]+: { mount: value } },
      },
    },
    '#withNamespace':: { 'function': { help: |||
      Target namespace. (requires Enterprise) 
    ||| } },
    withNamespace(value):: self {
      resource+: {
        vault_kv_secret_backend_v2+: { [terraformName]+: { namespace: value } },
      },
    },
  },
  ref(terraformName):: {
    local refSelf = self,
    plain(suffix=''):: '${ vault_kv_secret_backend_v2.%s%s }' % [terraformName, suffix],
    fields:: {
      '#cas_required':: { 'function': { help: |||
        If true, all keys will require the cas parameter to be set on all write requests. 
      ||| } },
      cas_required(suffix=''):: refSelf.plain('.cas_required%s' % suffix),
      '#delete_version_after':: { 'function': { help: |||
        If set, specifies the length of time before a version is deleted 
      ||| } },
      delete_version_after(suffix=''):: refSelf.plain('.delete_version_after%s' % suffix),
      id(suffix=''):: refSelf.plain('.id%s' % suffix),
      '#max_versions':: { 'function': { help: |||
        The number of versions to keep per key. 
      ||| } },
      max_versions(suffix=''):: refSelf.plain('.max_versions%s' % suffix),
      '#mount':: { 'function': { help: |||
        Path where KV-V2 engine is mounted. 
      ||| } },
      mount(suffix=''):: refSelf.plain('.mount%s' % suffix),
      '#namespace':: { 'function': { help: |||
        Target namespace. (requires Enterprise) 
      ||| } },
      namespace(suffix=''):: refSelf.plain('.namespace%s' % suffix),
    },
  },
}
