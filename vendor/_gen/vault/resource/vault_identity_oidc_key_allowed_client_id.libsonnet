{
  local outerSelf = self,
  new(terraformName, allowed_client_id, key_name):: self.functions(terraformName) + {
    _type:: 'tf',
    ref():: outerSelf.ref(terraformName),
    resource+: {
      vault_identity_oidc_key_allowed_client_id+: { [terraformName]+: {
        allowed_client_id: allowed_client_id,
        key_name: key_name,
      } },
    },
  }
  ,
  functions(terraformName):: {
    withForEach(value):: self { resource+: {
      vault_identity_oidc_key_allowed_client_id+: { [terraformName]+: { for_each: value } },
    } },
    withDependsOn(value):: self { resource+: {
      vault_identity_oidc_key_allowed_client_id+: { [terraformName]+: { depends_on: value } },
    } },
    withCount(value):: self { resource+: {
      vault_identity_oidc_key_allowed_client_id+: { [terraformName]+: { count: value } },
    } },
    withLifecycle(value):: self { resource+: {
      vault_identity_oidc_key_allowed_client_id+: { [terraformName]+: { lifecycle: value } },
    } },
    withProvider(value):: self { resource+: {
      vault_identity_oidc_key_allowed_client_id+: { [terraformName]+: { provider: value } },
    } },
    withProviders(value):: self { resource+: {
      vault_identity_oidc_key_allowed_client_id+: { [terraformName]+: { providers: value } },
    } },
    addCustomData(name, value):: self { resource+: {
      vault_identity_oidc_key_allowed_client_id+: { [terraformName]+: { [name]: value } },
    } },
    '#withAllowedClientId':: { 'function': {
      help:
        |||
          Role Client ID allowed to use the key for signing.
        |||,
    } },
    withAllowedClientId(value):: self { resource+: {
      vault_identity_oidc_key_allowed_client_id+: { [terraformName]+: { allowed_client_id: value } },
    } },
    withId(value):: self { resource+: {
      vault_identity_oidc_key_allowed_client_id+: { [terraformName]+: { id: value } },
    } },
    '#withKeyName':: { 'function': {
      help:
        |||
          Name of the key.
        |||,
    } },
    withKeyName(value):: self { resource+: {
      vault_identity_oidc_key_allowed_client_id+: { [terraformName]+: { key_name: value } },
    } },
    '#withNamespace':: { 'function': {
      help:
        |||
          Target namespace. (requires Enterprise)
        |||,
    } },
    withNamespace(value):: self { resource+: {
      vault_identity_oidc_key_allowed_client_id+: { [terraformName]+: { namespace: value } },
    } },

  }
  ,
  ref(terraformName):: {
    local refSelf = self,
    plain(suffix=''):: '${ vault_identity_oidc_key_allowed_client_id.%s%s }' % [terraformName, suffix],
    fields:: {
      '#allowed_client_id':: { 'function': {
        help:
          |||
            Role Client ID allowed to use the key for signing.
          |||,
      } },
      allowed_client_id(suffix=''):: refSelf.plain('.allowed_client_id%s' % suffix),
      id(suffix=''):: refSelf.plain('.id%s' % suffix),
      '#key_name':: { 'function': {
        help:
          |||
            Name of the key.
          |||,
      } },
      key_name(suffix=''):: refSelf.plain('.key_name%s' % suffix),
      '#namespace':: { 'function': {
        help:
          |||
            Target namespace. (requires Enterprise)
          |||,
      } },
      namespace(suffix=''):: refSelf.plain('.namespace%s' % suffix),

    },

  },

}
