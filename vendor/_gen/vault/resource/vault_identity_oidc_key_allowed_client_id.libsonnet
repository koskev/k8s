{
  new(terraformName, allowed_client_id, key_name):: self.functions(terraformName) {
    _type:: 'tf',
    resource+: {
      vault_identity_oidc_key_allowed_client_id+: {
        [terraformName]+: {
          allowed_client_id: allowed_client_id,
          key_name: key_name,
        },
      },
    },
  },
  functions(terraformName):: {
    '#withAllowedClientId':: { 'function': { help: |||
      Role Client ID allowed to use the key for signing. 
    ||| } },
    withAllowedClientId(value):: self {
      resource+: {
        vault_identity_oidc_key_allowed_client_id+: { [terraformName]+: { allowed_client_id: value } },
      },
    },
    withId(value):: self {
      resource+: {
        vault_identity_oidc_key_allowed_client_id+: { [terraformName]+: { id: value } },
      },
    },
    '#withKeyName':: { 'function': { help: |||
      Name of the key. 
    ||| } },
    withKeyName(value):: self {
      resource+: {
        vault_identity_oidc_key_allowed_client_id+: { [terraformName]+: { key_name: value } },
      },
    },
    '#withNamespace':: { 'function': { help: |||
      Target namespace. (requires Enterprise) 
    ||| } },
    withNamespace(value):: self {
      resource+: {
        vault_identity_oidc_key_allowed_client_id+: { [terraformName]+: { namespace: value } },
      },
    },
  },
  ref(terraformName):: {
    local refSelf = self,
    plain(suffix=''):: '${ vault_identity_oidc_key_allowed_client_id.%s%s }' % [terraformName, suffix],
    fields:: {
      '#allowed_client_id':: { 'function': { help: |||
        Role Client ID allowed to use the key for signing. 
      ||| } },
      allowed_client_id(suffix=''):: refSelf.plain('.allowed_client_id%s' % suffix),
      id(suffix=''):: refSelf.plain('.id%s' % suffix),
      '#key_name':: { 'function': { help: |||
        Name of the key. 
      ||| } },
      key_name(suffix=''):: refSelf.plain('.key_name%s' % suffix),
      '#namespace':: { 'function': { help: |||
        Target namespace. (requires Enterprise) 
      ||| } },
      namespace(suffix=''):: refSelf.plain('.namespace%s' % suffix),
    },
  },
}
