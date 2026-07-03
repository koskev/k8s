{
  new(terraformName, mount, name):: {
    _type:: 'tf',
    data+: {
      vault_kv_secret_subkeys_v2+: { [terraformName]+: {
        mount: mount,
        name: name,
      } },
    },
    '#withData':: { 'function': { help: |||
      Subkeys stored as a map of strings. 
    ||| } },
    withData(value):: self {
      data+: {
        vault_kv_secret_subkeys_v2+: { [terraformName]+: { data: value } },
      },
    },
    '#withDataJson':: { 'function': { help: |||
      Subkeys for the KV-V2 secret read from Vault. 
    ||| } },
    withDataJson(value):: self {
      data+: {
        vault_kv_secret_subkeys_v2+: { [terraformName]+: { data_json: value } },
      },
    },
    '#withDepth':: { 'function': { help: |||
      Specifies the deepest nesting level to provide in the output.If non-zero, keys that reside at the specified depth value will be artificially treated as leaves and will thus be 'null' even if further underlying sub-keys exist. 
    ||| } },
    withDepth(value):: self {
      data+: {
        vault_kv_secret_subkeys_v2+: { [terraformName]+: { depth: value } },
      },
    },
    withId(value):: self {
      data+: {
        vault_kv_secret_subkeys_v2+: { [terraformName]+: { id: value } },
      },
    },
    '#withMount':: { 'function': { help: |||
      Path where KV-V2 engine is mounted 
    ||| } },
    withMount(value):: self {
      data+: {
        vault_kv_secret_subkeys_v2+: { [terraformName]+: { mount: value } },
      },
    },
    '#withName':: { 'function': { help: |||
      Full name of the secret. For a nested secret, the name is the nested path excluding the mount and data prefix. For example, for a secret at 'kvv2/data/foo/bar/baz', the name is 'foo/bar/baz' 
    ||| } },
    withName(value):: self {
      data+: {
        vault_kv_secret_subkeys_v2+: { [terraformName]+: { name: value } },
      },
    },
    '#withNamespace':: { 'function': { help: |||
      Target namespace. (requires Enterprise) 
    ||| } },
    withNamespace(value):: self {
      data+: {
        vault_kv_secret_subkeys_v2+: { [terraformName]+: { namespace: value } },
      },
    },
    '#withPath':: { 'function': { help: |||
      Full path where the generic secret will be written. 
    ||| } },
    withPath(value):: self {
      data+: {
        vault_kv_secret_subkeys_v2+: { [terraformName]+: { path: value } },
      },
    },
    '#withVersion':: { 'function': { help: |||
      Specifies the version to return. If not set the latest version is returned. 
    ||| } },
    withVersion(value):: self {
      data+: {
        vault_kv_secret_subkeys_v2+: { [terraformName]+: { version: value } },
      },
    },
  },
}
