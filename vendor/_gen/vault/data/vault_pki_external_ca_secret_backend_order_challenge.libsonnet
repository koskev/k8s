{
  new(terraformName, challenge_type, identifier, mount, order_id, role_name):: {
    _type:: 'tf',
    data+: {
      vault_pki_external_ca_secret_backend_order_challenge+: { [terraformName]+: {
        challenge_type: challenge_type,
        identifier: identifier,
        mount: mount,
        order_id: order_id,
        role_name: role_name,
      } },
    },
    '#withChallengeType':: { 'function': { help: |||
      The type of ACME challenge to retrieve. Valid values are `http-01`, `dns-01`, `tls-alpn-01`. 
    ||| } },
    withChallengeType(value):: self {
      data+: {
        vault_pki_external_ca_secret_backend_order_challenge+: { [terraformName]+: { challenge_type: value } },
      },
    },
    '#withExpires':: { 'function': { help: |||
      Expiry time for the challenge. 
    ||| } },
    withExpires(value):: self {
      data+: {
        vault_pki_external_ca_secret_backend_order_challenge+: { [terraformName]+: { expires: value } },
      },
    },
    '#withId':: { 'function': { help: |||
      Unique identifier for this data source. 
    ||| } },
    withId(value):: self {
      data+: {
        vault_pki_external_ca_secret_backend_order_challenge+: { [terraformName]+: { id: value } },
      },
    },
    '#withIdentifier':: { 'function': { help: |||
      The identifier (domain name) for which to retrieve the challenge. 
    ||| } },
    withIdentifier(value):: self {
      data+: {
        vault_pki_external_ca_secret_backend_order_challenge+: { [terraformName]+: { identifier: value } },
      },
    },
    '#withKeyAuthorization':: { 'function': { help: |||
      The key authorization string for the challenge. 
    ||| } },
    withKeyAuthorization(value):: self {
      data+: {
        vault_pki_external_ca_secret_backend_order_challenge+: { [terraformName]+: { key_authorization: value } },
      },
    },
    '#withMount':: { 'function': { help: |||
      The path where the PKI External CA secret backend is mounted. 
    ||| } },
    withMount(value):: self {
      data+: {
        vault_pki_external_ca_secret_backend_order_challenge+: { [terraformName]+: { mount: value } },
      },
    },
    '#withNamespace':: { 'function': { help: |||
      Target namespace. (requires Enterprise) 
    ||| } },
    withNamespace(value):: self {
      data+: {
        vault_pki_external_ca_secret_backend_order_challenge+: { [terraformName]+: { namespace: value } },
      },
    },
    '#withOrderId':: { 'function': { help: |||
      The unique identifier for the ACME order. 
    ||| } },
    withOrderId(value):: self {
      data+: {
        vault_pki_external_ca_secret_backend_order_challenge+: { [terraformName]+: { order_id: value } },
      },
    },
    '#withRoleName':: { 'function': { help: |||
      Name of the role associated with the order. 
    ||| } },
    withRoleName(value):: self {
      data+: {
        vault_pki_external_ca_secret_backend_order_challenge+: { [terraformName]+: { role_name: value } },
      },
    },
    '#withStatus':: { 'function': { help: |||
      The current status of the challenge (e.g., pending, valid, invalid). 
    ||| } },
    withStatus(value):: self {
      data+: {
        vault_pki_external_ca_secret_backend_order_challenge+: { [terraformName]+: { status: value } },
      },
    },
    '#withToken':: { 'function': { help: |||
      The challenge token provided by the ACME server. 
    ||| } },
    withToken(value):: self {
      data+: {
        vault_pki_external_ca_secret_backend_order_challenge+: { [terraformName]+: { token: value } },
      },
    },
  },
}
