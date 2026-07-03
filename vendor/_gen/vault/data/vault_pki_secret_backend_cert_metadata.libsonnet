{
  new(terraformName, path, serial):: {
    _type:: 'tf',
    data+: {
      vault_pki_secret_backend_cert_metadata+: { [terraformName]+: {
        path: path,
        serial: serial,
      } },
    },
    '#withCertMetadata': { 'function': { help: |||
      The metadata returned from Vault 
    ||| } },
    withCertMetadata(value):: self {
      data+: {
        vault_pki_secret_backend_cert_metadata+: { [terraformName]+: { cert_metadata: value } },
      },
    },
    '#withExpiration': { 'function': { help: |||
      The certificate expiration as a Unix-style timestamp. 
    ||| } },
    withExpiration(value):: self {
      data+: {
        vault_pki_secret_backend_cert_metadata+: { [terraformName]+: { expiration: value } },
      },
    },
    withId(value):: self {
      data+: {
        vault_pki_secret_backend_cert_metadata+: { [terraformName]+: { id: value } },
      },
    },
    '#withIssuerId': { 'function': { help: |||
      ID of the issuer. 
    ||| } },
    withIssuerId(value):: self {
      data+: {
        vault_pki_secret_backend_cert_metadata+: { [terraformName]+: { issuer_id: value } },
      },
    },
    '#withNamespace': { 'function': { help: |||
      Target namespace. (requires Enterprise) 
    ||| } },
    withNamespace(value):: self {
      data+: {
        vault_pki_secret_backend_cert_metadata+: { [terraformName]+: { namespace: value } },
      },
    },
    '#withPath': { 'function': { help: |||
      Full path where PKI backend is mounted. 
    ||| } },
    withPath(value):: self {
      data+: {
        vault_pki_secret_backend_cert_metadata+: { [terraformName]+: { path: value } },
      },
    },
    '#withRole': { 'function': { help: |||
      The role that issued the certificate 
    ||| } },
    withRole(value):: self {
      data+: {
        vault_pki_secret_backend_cert_metadata+: { [terraformName]+: { role: value } },
      },
    },
    '#withSerial': { 'function': { help: |||
      Specifies the serial of the certificate whose metadata to read. 
    ||| } },
    withSerial(value):: self {
      data+: {
        vault_pki_secret_backend_cert_metadata+: { [terraformName]+: { serial: value } },
      },
    },
    '#withSerialNumber': { 'function': { help: |||
      The certificate serial number 
    ||| } },
    withSerialNumber(value):: self {
      data+: {
        vault_pki_secret_backend_cert_metadata+: { [terraformName]+: { serial_number: value } },
      },
    },
  },
}
