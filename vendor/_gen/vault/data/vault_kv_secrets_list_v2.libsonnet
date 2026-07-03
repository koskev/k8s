{
  new(terraformName, mount):: {
    _type:: 'tf',
    data+: {
      vault_kv_secrets_list_v2+: { [terraformName]+: {
        mount: mount,
      } },
    },
    withId(value):: self {
      data+: {
        vault_kv_secrets_list_v2+: { [terraformName]+: { id: value } },
      },
    },
    '#withMount':: { 'function': { help: |||
      Path where KV-V2 engine is mounted 
    ||| } },
    withMount(value):: self {
      data+: {
        vault_kv_secrets_list_v2+: { [terraformName]+: { mount: value } },
      },
    },
    '#withName':: { 'function': { help: |||
      Full named path of the secret. For a nested secret, the name is the nested path excluding the mount and data prefix. For example, for a secret at 'kvv2/data/foo/bar/baz', the name is 'foo/bar/baz' 
    ||| } },
    withName(value):: self {
      data+: {
        vault_kv_secrets_list_v2+: { [terraformName]+: { name: value } },
      },
    },
    '#withNames':: { 'function': { help: |||
      List of all secret names. 
    ||| } },
    withNames(value):: self {
      data+: {
        vault_kv_secrets_list_v2+: { [terraformName]+: { names: value } },
      },
    },
    '#withNamespace':: { 'function': { help: |||
      Target namespace. (requires Enterprise) 
    ||| } },
    withNamespace(value):: self {
      data+: {
        vault_kv_secrets_list_v2+: { [terraformName]+: { namespace: value } },
      },
    },
    '#withPath':: { 'function': { help: |||
      Full path where the KV-V2 secrets are listed. 
    ||| } },
    withPath(value):: self {
      data+: {
        vault_kv_secrets_list_v2+: { [terraformName]+: { path: value } },
      },
    },
  },
}
