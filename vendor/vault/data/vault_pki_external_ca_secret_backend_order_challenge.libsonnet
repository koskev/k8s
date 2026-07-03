{
  new(terraformName, order_id, identifier, role_name, mount, challenge_type):: {
    _type:: 'tf',
    data+: {
      vault_pki_external_ca_secret_backend_order_challenge+: { [terraformName]+: {
        order_id: order_id,
        identifier: identifier,
        role_name: role_name,
        mount: mount,
        challenge_type: challenge_type,
      } },
    },
    withKeyAuthorization(value):: self {
      data+: {
        vault_pki_external_ca_secret_backend_order_challenge+: { [terraformName]+: { key_authorization: value } },
      },
    },
    withOrderId(value):: self {
      data+: {
        vault_pki_external_ca_secret_backend_order_challenge+: { [terraformName]+: { order_id: value } },
      },
    },
    withStatus(value):: self {
      data+: {
        vault_pki_external_ca_secret_backend_order_challenge+: { [terraformName]+: { status: value } },
      },
    },
    withNamespace(value):: self {
      data+: {
        vault_pki_external_ca_secret_backend_order_challenge+: { [terraformName]+: { namespace: value } },
      },
    },
    withIdentifier(value):: self {
      data+: {
        vault_pki_external_ca_secret_backend_order_challenge+: { [terraformName]+: { identifier: value } },
      },
    },
    withToken(value):: self {
      data+: {
        vault_pki_external_ca_secret_backend_order_challenge+: { [terraformName]+: { token: value } },
      },
    },
    withId(value):: self {
      data+: {
        vault_pki_external_ca_secret_backend_order_challenge+: { [terraformName]+: { id: value } },
      },
    },
    withRoleName(value):: self {
      data+: {
        vault_pki_external_ca_secret_backend_order_challenge+: { [terraformName]+: { role_name: value } },
      },
    },
    withMount(value):: self {
      data+: {
        vault_pki_external_ca_secret_backend_order_challenge+: { [terraformName]+: { mount: value } },
      },
    },
    withExpires(value):: self {
      data+: {
        vault_pki_external_ca_secret_backend_order_challenge+: { [terraformName]+: { expires: value } },
      },
    },
    withChallengeType(value):: self {
      data+: {
        vault_pki_external_ca_secret_backend_order_challenge+: { [terraformName]+: { challenge_type: value } },
      },
    },
  },
}
