{
  new(terraformName, default_auth_type, name):: {
    _type:: 'tf',
    resource+: {
      vault_config_ui_default_auth+: { [terraformName]+: {
        default_auth_type: default_auth_type,
        name: name,
      } },
    },
    '#withBackupAuthTypes': { 'function': { help: |||
      List of backup authentication methods. Uses `ListAttribute` with `ElementType: StringType` to preserve order of backup methods. Each must be a valid auth type. Vault presents these in the "Sign in with other methods" tab. **Note:** Removing this field from configuration will clear it in Vault by sending an empty array. 
    ||| } },
    withBackupAuthTypes(value):: self {
      resource+: {
        vault_config_ui_default_auth+: { [terraformName]+: { backup_auth_types: value } },
      },
    },
    '#withDefaultAuthType': { 'function': { help: |||
      The default authentication method. Uses `OneOf` validator to ensure only valid auth methods are accepted: github, jwt, ldap, oidc, okta, radius, saml, token, userpass. 
    ||| } },
    withDefaultAuthType(value):: self {
      resource+: {
        vault_config_ui_default_auth+: { [terraformName]+: { default_auth_type: value } },
      },
    },
    '#withDisableInheritance': { 'function': { help: |||
      If true, child namespaces will not inherit default_auth_type and backup_auth_types from this configuration. **Note:** Removing this field from configuration will reset it to `false` in Vault. 
    ||| } },
    withDisableInheritance(value):: self {
      resource+: {
        vault_config_ui_default_auth+: { [terraformName]+: { disable_inheritance: value } },
      },
    },
    '#withId': { 'function': { help: |||
      The unique identifier for this resource. 
    ||| } },
    withId(value):: self {
      resource+: {
        vault_config_ui_default_auth+: { [terraformName]+: { id: value } },
      },
    },
    '#withName': { 'function': { help: |||
      Unique identifier for the configuration. Can contain letters, numbers, underscores, and dashes. Uses `RequiresReplace()` plan modifier - changing this forces resource recreation. 
    ||| } },
    withName(value):: self {
      resource+: {
        vault_config_ui_default_auth+: { [terraformName]+: { name: value } },
      },
    },
    '#withNamespace': { 'function': { help: |||
      Target namespace. (requires Enterprise) 
    ||| } },
    withNamespace(value):: self {
      resource+: {
        vault_config_ui_default_auth+: { [terraformName]+: { namespace: value } },
      },
    },
    '#withNamespacePath': { 'function': { help: |||
      Target namespace for the configuration. Empty string or omitted applies to root namespace. 
    ||| } },
    withNamespacePath(value):: self {
      resource+: {
        vault_config_ui_default_auth+: { [terraformName]+: { namespace_path: value } },
      },
    },
  },
}
