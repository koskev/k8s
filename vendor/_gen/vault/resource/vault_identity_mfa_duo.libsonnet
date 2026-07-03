{
  new(terraformName, api_hostname, integration_key, secret_key):: {
    _type:: 'tf',
    resource+: {
      vault_identity_mfa_duo+: { [terraformName]+: {
        api_hostname: api_hostname,
        integration_key: integration_key,
        secret_key: secret_key,
      } },
    },
    '#withApiHostname':: { 'function': { help: |||
      API hostname for Duo 
    ||| } },
    withApiHostname(value):: self {
      resource+: {
        vault_identity_mfa_duo+: { [terraformName]+: { api_hostname: value } },
      },
    },
    withId(value):: self {
      resource+: {
        vault_identity_mfa_duo+: { [terraformName]+: { id: value } },
      },
    },
    '#withIntegrationKey':: { 'function': { help: |||
      Integration key for Duo 
    ||| } },
    withIntegrationKey(value):: self {
      resource+: {
        vault_identity_mfa_duo+: { [terraformName]+: { integration_key: value } },
      },
    },
    '#withMethodId':: { 'function': { help: |||
      Method ID. 
    ||| } },
    withMethodId(value):: self {
      resource+: {
        vault_identity_mfa_duo+: { [terraformName]+: { method_id: value } },
      },
    },
    '#withMountAccessor':: { 'function': { help: |||
      Mount accessor. 
    ||| } },
    withMountAccessor(value):: self {
      resource+: {
        vault_identity_mfa_duo+: { [terraformName]+: { mount_accessor: value } },
      },
    },
    '#withName':: { 'function': { help: |||
      Method name. 
    ||| } },
    withName(value):: self {
      resource+: {
        vault_identity_mfa_duo+: { [terraformName]+: { name: value } },
      },
    },
    '#withNamespace':: { 'function': { help: |||
      Target namespace. (requires Enterprise) 
    ||| } },
    withNamespace(value):: self {
      resource+: {
        vault_identity_mfa_duo+: { [terraformName]+: { namespace: value } },
      },
    },
    '#withNamespaceId':: { 'function': { help: |||
      Method's namespace ID. 
    ||| } },
    withNamespaceId(value):: self {
      resource+: {
        vault_identity_mfa_duo+: { [terraformName]+: { namespace_id: value } },
      },
    },
    '#withNamespacePath':: { 'function': { help: |||
      Method's namespace path. 
    ||| } },
    withNamespacePath(value):: self {
      resource+: {
        vault_identity_mfa_duo+: { [terraformName]+: { namespace_path: value } },
      },
    },
    '#withPushInfo':: { 'function': { help: |||
      Push information for Duo. 
    ||| } },
    withPushInfo(value):: self {
      resource+: {
        vault_identity_mfa_duo+: { [terraformName]+: { push_info: value } },
      },
    },
    '#withSecretKey':: { 'function': { help: |||
      Secret key for Duo 
    ||| } },
    withSecretKey(value):: self {
      resource+: {
        vault_identity_mfa_duo+: { [terraformName]+: { secret_key: value } },
      },
    },
    '#withType':: { 'function': { help: |||
      MFA type. 
    ||| } },
    withType(value):: self {
      resource+: {
        vault_identity_mfa_duo+: { [terraformName]+: { type: value } },
      },
    },
    '#withUsePasscode':: { 'function': { help: |||
      Require passcode upon MFA validation. 
    ||| } },
    withUsePasscode(value):: self {
      resource+: {
        vault_identity_mfa_duo+: { [terraformName]+: { use_passcode: value } },
      },
    },
    '#withUsernameFormat':: { 'function': { help: |||
      A template string for mapping Identity names to MFA methods. 
    ||| } },
    withUsernameFormat(value):: self {
      resource+: {
        vault_identity_mfa_duo+: { [terraformName]+: { username_format: value } },
      },
    },
    '#withUuid':: { 'function': { help: |||
      Resource UUID. 
    ||| } },
    withUuid(value):: self {
      resource+: {
        vault_identity_mfa_duo+: { [terraformName]+: { uuid: value } },
      },
    },
  },
}
