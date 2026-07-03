{
  new(terraformName, api_hostname, mount_accessor, secret_key, integration_key, name):: {
    _type:: 'tf',
    resource+: {
      vault_mfa_duo+: { [terraformName]+: {
        api_hostname: api_hostname,
        mount_accessor: mount_accessor,
        secret_key: secret_key,
        integration_key: integration_key,
        name: name,
      } },
    },
    withNamespace(value):: self {
      resource+: {
        vault_mfa_duo+: { [terraformName]+: { namespace: value } },
      },
    },
    withId(value):: self {
      resource+: {
        vault_mfa_duo+: { [terraformName]+: { id: value } },
      },
    },
    withApiHostname(value):: self {
      resource+: {
        vault_mfa_duo+: { [terraformName]+: { api_hostname: value } },
      },
    },
    withMountAccessor(value):: self {
      resource+: {
        vault_mfa_duo+: { [terraformName]+: { mount_accessor: value } },
      },
    },
    withSecretKey(value):: self {
      resource+: {
        vault_mfa_duo+: { [terraformName]+: { secret_key: value } },
      },
    },
    withIntegrationKey(value):: self {
      resource+: {
        vault_mfa_duo+: { [terraformName]+: { integration_key: value } },
      },
    },
    withUsernameFormat(value):: self {
      resource+: {
        vault_mfa_duo+: { [terraformName]+: { username_format: value } },
      },
    },
    withName(value):: self {
      resource+: {
        vault_mfa_duo+: { [terraformName]+: { name: value } },
      },
    },
    withPushInfo(value):: self {
      resource+: {
        vault_mfa_duo+: { [terraformName]+: { push_info: value } },
      },
    },
  },
}
