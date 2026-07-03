{
  new(terraformName, mount, name):: {
    _type:: 'tf',
    data+: {
      vault_kv_secret_v2+: { [terraformName]+: {
        mount: mount,
        name: name,
      } },
    },
    '#withCreatedTime':: { 'function': { help: |||
      Time at which the secret was created 
    ||| } },
    withCreatedTime(value):: self {
      data+: {
        vault_kv_secret_v2+: { [terraformName]+: { created_time: value } },
      },
    },
    '#withCustomMetadata':: { 'function': { help: |||
      Custom metadata for the secret 
    ||| } },
    withCustomMetadata(value):: self {
      data+: {
        vault_kv_secret_v2+: { [terraformName]+: { custom_metadata: value } },
      },
    },
    '#withData':: { 'function': { help: |||
      Map of strings read from Vault. 
    ||| } },
    withData(value):: self {
      data+: {
        vault_kv_secret_v2+: { [terraformName]+: { data: value } },
      },
    },
    '#withDataJson':: { 'function': { help: |||
      JSON-encoded secret data read from Vault. 
    ||| } },
    withDataJson(value):: self {
      data+: {
        vault_kv_secret_v2+: { [terraformName]+: { data_json: value } },
      },
    },
    '#withDeletionTime':: { 'function': { help: |||
      Deletion time for the secret 
    ||| } },
    withDeletionTime(value):: self {
      data+: {
        vault_kv_secret_v2+: { [terraformName]+: { deletion_time: value } },
      },
    },
    '#withDestroyed':: { 'function': { help: |||
      Indicates whether the secret has been destroyed 
    ||| } },
    withDestroyed(value):: self {
      data+: {
        vault_kv_secret_v2+: { [terraformName]+: { destroyed: value } },
      },
    },
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
    '#withPath':: { 'function': { help: |||
      Full path where the KVV2 secret is written. 
    ||| } },
    withPath(value):: self {
      data+: {
        vault_kv_secret_v2+: { [terraformName]+: { path: value } },
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
}
