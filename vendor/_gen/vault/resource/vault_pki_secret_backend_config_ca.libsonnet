{
  new(terraformName, backend, pem_bundle):: {
    _type:: 'tf',
    resource+: {
      vault_pki_secret_backend_config_ca+: { [terraformName]+: {
        backend: backend,
        pem_bundle: pem_bundle,
      } },
    },
    '#withBackend':: { 'function': { help: |||
      The PKI secret backend the resource belongs to. 
    ||| } },
    withBackend(value):: self {
      resource+: {
        vault_pki_secret_backend_config_ca+: { [terraformName]+: { backend: value } },
      },
    },
    withId(value):: self {
      resource+: {
        vault_pki_secret_backend_config_ca+: { [terraformName]+: { id: value } },
      },
    },
    '#withNamespace':: { 'function': { help: |||
      Target namespace. (requires Enterprise) 
    ||| } },
    withNamespace(value):: self {
      resource+: {
        vault_pki_secret_backend_config_ca+: { [terraformName]+: { namespace: value } },
      },
    },
    '#withPemBundle':: { 'function': { help: |||
      The key and certificate PEM bundle. 
    ||| } },
    withPemBundle(value):: self {
      resource+: {
        vault_pki_secret_backend_config_ca+: { [terraformName]+: { pem_bundle: value } },
      },
    },
  },
}
