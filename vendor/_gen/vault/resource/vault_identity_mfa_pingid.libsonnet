{
  new(terraformName, settings_file_base64):: {
    _type:: 'tf',
    resource+: {
      vault_identity_mfa_pingid+: { [terraformName]+: {
        settings_file_base64: settings_file_base64,
      } },
    },
    '#withAdminUrl': { 'function': { help: |||
      The admin URL, derived from "settings_file_base64" 
    ||| } },
    withAdminUrl(value):: self {
      resource+: {
        vault_identity_mfa_pingid+: { [terraformName]+: { admin_url: value } },
      },
    },
    '#withAuthenticatorUrl': { 'function': { help: |||
      A unique identifier of the organization, derived from "settings_file_base64" 
    ||| } },
    withAuthenticatorUrl(value):: self {
      resource+: {
        vault_identity_mfa_pingid+: { [terraformName]+: { authenticator_url: value } },
      },
    },
    withId(value):: self {
      resource+: {
        vault_identity_mfa_pingid+: { [terraformName]+: { id: value } },
      },
    },
    '#withIdpUrl': { 'function': { help: |||
      The IDP URL, derived from "settings_file_base64" 
    ||| } },
    withIdpUrl(value):: self {
      resource+: {
        vault_identity_mfa_pingid+: { [terraformName]+: { idp_url: value } },
      },
    },
    '#withMethodId': { 'function': { help: |||
      Method ID. 
    ||| } },
    withMethodId(value):: self {
      resource+: {
        vault_identity_mfa_pingid+: { [terraformName]+: { method_id: value } },
      },
    },
    '#withMountAccessor': { 'function': { help: |||
      Mount accessor. 
    ||| } },
    withMountAccessor(value):: self {
      resource+: {
        vault_identity_mfa_pingid+: { [terraformName]+: { mount_accessor: value } },
      },
    },
    '#withName': { 'function': { help: |||
      Method name. 
    ||| } },
    withName(value):: self {
      resource+: {
        vault_identity_mfa_pingid+: { [terraformName]+: { name: value } },
      },
    },
    '#withNamespace': { 'function': { help: |||
      Target namespace. (requires Enterprise) 
    ||| } },
    withNamespace(value):: self {
      resource+: {
        vault_identity_mfa_pingid+: { [terraformName]+: { namespace: value } },
      },
    },
    '#withNamespaceId': { 'function': { help: |||
      Method's namespace ID. 
    ||| } },
    withNamespaceId(value):: self {
      resource+: {
        vault_identity_mfa_pingid+: { [terraformName]+: { namespace_id: value } },
      },
    },
    '#withNamespacePath': { 'function': { help: |||
      Method's namespace path. 
    ||| } },
    withNamespacePath(value):: self {
      resource+: {
        vault_identity_mfa_pingid+: { [terraformName]+: { namespace_path: value } },
      },
    },
    '#withOrgAlias': { 'function': { help: |||
      The name of the PingID client organization, derived from "settings_file_base64" 
    ||| } },
    withOrgAlias(value):: self {
      resource+: {
        vault_identity_mfa_pingid+: { [terraformName]+: { org_alias: value } },
      },
    },
    '#withSettingsFileBase64': { 'function': { help: |||
      A base64-encoded third-party settings contents as retrieved from PingID's configuration page. 
    ||| } },
    withSettingsFileBase64(value):: self {
      resource+: {
        vault_identity_mfa_pingid+: { [terraformName]+: { settings_file_base64: value } },
      },
    },
    '#withType': { 'function': { help: |||
      MFA type. 
    ||| } },
    withType(value):: self {
      resource+: {
        vault_identity_mfa_pingid+: { [terraformName]+: { type: value } },
      },
    },
    '#withUseSignature': { 'function': { help: |||
      Use signature value, derived from "settings_file_base64" 
    ||| } },
    withUseSignature(value):: self {
      resource+: {
        vault_identity_mfa_pingid+: { [terraformName]+: { use_signature: value } },
      },
    },
    '#withUsernameFormat': { 'function': { help: |||
      A template string for mapping Identity names to MFA methods. 
    ||| } },
    withUsernameFormat(value):: self {
      resource+: {
        vault_identity_mfa_pingid+: { [terraformName]+: { username_format: value } },
      },
    },
    '#withUuid': { 'function': { help: |||
      Resource UUID. 
    ||| } },
    withUuid(value):: self {
      resource+: {
        vault_identity_mfa_pingid+: { [terraformName]+: { uuid: value } },
      },
    },
  },
}
