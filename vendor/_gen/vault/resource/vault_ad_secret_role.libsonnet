{
  new(terraformName, backend, role, service_account_name):: {
    _type:: 'tf',
    resource+: {
      vault_ad_secret_role+: { [terraformName]+: {
        backend: backend,
        role: role,
        service_account_name: service_account_name,
      } },
    },
    '#withBackend': { 'function': { help: |||
      The mount path for the AD backend. 
    ||| } },
    withBackend(value):: self {
      resource+: {
        vault_ad_secret_role+: { [terraformName]+: { backend: value } },
      },
    },
    withId(value):: self {
      resource+: {
        vault_ad_secret_role+: { [terraformName]+: { id: value } },
      },
    },
    '#withLastVaultRotation': { 'function': { help: |||
      Last time Vault rotated this service account's password. 
    ||| } },
    withLastVaultRotation(value):: self {
      resource+: {
        vault_ad_secret_role+: { [terraformName]+: { last_vault_rotation: value } },
      },
    },
    '#withNamespace': { 'function': { help: |||
      Target namespace. (requires Enterprise) 
    ||| } },
    withNamespace(value):: self {
      resource+: {
        vault_ad_secret_role+: { [terraformName]+: { namespace: value } },
      },
    },
    '#withPasswordLastSet': { 'function': { help: |||
      Last time Vault set this service account's password. 
    ||| } },
    withPasswordLastSet(value):: self {
      resource+: {
        vault_ad_secret_role+: { [terraformName]+: { password_last_set: value } },
      },
    },
    '#withRole': { 'function': { help: |||
      Name of the role. 
    ||| } },
    withRole(value):: self {
      resource+: {
        vault_ad_secret_role+: { [terraformName]+: { role: value } },
      },
    },
    '#withServiceAccountName': { 'function': { help: |||
      The username/logon name for the service account with which this role will be associated. 
    ||| } },
    withServiceAccountName(value):: self {
      resource+: {
        vault_ad_secret_role+: { [terraformName]+: { service_account_name: value } },
      },
    },
    '#withTtl': { 'function': { help: |||
      In seconds, the default password time-to-live. 
    ||| } },
    withTtl(value):: self {
      resource+: {
        vault_ad_secret_role+: { [terraformName]+: { ttl: value } },
      },
    },
  },
}
