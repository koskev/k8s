{
  '#new':: { 'function': { help: |||
    Manages the UI default authentication configuration for the Vault GUI login form. This is an Enterprise-only feature requiring Vault 1.20.0 or later.
  ||| } },
  local outerSelf = self,
  new(terraformName, default_auth_type, name):: self.functions(terraformName) {
    ref():: outerSelf.ref(terraformName),
    _type:: 'tf',
    resource+: {
      vault_config_ui_default_auth+: {
        [terraformName]+: {
          default_auth_type: default_auth_type,
          name: name,
        },
      },
    },
  },
  functions(terraformName):: {
    withForEach(value):: self {
      resource+: {
        vault_config_ui_default_auth+: { [terraformName]+: { for_each: value } },
      },
    },
    withDependsOn(value):: self {
      resource+: {
        vault_config_ui_default_auth+: { [terraformName]+: { depends_on: value } },
      },
    },
    withCount(value):: self {
      resource+: {
        vault_config_ui_default_auth+: { [terraformName]+: { count: value } },
      },
    },
    withLifecycle(value):: self {
      resource+: {
        vault_config_ui_default_auth+: { [terraformName]+: { lifecycle: value } },
      },
    },
    withProvider(value):: self {
      resource+: {
        vault_config_ui_default_auth+: { [terraformName]+: { provider: value } },
      },
    },
    withProviders(value):: self {
      resource+: {
        vault_config_ui_default_auth+: { [terraformName]+: { providers: value } },
      },
    },
    '#backup_auth_types':: { 'function': { help: |||
      List of backup authentication methods. Uses `ListAttribute` with `ElementType: StringType` to preserve order of backup methods. Each must be a valid auth type. Vault presents these in the "Sign in with other methods" tab. **Note:** Removing this field from configuration will clear it in Vault by sending an empty array.
    ||| } },
    withBackupAuthTypes(value):: self {
      resource+: {
        vault_config_ui_default_auth+: { [terraformName]+: { backup_auth_types: value } },
      },
    },
    '#default_auth_type':: { 'function': { help: |||
      The default authentication method. Uses `OneOf` validator to ensure only valid auth methods are accepted: github, jwt, ldap, oidc, okta, radius, saml, token, userpass.
    ||| } },
    withDefaultAuthType(value):: self {
      resource+: {
        vault_config_ui_default_auth+: { [terraformName]+: { default_auth_type: value } },
      },
    },
    '#disable_inheritance':: { 'function': { help: |||
      If true, child namespaces will not inherit default_auth_type and backup_auth_types from this configuration. **Note:** Removing this field from configuration will reset it to `false` in Vault.
    ||| } },
    withDisableInheritance(value):: self {
      resource+: {
        vault_config_ui_default_auth+: { [terraformName]+: { disable_inheritance: value } },
      },
    },
    '#name':: { 'function': { help: |||
      Unique identifier for the configuration. Can contain letters, numbers, underscores, and dashes. Uses `RequiresReplace()` plan modifier - changing this forces resource recreation.
    ||| } },
    withName(value):: self {
      resource+: {
        vault_config_ui_default_auth+: { [terraformName]+: { name: value } },
      },
    },
    '#namespace':: { 'function': { help: |||
      Target namespace. (requires Enterprise)
    ||| } },
    withNamespace(value):: self {
      resource+: {
        vault_config_ui_default_auth+: { [terraformName]+: { namespace: value } },
      },
    },
    '#namespace_path':: { 'function': { help: |||
      Target namespace for the configuration. Empty string or omitted applies to root namespace.
    ||| } },
    withNamespacePath(value):: self {
      resource+: {
        vault_config_ui_default_auth+: { [terraformName]+: { namespace_path: value } },
      },
    },
  },
  ref(terraformName):: {
    local refSelf = self,
    plain(suffix=''):: '${ vault_config_ui_default_auth.%s%s }' % [terraformName, suffix],
    fields:: {
      '#backup_auth_types':: { 'function': { help: |||
        List of backup authentication methods. Uses `ListAttribute` with `ElementType: StringType` to preserve order of backup methods. Each must be a valid auth type. Vault presents these in the "Sign in with other methods" tab. **Note:** Removing this field from configuration will clear it in Vault by sending an empty array.
      ||| } },
      backup_auth_types(suffix=''):: refSelf.plain('.backup_auth_types%s' % suffix),
      '#default_auth_type':: { 'function': { help: |||
        The default authentication method. Uses `OneOf` validator to ensure only valid auth methods are accepted: github, jwt, ldap, oidc, okta, radius, saml, token, userpass.
      ||| } },
      default_auth_type(suffix=''):: refSelf.plain('.default_auth_type%s' % suffix),
      '#disable_inheritance':: { 'function': { help: |||
        If true, child namespaces will not inherit default_auth_type and backup_auth_types from this configuration. **Note:** Removing this field from configuration will reset it to `false` in Vault.
      ||| } },
      disable_inheritance(suffix=''):: refSelf.plain('.disable_inheritance%s' % suffix),
      '#id':: { 'function': { help: |||
        The unique identifier for this resource.
      ||| } },
      id(suffix=''):: refSelf.plain('.id%s' % suffix),
      '#name':: { 'function': { help: |||
        Unique identifier for the configuration. Can contain letters, numbers, underscores, and dashes. Uses `RequiresReplace()` plan modifier - changing this forces resource recreation.
      ||| } },
      name(suffix=''):: refSelf.plain('.name%s' % suffix),
      '#namespace':: { 'function': { help: |||
        Target namespace. (requires Enterprise)
      ||| } },
      namespace(suffix=''):: refSelf.plain('.namespace%s' % suffix),
      '#namespace_path':: { 'function': { help: |||
        Target namespace for the configuration. Empty string or omitted applies to root namespace.
      ||| } },
      namespace_path(suffix=''):: refSelf.plain('.namespace_path%s' % suffix),
    },
  },
}
