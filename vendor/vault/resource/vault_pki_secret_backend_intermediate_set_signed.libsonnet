{
  new(terraformName, certificate, backend):: {
    _type:: 'tf',
    resource+: {
      vault_pki_secret_backend_intermediate_set_signed+: { [terraformName]+: {
        certificate: certificate,
        backend: backend,
      } },
    },
    withImportedKeys(value):: self {
      resource+: {
        vault_pki_secret_backend_intermediate_set_signed+: { [terraformName]+: { imported_keys: value } },
      },
    },
    withId(value):: self {
      resource+: {
        vault_pki_secret_backend_intermediate_set_signed+: { [terraformName]+: { id: value } },
      },
    },
    withCertificate(value):: self {
      resource+: {
        vault_pki_secret_backend_intermediate_set_signed+: { [terraformName]+: { certificate: value } },
      },
    },
    withBackend(value):: self {
      resource+: {
        vault_pki_secret_backend_intermediate_set_signed+: { [terraformName]+: { backend: value } },
      },
    },
    withNamespace(value):: self {
      resource+: {
        vault_pki_secret_backend_intermediate_set_signed+: { [terraformName]+: { namespace: value } },
      },
    },
    withImportedIssuers(value):: self {
      resource+: {
        vault_pki_secret_backend_intermediate_set_signed+: { [terraformName]+: { imported_issuers: value } },
      },
    },
  },
}
