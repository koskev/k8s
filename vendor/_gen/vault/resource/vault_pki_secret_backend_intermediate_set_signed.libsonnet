{
  new(terraformName, backend, certificate):: {
    _type:: 'tf',
    resource+: {
      vault_pki_secret_backend_intermediate_set_signed+: { [terraformName]+: {
        backend: backend,
        certificate: certificate,
      } },
    },
    '#withBackend': { 'function': { help: |||
      The PKI secret backend the resource belongs to. 
    ||| } },
    withBackend(value):: self {
      resource+: {
        vault_pki_secret_backend_intermediate_set_signed+: { [terraformName]+: { backend: value } },
      },
    },
    '#withCertificate': { 'function': { help: |||
      The certificate. 
    ||| } },
    withCertificate(value):: self {
      resource+: {
        vault_pki_secret_backend_intermediate_set_signed+: { [terraformName]+: { certificate: value } },
      },
    },
    withId(value):: self {
      resource+: {
        vault_pki_secret_backend_intermediate_set_signed+: { [terraformName]+: { id: value } },
      },
    },
    '#withImportedIssuers': { 'function': { help: |||
      The imported issuers. 
    ||| } },
    withImportedIssuers(value):: self {
      resource+: {
        vault_pki_secret_backend_intermediate_set_signed+: { [terraformName]+: { imported_issuers: value } },
      },
    },
    '#withImportedKeys': { 'function': { help: |||
      The imported keys. 
    ||| } },
    withImportedKeys(value):: self {
      resource+: {
        vault_pki_secret_backend_intermediate_set_signed+: { [terraformName]+: { imported_keys: value } },
      },
    },
    '#withNamespace': { 'function': { help: |||
      Target namespace. (requires Enterprise) 
    ||| } },
    withNamespace(value):: self {
      resource+: {
        vault_pki_secret_backend_intermediate_set_signed+: { [terraformName]+: { namespace: value } },
      },
    },
  },
}
