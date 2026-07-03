{
  new(terraformName, mount, name):: self.functions(terraformName) {
    _type:: 'tf',
    data+: {
      vault_kv_secret_v2+: {
        [terraformName]+: {
          mount: mount,
          name: name,
        },
      },
    },
  },
  functions(terraformName):: {
    withId(value):: self {
      data+: {
        vault_kv_secret_v2+: { [terraformName]+: { id: value } },
      },
    },
    '#withMount':: { 'function': { help: |||
      Path where KV-V2 engine is mounted 
    ||| } },
    withMount(value):: self {
      data+: {
        vault_kv_secret_v2+: { [terraformName]+: { mount: value } },
      },
    },
    '#withName':: { 'function': { help: |||
      Full name of the secret. For a nested secret, the name is the nested path excluding the mount and data prefix. For example, for a secret at 'kvv2/data/foo/bar/baz', the name is 'foo/bar/baz' 
    ||| } },
    withName(value):: self {
      data+: {
        vault_kv_secret_v2+: { [terraformName]+: { name: value } },
      },
    },
    '#withNamespace':: { 'function': { help: |||
      Target namespace. (requires Enterprise) 
    ||| } },
    withNamespace(value):: self {
      data+: {
        vault_kv_secret_v2+: { [terraformName]+: { namespace: value } },
      },
    },
    '#withVersion':: { 'function': { help: |||
      Version of the secret to retrieve 
    ||| } },
    withVersion(value):: self {
      data+: {
        vault_kv_secret_v2+: { [terraformName]+: { version: value } },
      },
    },
  },
  ref(terraformName):: {
    local refSelf = self,
    plain(suffix=''):: '${ data.vault_kv_secret_v2.%s%s }' % [terraformName, suffix],
    fields:: {
      '#created_time':: { 'function': { help: |||
        Time at which the secret was created 
      ||| } },
      created_time(suffix=''):: refSelf.plain('.created_time%s' % suffix),
      '#custom_metadata':: { 'function': { help: |||
        Custom metadata for the secret 
      ||| } },
      custom_metadata(suffix=''):: refSelf.plain('.custom_metadata%s' % suffix),
      '#data':: { 'function': { help: |||
        Map of strings read from Vault. 
      ||| } },
      data(suffix=''):: refSelf.plain('.data%s' % suffix),
      '#data_json':: { 'function': { help: |||
        JSON-encoded secret data read from Vault. 
      ||| } },
      data_json(suffix=''):: refSelf.plain('.data_json%s' % suffix),
      '#deletion_time':: { 'function': { help: |||
        Deletion time for the secret 
      ||| } },
      deletion_time(suffix=''):: refSelf.plain('.deletion_time%s' % suffix),
      '#destroyed':: { 'function': { help: |||
        Indicates whether the secret has been destroyed 
      ||| } },
      destroyed(suffix=''):: refSelf.plain('.destroyed%s' % suffix),
      id(suffix=''):: refSelf.plain('.id%s' % suffix),
      '#mount':: { 'function': { help: |||
        Path where KV-V2 engine is mounted 
      ||| } },
      mount(suffix=''):: refSelf.plain('.mount%s' % suffix),
      '#name':: { 'function': { help: |||
        Full name of the secret. For a nested secret, the name is the nested path excluding the mount and data prefix. For example, for a secret at 'kvv2/data/foo/bar/baz', the name is 'foo/bar/baz' 
      ||| } },
      name(suffix=''):: refSelf.plain('.name%s' % suffix),
      '#namespace':: { 'function': { help: |||
        Target namespace. (requires Enterprise) 
      ||| } },
      namespace(suffix=''):: refSelf.plain('.namespace%s' % suffix),
      '#path':: { 'function': { help: |||
        Full path where the KVV2 secret is written. 
      ||| } },
      path(suffix=''):: refSelf.plain('.path%s' % suffix),
      '#version':: { 'function': { help: |||
        Version of the secret to retrieve 
      ||| } },
      version(suffix=''):: refSelf.plain('.version%s' % suffix),
    },
  },
}
