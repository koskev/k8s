{
  new(terraformName, path):: {
    _type:: 'tf',
    data+: {
      vault_kv_secret+: { [terraformName]+: {
        path: path,
      } },
    },
    '#withData': { 'function': { help: |||
      Map of strings read from Vault. 
    ||| } },
    withData(value):: self {
      data+: {
        vault_kv_secret+: { [terraformName]+: { data: value } },
      },
    },
    '#withDataJson': { 'function': { help: |||
      JSON-encoded secret data read from Vault. 
    ||| } },
    withDataJson(value):: self {
      data+: {
        vault_kv_secret+: { [terraformName]+: { data_json: value } },
      },
    },
    withId(value):: self {
      data+: {
        vault_kv_secret+: { [terraformName]+: { id: value } },
      },
    },
    '#withLeaseDuration': { 'function': { help: |||
      Lease duration in seconds. 
    ||| } },
    withLeaseDuration(value):: self {
      data+: {
        vault_kv_secret+: { [terraformName]+: { lease_duration: value } },
      },
    },
    '#withLeaseId': { 'function': { help: |||
      Lease identifier assigned by Vault. 
    ||| } },
    withLeaseId(value):: self {
      data+: {
        vault_kv_secret+: { [terraformName]+: { lease_id: value } },
      },
    },
    '#withLeaseRenewable': { 'function': { help: |||
      True if the duration of this lease can be extended through renewal. 
    ||| } },
    withLeaseRenewable(value):: self {
      data+: {
        vault_kv_secret+: { [terraformName]+: { lease_renewable: value } },
      },
    },
    '#withNamespace': { 'function': { help: |||
      Target namespace. (requires Enterprise) 
    ||| } },
    withNamespace(value):: self {
      data+: {
        vault_kv_secret+: { [terraformName]+: { namespace: value } },
      },
    },
    '#withPath': { 'function': { help: |||
      Full path of the KV-V1 secret. 
    ||| } },
    withPath(value):: self {
      data+: {
        vault_kv_secret+: { [terraformName]+: { path: value } },
      },
    },
  },
}
