{
  new(terraformName, integration_key, api_hostname, secret_key):: {
    _type:: 'tf',
    resource+: {
      vault_identity_mfa_duo+: { [terraformName]+: {
        integration_key: integration_key,
        api_hostname: api_hostname,
        secret_key: secret_key,
      } },
    },
    withMethodId(value):: self {
      resource+: {
        vault_identity_mfa_duo+: { [terraformName]+: { method_id: value } },
      },
    },
    withMountAccessor(value):: self {
      resource+: {
        vault_identity_mfa_duo+: { [terraformName]+: { mount_accessor: value } },
      },
    },
    withIntegrationKey(value):: self {
      resource+: {
        vault_identity_mfa_duo+: { [terraformName]+: { integration_key: value } },
      },
    },
    withApiHostname(value):: self {
      resource+: {
        vault_identity_mfa_duo+: { [terraformName]+: { api_hostname: value } },
      },
    },
    withNamespacePath(value):: self {
      resource+: {
        vault_identity_mfa_duo+: { [terraformName]+: { namespace_path: value } },
      },
    },
    withNamespaceId(value):: self {
      resource+: {
        vault_identity_mfa_duo+: { [terraformName]+: { namespace_id: value } },
      },
    },
    withUsernameFormat(value):: self {
      resource+: {
        vault_identity_mfa_duo+: { [terraformName]+: { username_format: value } },
      },
    },
    withType(value):: self {
      resource+: {
        vault_identity_mfa_duo+: { [terraformName]+: { type: value } },
      },
    },
    withName(value):: self {
      resource+: {
        vault_identity_mfa_duo+: { [terraformName]+: { name: value } },
      },
    },
    withUsePasscode(value):: self {
      resource+: {
        vault_identity_mfa_duo+: { [terraformName]+: { use_passcode: value } },
      },
    },
    withNamespace(value):: self {
      resource+: {
        vault_identity_mfa_duo+: { [terraformName]+: { namespace: value } },
      },
    },
    withUuid(value):: self {
      resource+: {
        vault_identity_mfa_duo+: { [terraformName]+: { uuid: value } },
      },
    },
    withPushInfo(value):: self {
      resource+: {
        vault_identity_mfa_duo+: { [terraformName]+: { push_info: value } },
      },
    },
    withSecretKey(value):: self {
      resource+: {
        vault_identity_mfa_duo+: { [terraformName]+: { secret_key: value } },
      },
    },
    withId(value):: self {
      resource+: {
        vault_identity_mfa_duo+: { [terraformName]+: { id: value } },
      },
    },
  },
}
