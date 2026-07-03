{
  new(terraformName, backend, pem_bundle):: {
    _type:: 'tf',
    resource+: {
      vault_pki_secret_backend_config_ca+: { [terraformName]+: {
        backend: backend,
        pem_bundle: pem_bundle,
      } },
    },
    withNamespace(value):: self {
      resource+: {
        vault_pki_secret_backend_config_ca+: { [terraformName]+: { namespace: value } },
      },
    },
    withId(value):: self {
      resource+: {
        vault_pki_secret_backend_config_ca+: { [terraformName]+: { id: value } },
      },
    },
    withBackend(value):: self {
      resource+: {
        vault_pki_secret_backend_config_ca+: { [terraformName]+: { backend: value } },
      },
    },
    withPemBundle(value):: self {
      resource+: {
        vault_pki_secret_backend_config_ca+: { [terraformName]+: { pem_bundle: value } },
      },
    },
  },
}
