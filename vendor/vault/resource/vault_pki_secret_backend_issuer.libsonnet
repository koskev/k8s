{
  new(terraformName, issuer_ref, backend):: {
    _type:: 'tf',
    resource+: {
      vault_pki_secret_backend_issuer+: { [terraformName]+: {
        issuer_ref: issuer_ref,
        backend: backend,
      } },
    },
    withCrlDistributionPoints(value):: self {
      resource+: {
        vault_pki_secret_backend_issuer+: { [terraformName]+: { crl_distribution_points: value } },
      },
    },
    withUsage(value):: self {
      resource+: {
        vault_pki_secret_backend_issuer+: { [terraformName]+: { usage: value } },
      },
    },
    withId(value):: self {
      resource+: {
        vault_pki_secret_backend_issuer+: { [terraformName]+: { id: value } },
      },
    },
    withIssuerId(value):: self {
      resource+: {
        vault_pki_secret_backend_issuer+: { [terraformName]+: { issuer_id: value } },
      },
    },
    withLeafNotAfterBehavior(value):: self {
      resource+: {
        vault_pki_secret_backend_issuer+: { [terraformName]+: { leaf_not_after_behavior: value } },
      },
    },
    withDisableNameChecks(value):: self {
      resource+: {
        vault_pki_secret_backend_issuer+: { [terraformName]+: { disable_name_checks: value } },
      },
    },
    withDisableNameConstraintChecks(value):: self {
      resource+: {
        vault_pki_secret_backend_issuer+: { [terraformName]+: { disable_name_constraint_checks: value } },
      },
    },
    withOcspServers(value):: self {
      resource+: {
        vault_pki_secret_backend_issuer+: { [terraformName]+: { ocsp_servers: value } },
      },
    },
    withManualChain(value):: self {
      resource+: {
        vault_pki_secret_backend_issuer+: { [terraformName]+: { manual_chain: value } },
      },
    },
    withIssuerName(value):: self {
      resource+: {
        vault_pki_secret_backend_issuer+: { [terraformName]+: { issuer_name: value } },
      },
    },
    withRevocationSignatureAlgorithm(value):: self {
      resource+: {
        vault_pki_secret_backend_issuer+: { [terraformName]+: { revocation_signature_algorithm: value } },
      },
    },
    withIssuingCertificates(value):: self {
      resource+: {
        vault_pki_secret_backend_issuer+: { [terraformName]+: { issuing_certificates: value } },
      },
    },
    withDisableCriticalExtensionChecks(value):: self {
      resource+: {
        vault_pki_secret_backend_issuer+: { [terraformName]+: { disable_critical_extension_checks: value } },
      },
    },
    withIssuerRef(value):: self {
      resource+: {
        vault_pki_secret_backend_issuer+: { [terraformName]+: { issuer_ref: value } },
      },
    },
    withNamespace(value):: self {
      resource+: {
        vault_pki_secret_backend_issuer+: { [terraformName]+: { namespace: value } },
      },
    },
    withBackend(value):: self {
      resource+: {
        vault_pki_secret_backend_issuer+: { [terraformName]+: { backend: value } },
      },
    },
    withEnableAiaUrlTemplating(value):: self {
      resource+: {
        vault_pki_secret_backend_issuer+: { [terraformName]+: { enable_aia_url_templating: value } },
      },
    },
    withDisablePathLengthChecks(value):: self {
      resource+: {
        vault_pki_secret_backend_issuer+: { [terraformName]+: { disable_path_length_checks: value } },
      },
    },
  },
}
