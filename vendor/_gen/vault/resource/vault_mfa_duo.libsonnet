{
  new(terraformName, api_hostname, integration_key, mount_accessor, name, secret_key):: {
    _type:: 'tf',
    resource+: {
      vault_mfa_duo+: { [terraformName]+: {
        api_hostname: api_hostname,
        integration_key: integration_key,
        mount_accessor: mount_accessor,
        name: name,
        secret_key: secret_key,
      } },
    },
    '#withApiHostname':: { 'function': { help: |||
      API hostname for Duo. 
    ||| } },
    withApiHostname(value):: self {
      resource+: {
        vault_mfa_duo+: { [terraformName]+: { api_hostname: value } },
      },
    },
    withId(value):: self {
      resource+: {
        vault_mfa_duo+: { [terraformName]+: { id: value } },
      },
    },
    '#withIntegrationKey':: { 'function': { help: |||
      Integration key for Duo. 
    ||| } },
    withIntegrationKey(value):: self {
      resource+: {
        vault_mfa_duo+: { [terraformName]+: { integration_key: value } },
      },
    },
    '#withMountAccessor':: { 'function': { help: |||
      The mount to tie this method to for use in automatic mappings. The mapping will use the Name field of Aliases associated with this mount as the username in the mapping. 
    ||| } },
    withMountAccessor(value):: self {
      resource+: {
        vault_mfa_duo+: { [terraformName]+: { mount_accessor: value } },
      },
    },
    '#withName':: { 'function': { help: |||
      Name of the MFA method. 
    ||| } },
    withName(value):: self {
      resource+: {
        vault_mfa_duo+: { [terraformName]+: { name: value } },
      },
    },
    '#withNamespace':: { 'function': { help: |||
      Target namespace. (requires Enterprise) 
    ||| } },
    withNamespace(value):: self {
      resource+: {
        vault_mfa_duo+: { [terraformName]+: { namespace: value } },
      },
    },
    '#withPushInfo':: { 'function': { help: |||
      Push information for Duo. 
    ||| } },
    withPushInfo(value):: self {
      resource+: {
        vault_mfa_duo+: { [terraformName]+: { push_info: value } },
      },
    },
    '#withSecretKey':: { 'function': { help: |||
      Secret key for Duo. 
    ||| } },
    withSecretKey(value):: self {
      resource+: {
        vault_mfa_duo+: { [terraformName]+: { secret_key: value } },
      },
    },
    '#withUsernameFormat':: { 'function': { help: |||
      A format string for mapping Identity names to MFA method names. Values to substitute should be placed in `{{}}`. 
    ||| } },
    withUsernameFormat(value):: self {
      resource+: {
        vault_mfa_duo+: { [terraformName]+: { username_format: value } },
      },
    },
  },
}
