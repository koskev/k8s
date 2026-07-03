{
  new(terraformName, role_name, mount, order_id):: {
    _type:: 'tf',
    resource+: {
      vault_pki_external_ca_secret_backend_order_certificate+: { [terraformName]+: {
        role_name: role_name,
        mount: mount,
        order_id: order_id,
      } },
    },
    withCaChain(value):: self {
      resource+: {
        vault_pki_external_ca_secret_backend_order_certificate+: { [terraformName]+: { ca_chain: value } },
      },
    },
    withCertificate(value):: self {
      resource+: {
        vault_pki_external_ca_secret_backend_order_certificate+: { [terraformName]+: { certificate: value } },
      },
    },
    withRoleName(value):: self {
      resource+: {
        vault_pki_external_ca_secret_backend_order_certificate+: { [terraformName]+: { role_name: value } },
      },
    },
    withSerialNumber(value):: self {
      resource+: {
        vault_pki_external_ca_secret_backend_order_certificate+: { [terraformName]+: { serial_number: value } },
      },
    },
    withMount(value):: self {
      resource+: {
        vault_pki_external_ca_secret_backend_order_certificate+: { [terraformName]+: { mount: value } },
      },
    },
    withOrderId(value):: self {
      resource+: {
        vault_pki_external_ca_secret_backend_order_certificate+: { [terraformName]+: { order_id: value } },
      },
    },
    withNamespace(value):: self {
      resource+: {
        vault_pki_external_ca_secret_backend_order_certificate+: { [terraformName]+: { namespace: value } },
      },
    },
    withPrivateKey(value):: self {
      resource+: {
        vault_pki_external_ca_secret_backend_order_certificate+: { [terraformName]+: { private_key: value } },
      },
    },
  },
}
