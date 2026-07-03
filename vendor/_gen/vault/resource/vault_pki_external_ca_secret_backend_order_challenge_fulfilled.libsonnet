{
  new(terraformName, challenge_type, identifier, mount, order_id, role_name):: {
    _type:: 'tf',
    resource+: {
      vault_pki_external_ca_secret_backend_order_challenge_fulfilled+: { [terraformName]+: {
        challenge_type: challenge_type,
        identifier: identifier,
        mount: mount,
        order_id: order_id,
        role_name: role_name,
      } },
    },
    '#withChallengeType':: { 'function': { help: |||
      The type of ACME challenge that was fulfilled. Valid values are `http-01`, `dns-01`, `tls-alpn-01`. 
    ||| } },
    withChallengeType(value):: self {
      resource+: {
        vault_pki_external_ca_secret_backend_order_challenge_fulfilled+: { [terraformName]+: { challenge_type: value } },
      },
    },
    '#withIdentifier':: { 'function': { help: |||
      The identifier (domain name) for which the challenge was fulfilled. 
    ||| } },
    withIdentifier(value):: self {
      resource+: {
        vault_pki_external_ca_secret_backend_order_challenge_fulfilled+: { [terraformName]+: { identifier: value } },
      },
    },
    '#withMount':: { 'function': { help: |||
      The path where the PKI External CA secret backend is mounted. 
    ||| } },
    withMount(value):: self {
      resource+: {
        vault_pki_external_ca_secret_backend_order_challenge_fulfilled+: { [terraformName]+: { mount: value } },
      },
    },
    '#withNamespace':: { 'function': { help: |||
      Target namespace. (requires Enterprise) 
    ||| } },
    withNamespace(value):: self {
      resource+: {
        vault_pki_external_ca_secret_backend_order_challenge_fulfilled+: { [terraformName]+: { namespace: value } },
      },
    },
    '#withOrderId':: { 'function': { help: |||
      The unique identifier for the ACME order. 
    ||| } },
    withOrderId(value):: self {
      resource+: {
        vault_pki_external_ca_secret_backend_order_challenge_fulfilled+: { [terraformName]+: { order_id: value } },
      },
    },
    '#withRoleName':: { 'function': { help: |||
      Name of the role associated with the order. 
    ||| } },
    withRoleName(value):: self {
      resource+: {
        vault_pki_external_ca_secret_backend_order_challenge_fulfilled+: { [terraformName]+: { role_name: value } },
      },
    },
  },
}
