{
  new(terraformName, mount, name):: {
    _type:: 'tf',
    resource+: {
      vault_kv_secret_v2+: { [terraformName]+: {
        mount: mount,
        name: name,
      } },
    },
    '#withCas': { 'function': { help: |||
      This flag is required if cas_required is set to true on either the secret or the engine's config. In order for a write to be successful, cas must be set to the current version of the secret. 
    ||| } },
    withCas(value):: self {
      resource+: {
        vault_kv_secret_v2+: { [terraformName]+: { cas: value } },
      },
    },
    '#withData': { 'function': { help: |||
      Map of strings read from Vault. 
    ||| } },
    withData(value):: self {
      resource+: {
        vault_kv_secret_v2+: { [terraformName]+: { data: value } },
      },
    },
    '#withDataJson': { 'function': { help: |||
      JSON-encoded secret data to write. 
    ||| } },
    withDataJson(value):: self {
      resource+: {
        vault_kv_secret_v2+: { [terraformName]+: { data_json: value } },
      },
    },
    '#withDataJsonWo': { 'function': { help: |||
      Write-Only JSON-encoded secret data to write. 
    ||| } },
    withDataJsonWo(value):: self {
      resource+: {
        vault_kv_secret_v2+: { [terraformName]+: { data_json_wo: value } },
      },
    },
    '#withDataJsonWoVersion': { 'function': { help: |||
      Version counter for write-only secret data. 
    ||| } },
    withDataJsonWoVersion(value):: self {
      resource+: {
        vault_kv_secret_v2+: { [terraformName]+: { data_json_wo_version: value } },
      },
    },
    '#withDeleteAllVersions': { 'function': { help: |||
      If set to true, permanently deletes all versions for the specified key. 
    ||| } },
    withDeleteAllVersions(value):: self {
      resource+: {
        vault_kv_secret_v2+: { [terraformName]+: { delete_all_versions: value } },
      },
    },
    '#withDisableRead': { 'function': { help: |||
      If set to true, disables reading secret from Vault; note: drift won't be detected. 
    ||| } },
    withDisableRead(value):: self {
      resource+: {
        vault_kv_secret_v2+: { [terraformName]+: { disable_read: value } },
      },
    },
    withId(value):: self {
      resource+: {
        vault_kv_secret_v2+: { [terraformName]+: { id: value } },
      },
    },
    '#withMetadata': { 'function': { help: |||
      Metadata associated with this secret read from Vault. 
    ||| } },
    withMetadata(value):: self {
      resource+: {
        vault_kv_secret_v2+: { [terraformName]+: { metadata: value } },
      },
    },
    '#withMount': { 'function': { help: |||
      Path where KV-V2 engine is mounted. 
    ||| } },
    withMount(value):: self {
      resource+: {
        vault_kv_secret_v2+: { [terraformName]+: { mount: value } },
      },
    },
    '#withName': { 'function': { help: |||
      Full name of the secret. For a nested secret, the name is the nested path excluding the mount and data prefix. For example, for a secret at 'kvv2/data/foo/bar/baz', the name is 'foo/bar/baz' 
    ||| } },
    withName(value):: self {
      resource+: {
        vault_kv_secret_v2+: { [terraformName]+: { name: value } },
      },
    },
    '#withNamespace': { 'function': { help: |||
      Target namespace. (requires Enterprise) 
    ||| } },
    withNamespace(value):: self {
      resource+: {
        vault_kv_secret_v2+: { [terraformName]+: { namespace: value } },
      },
    },
    '#withOptions': { 'function': { help: |||
      An object that holds option settings. 
    ||| } },
    withOptions(value):: self {
      resource+: {
        vault_kv_secret_v2+: { [terraformName]+: { options: value } },
      },
    },
    '#withPath': { 'function': { help: |||
      Full path where the KV-V2 secret will be written. 
    ||| } },
    withPath(value):: self {
      resource+: {
        vault_kv_secret_v2+: { [terraformName]+: { path: value } },
      },
    },
  },
}
