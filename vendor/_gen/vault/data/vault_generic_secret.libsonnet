{
  new(terraformName, path):: {
    _type:: 'tf',
    data+: {
      vault_generic_secret+: { [terraformName]+: {
        path: path,
      } },
    },
    '#withData':: { 'function': { help: |||
      Map of strings read from Vault. 
    ||| } },
    withData(value):: self {
      data+: {
        vault_generic_secret+: { [terraformName]+: { data: value } },
      },
    },
    '#withDataJson':: { 'function': { help: |||
      JSON-encoded secret data read from Vault. 
    ||| } },
    withDataJson(value):: self {
      data+: {
        vault_generic_secret+: { [terraformName]+: { data_json: value } },
      },
    },
    withId(value):: self {
      data+: {
        vault_generic_secret+: { [terraformName]+: { id: value } },
      },
    },
    '#withLeaseDuration':: { 'function': { help: |||
      Lease duration in seconds relative to the time in lease_start_time. 
    ||| } },
    withLeaseDuration(value):: self {
      data+: {
        vault_generic_secret+: { [terraformName]+: { lease_duration: value } },
      },
    },
    '#withLeaseId':: { 'function': { help: |||
      Lease identifier assigned by vault. 
    ||| } },
    withLeaseId(value):: self {
      data+: {
        vault_generic_secret+: { [terraformName]+: { lease_id: value } },
      },
    },
    '#withLeaseRenewable':: { 'function': { help: |||
      True if the duration of this lease can be extended through renewal. 
    ||| } },
    withLeaseRenewable(value):: self {
      data+: {
        vault_generic_secret+: { [terraformName]+: { lease_renewable: value } },
      },
    },
    '#withLeaseStartTime':: { 'function': { help: |||
      Time at which the lease was read, using the clock of the system where Terraform was running 
    ||| } },
    withLeaseStartTime(value):: self {
      data+: {
        vault_generic_secret+: { [terraformName]+: { lease_start_time: value } },
      },
    },
    '#withNamespace':: { 'function': { help: |||
      Target namespace. (requires Enterprise) 
    ||| } },
    withNamespace(value):: self {
      data+: {
        vault_generic_secret+: { [terraformName]+: { namespace: value } },
      },
    },
    '#withPath':: { 'function': { help: |||
      Full path from which a secret will be read. 
    ||| } },
    withPath(value):: self {
      data+: {
        vault_generic_secret+: { [terraformName]+: { path: value } },
      },
    },
    withVersion(value):: self {
      data+: {
        vault_generic_secret+: { [terraformName]+: { version: value } },
      },
    },
    '#withWithLeaseStartTime':: { 'function': { help: |||
      If set to true, stores 'lease_start_time' in the TF state. 
    ||| } },
    withWithLeaseStartTime(value):: self {
      data+: {
        vault_generic_secret+: { [terraformName]+: { with_lease_start_time: value } },
      },
    },
  },
}
