{
  new(terraformName, challenge_type, mount, identifier, role_name, order_id):: {
    _type:: 'tf',
    resource+: {
      vault_pki_external_ca_secret_backend_order_challenge_fulfilled+: { [terraformName]+: {
        challenge_type: challenge_type,
        mount: mount,
        identifier: identifier,
        role_name: role_name,
        order_id: order_id,
      } },
    },
    withChallengeType(value):: self {
      resource+: {
        vault_pki_external_ca_secret_backend_order_challenge_fulfilled+: { [terraformName]+: { challenge_type: value } },
      },
    },
    withNamespace(value):: self {
      resource+: {
        vault_pki_external_ca_secret_backend_order_challenge_fulfilled+: { [terraformName]+: { namespace: value } },
      },
    },
    withMount(value):: self {
      resource+: {
        vault_pki_external_ca_secret_backend_order_challenge_fulfilled+: { [terraformName]+: { mount: value } },
      },
    },
    withIdentifier(value):: self {
      resource+: {
        vault_pki_external_ca_secret_backend_order_challenge_fulfilled+: { [terraformName]+: { identifier: value } },
      },
    },
    withRoleName(value):: self {
      resource+: {
        vault_pki_external_ca_secret_backend_order_challenge_fulfilled+: { [terraformName]+: { role_name: value } },
      },
    },
    withOrderId(value):: self {
      resource+: {
        vault_pki_external_ca_secret_backend_order_challenge_fulfilled+: { [terraformName]+: { order_id: value } },
      },
    },
  },
}
