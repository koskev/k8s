{
  new(terraformName, mount, order_id, role_name):: {
    _type:: 'tf',
    resource+: {
      vault_pki_external_ca_secret_backend_order_certificate+: { [terraformName]+: {
        mount: mount,
        order_id: order_id,
        role_name: role_name,
      } },
    },
    '#withCaChain': { 'function': { help: |||
      The PEM-encoded certificate chain. 
    ||| } },
    withCaChain(value):: self {
      resource+: {
        vault_pki_external_ca_secret_backend_order_certificate+: { [terraformName]+: { ca_chain: value } },
      },
    },
    '#withCertificate': { 'function': { help: |||
      The PEM-encoded certificate. 
    ||| } },
    withCertificate(value):: self {
      resource+: {
        vault_pki_external_ca_secret_backend_order_certificate+: { [terraformName]+: { certificate: value } },
      },
    },
    '#withMount': { 'function': { help: |||
      The path where the PKI External CA secret backend is mounted. 
    ||| } },
    withMount(value):: self {
      resource+: {
        vault_pki_external_ca_secret_backend_order_certificate+: { [terraformName]+: { mount: value } },
      },
    },
    '#withNamespace': { 'function': { help: |||
      Target namespace. (requires Enterprise) 
    ||| } },
    withNamespace(value):: self {
      resource+: {
        vault_pki_external_ca_secret_backend_order_certificate+: { [terraformName]+: { namespace: value } },
      },
    },
    '#withOrderId': { 'function': { help: |||
      The unique identifier for the ACME order. 
    ||| } },
    withOrderId(value):: self {
      resource+: {
        vault_pki_external_ca_secret_backend_order_certificate+: { [terraformName]+: { order_id: value } },
      },
    },
    '#withPrivateKey': { 'function': { help: |||
      The PEM-encoded private key. 
    ||| } },
    withPrivateKey(value):: self {
      resource+: {
        vault_pki_external_ca_secret_backend_order_certificate+: { [terraformName]+: { private_key: value } },
      },
    },
    '#withRoleName': { 'function': { help: |||
      Name of the role associated with the order. 
    ||| } },
    withRoleName(value):: self {
      resource+: {
        vault_pki_external_ca_secret_backend_order_certificate+: { [terraformName]+: { role_name: value } },
      },
    },
    '#withSerialNumber': { 'function': { help: |||
      The serial number of the issued certificate. 
    ||| } },
    withSerialNumber(value):: self {
      resource+: {
        vault_pki_external_ca_secret_backend_order_certificate+: { [terraformName]+: { serial_number: value } },
      },
    },
  },
}
