{
  new(terraformName, backend, issuer_ref):: {
    _type:: 'tf',
    data+: {
      vault_pki_secret_backend_issuer+: { [terraformName]+: {
        backend: backend,
        issuer_ref: issuer_ref,
      } },
    },
    withCaChain(value):: self {
      data+: {
        vault_pki_secret_backend_issuer+: { [terraformName]+: { ca_chain: value } },
      },
    },
    withDisablePathLengthChecks(value):: self {
      data+: {
        vault_pki_secret_backend_issuer+: { [terraformName]+: { disable_path_length_checks: value } },
      },
    },
    withLeafNotAfterBehavior(value):: self {
      data+: {
        vault_pki_secret_backend_issuer+: { [terraformName]+: { leaf_not_after_behavior: value } },
      },
    },
    withCertificate(value):: self {
      data+: {
        vault_pki_secret_backend_issuer+: { [terraformName]+: { certificate: value } },
      },
    },
    withKeyId(value):: self {
      data+: {
        vault_pki_secret_backend_issuer+: { [terraformName]+: { key_id: value } },
      },
    },
    withBackend(value):: self {
      data+: {
        vault_pki_secret_backend_issuer+: { [terraformName]+: { backend: value } },
      },
    },
    withDisableCriticalExtensionChecks(value):: self {
      data+: {
        vault_pki_secret_backend_issuer+: { [terraformName]+: { disable_critical_extension_checks: value } },
      },
    },
    withDisableNameChecks(value):: self {
      data+: {
        vault_pki_secret_backend_issuer+: { [terraformName]+: { disable_name_checks: value } },
      },
    },
    withIssuerId(value):: self {
      data+: {
        vault_pki_secret_backend_issuer+: { [terraformName]+: { issuer_id: value } },
      },
    },
    withIssuerRef(value):: self {
      data+: {
        vault_pki_secret_backend_issuer+: { [terraformName]+: { issuer_ref: value } },
      },
    },
    withId(value):: self {
      data+: {
        vault_pki_secret_backend_issuer+: { [terraformName]+: { id: value } },
      },
    },
    withIssuerName(value):: self {
      data+: {
        vault_pki_secret_backend_issuer+: { [terraformName]+: { issuer_name: value } },
      },
    },
    withUsage(value):: self {
      data+: {
        vault_pki_secret_backend_issuer+: { [terraformName]+: { usage: value } },
      },
    },
    withNamespace(value):: self {
      data+: {
        vault_pki_secret_backend_issuer+: { [terraformName]+: { namespace: value } },
      },
    },
    withManualChain(value):: self {
      data+: {
        vault_pki_secret_backend_issuer+: { [terraformName]+: { manual_chain: value } },
      },
    },
    withDisableNameConstraintChecks(value):: self {
      data+: {
        vault_pki_secret_backend_issuer+: { [terraformName]+: { disable_name_constraint_checks: value } },
      },
    },
  },
}
