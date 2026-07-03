{
  new(terraformName, backend):: {
    _type:: 'tf',
    resource+: {
      vault_pki_secret_backend_acme_eab+: { [terraformName]+: {
        backend: backend,
      } },
    },
    withAcmeDirectory(value):: self {
      resource+: {
        vault_pki_secret_backend_acme_eab+: { [terraformName]+: { acme_directory: value } },
      },
    },
    withEabId(value):: self {
      resource+: {
        vault_pki_secret_backend_acme_eab+: { [terraformName]+: { eab_id: value } },
      },
    },
    withCreatedOn(value):: self {
      resource+: {
        vault_pki_secret_backend_acme_eab+: { [terraformName]+: { created_on: value } },
      },
    },
    withId(value):: self {
      resource+: {
        vault_pki_secret_backend_acme_eab+: { [terraformName]+: { id: value } },
      },
    },
    withNamespace(value):: self {
      resource+: {
        vault_pki_secret_backend_acme_eab+: { [terraformName]+: { namespace: value } },
      },
    },
    withBackend(value):: self {
      resource+: {
        vault_pki_secret_backend_acme_eab+: { [terraformName]+: { backend: value } },
      },
    },
    withKeyType(value):: self {
      resource+: {
        vault_pki_secret_backend_acme_eab+: { [terraformName]+: { key_type: value } },
      },
    },
    withRole(value):: self {
      resource+: {
        vault_pki_secret_backend_acme_eab+: { [terraformName]+: { role: value } },
      },
    },
    withKey(value):: self {
      resource+: {
        vault_pki_secret_backend_acme_eab+: { [terraformName]+: { key: value } },
      },
    },
    withIssuer(value):: self {
      resource+: {
        vault_pki_secret_backend_acme_eab+: { [terraformName]+: { issuer: value } },
      },
    },
  },
}
