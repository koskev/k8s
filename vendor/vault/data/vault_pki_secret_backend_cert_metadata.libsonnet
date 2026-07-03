{
  new(terraformName, serial, path):: {
    _type:: 'tf',
    data+: {
      vault_pki_secret_backend_cert_metadata+: { [terraformName]+: {
        serial: serial,
        path: path,
      } },
    },
    withSerial(value):: self {
      data+: {
        vault_pki_secret_backend_cert_metadata+: { [terraformName]+: { serial: value } },
      },
    },
    withExpiration(value):: self {
      data+: {
        vault_pki_secret_backend_cert_metadata+: { [terraformName]+: { expiration: value } },
      },
    },
    withSerialNumber(value):: self {
      data+: {
        vault_pki_secret_backend_cert_metadata+: { [terraformName]+: { serial_number: value } },
      },
    },
    withCertMetadata(value):: self {
      data+: {
        vault_pki_secret_backend_cert_metadata+: { [terraformName]+: { cert_metadata: value } },
      },
    },
    withId(value):: self {
      data+: {
        vault_pki_secret_backend_cert_metadata+: { [terraformName]+: { id: value } },
      },
    },
    withPath(value):: self {
      data+: {
        vault_pki_secret_backend_cert_metadata+: { [terraformName]+: { path: value } },
      },
    },
    withIssuerId(value):: self {
      data+: {
        vault_pki_secret_backend_cert_metadata+: { [terraformName]+: { issuer_id: value } },
      },
    },
    withNamespace(value):: self {
      data+: {
        vault_pki_secret_backend_cert_metadata+: { [terraformName]+: { namespace: value } },
      },
    },
    withRole(value):: self {
      data+: {
        vault_pki_secret_backend_cert_metadata+: { [terraformName]+: { role: value } },
      },
    },
  },
}
