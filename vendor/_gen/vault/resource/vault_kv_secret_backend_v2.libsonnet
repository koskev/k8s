{
  new(terraformName, mount):: {
    _type:: 'tf',
    resource+: {
      vault_kv_secret_backend_v2+: { [terraformName]+: {
        mount: mount,
      } },
    },
    '#withCasRequired': { 'function': { help: |||
      If true, all keys will require the cas parameter to be set on all write requests. 
    ||| } },
    withCasRequired(value):: self {
      resource+: {
        vault_kv_secret_backend_v2+: { [terraformName]+: { cas_required: value } },
      },
    },
    '#withDeleteVersionAfter': { 'function': { help: |||
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
    '#withMaxVersions': { 'function': { help: |||
      The number of versions to keep per key. 
    ||| } },
    withMaxVersions(value):: self {
      resource+: {
        vault_kv_secret_backend_v2+: { [terraformName]+: { max_versions: value } },
      },
    },
    '#withMount': { 'function': { help: |||
      Path where KV-V2 engine is mounted. 
    ||| } },
    withMount(value):: self {
      resource+: {
        vault_kv_secret_backend_v2+: { [terraformName]+: { mount: value } },
      },
    },
    '#withNamespace': { 'function': { help: |||
      Target namespace. (requires Enterprise) 
    ||| } },
    withNamespace(value):: self {
      resource+: {
        vault_kv_secret_backend_v2+: { [terraformName]+: { namespace: value } },
      },
    },
  },
}
