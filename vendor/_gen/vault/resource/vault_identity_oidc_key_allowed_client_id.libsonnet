{
  new(terraformName, allowed_client_id, key_name):: {
    _type:: 'tf',
    resource+: {
      vault_identity_oidc_key_allowed_client_id+: { [terraformName]+: {
        allowed_client_id: allowed_client_id,
        key_name: key_name,
      } },
    },
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
}
