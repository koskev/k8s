{
  new(terraformName, mount_accessor, name, settings_file_base64):: {
    _type:: 'tf',
    resource+: {
      vault_mfa_pingid+: { [terraformName]+: {
        mount_accessor: mount_accessor,
        name: name,
        settings_file_base64: settings_file_base64,
      } },
    },
    '#withAdminUrl': { 'function': { help: |||
      Admin URL computed by Vault. 
    ||| } },
    withAdminUrl(value):: self {
      resource+: {
        vault_mfa_pingid+: { [terraformName]+: { admin_url: value } },
      },
    },
    '#withAuthenticatorUrl': { 'function': { help: |||
      Authenticator URL computed by Vault. 
    ||| } },
    withAuthenticatorUrl(value):: self {
      resource+: {
        vault_mfa_pingid+: { [terraformName]+: { authenticator_url: value } },
      },
    },
    '#withId': { 'function': { help: |||
      ID computed by Vault. 
    ||| } },
    withId(value):: self {
      resource+: {
        vault_mfa_pingid+: { [terraformName]+: { id: value } },
      },
    },
    '#withIdpUrl': { 'function': { help: |||
      IDP URL computed by Vault. 
    ||| } },
    withIdpUrl(value):: self {
      resource+: {
        vault_mfa_pingid+: { [terraformName]+: { idp_url: value } },
      },
    },
    '#withMountAccessor': { 'function': { help: |||
      The mount to tie this method to for use in automatic mappings. The mapping will use the Name field of Aliases associated with this mount as the username in the mapping. 
    ||| } },
    withMountAccessor(value):: self {
      resource+: {
        vault_mfa_pingid+: { [terraformName]+: { mount_accessor: value } },
      },
    },
    '#withName': { 'function': { help: |||
      Name of the MFA method. 
    ||| } },
    withName(value):: self {
      resource+: {
        vault_mfa_pingid+: { [terraformName]+: { name: value } },
      },
    },
    '#withNamespace': { 'function': { help: |||
      Target namespace. (requires Enterprise) 
    ||| } },
    withNamespace(value):: self {
      resource+: {
        vault_mfa_pingid+: { [terraformName]+: { namespace: value } },
      },
    },
    '#withNamespaceId': { 'function': { help: |||
      Namespace ID computed by Vault. 
    ||| } },
    withNamespaceId(value):: self {
      resource+: {
        vault_mfa_pingid+: { [terraformName]+: { namespace_id: value } },
      },
    },
    '#withOrgAlias': { 'function': { help: |||
      Org Alias computed by Vault. 
    ||| } },
    withOrgAlias(value):: self {
      resource+: {
        vault_mfa_pingid+: { [terraformName]+: { org_alias: value } },
      },
    },
    '#withSettingsFileBase64': { 'function': { help: |||
      A base64-encoded third-party settings file retrieved from PingID's configuration page. 
    ||| } },
    withSettingsFileBase64(value):: self {
      resource+: {
        vault_mfa_pingid+: { [terraformName]+: { settings_file_base64: value } },
      },
    },
    '#withType': { 'function': { help: |||
      Type of configuration computed by Vault. 
    ||| } },
    withType(value):: self {
      resource+: {
        vault_mfa_pingid+: { [terraformName]+: { type: value } },
      },
    },
    '#withUseSignature': { 'function': { help: |||
      If set, enables use of PingID signature. Computed by Vault 
    ||| } },
    withUseSignature(value):: self {
      resource+: {
        vault_mfa_pingid+: { [terraformName]+: { use_signature: value } },
      },
    },
    '#withUsernameFormat': { 'function': { help: |||
      A format string for mapping Identity names to MFA method names. Values to substitute should be placed in `{{}}`. 
    ||| } },
    withUsernameFormat(value):: self {
      resource+: {
        vault_mfa_pingid+: { [terraformName]+: { username_format: value } },
      },
    },
  },
}
