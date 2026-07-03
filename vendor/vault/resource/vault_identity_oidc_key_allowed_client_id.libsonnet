{
  new(terraformName, allowed_client_id, key_name):: {
    _type:: 'tf',
    resource+: {
      vault_identity_oidc_key_allowed_client_id+: { [terraformName]+: {
        allowed_client_id: allowed_client_id,
        key_name: key_name,
      } },
    },
    withAllowedClientId(value):: self {
      resource+: {
        vault_identity_oidc_key_allowed_client_id+: { [terraformName]+: { allowed_client_id: value } },
      },
    },
    withKeyName(value):: self {
      resource+: {
        vault_identity_oidc_key_allowed_client_id+: { [terraformName]+: { key_name: value } },
      },
    },
    withId(value):: self {
      resource+: {
        vault_identity_oidc_key_allowed_client_id+: { [terraformName]+: { id: value } },
      },
    },
    withNamespace(value):: self {
      resource+: {
        vault_identity_oidc_key_allowed_client_id+: { [terraformName]+: { namespace: value } },
      },
    },
  },
}
