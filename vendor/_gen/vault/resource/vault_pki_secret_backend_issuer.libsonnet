{
  new(terraformName, backend, issuer_ref):: {
    _type:: 'tf',
    resource+: {
      vault_pki_secret_backend_issuer+: { [terraformName]+: {
        backend: backend,
        issuer_ref: issuer_ref,
      } },
    },
    '#withBackend': { 'function': { help: |||
      Full path where PKI backend is mounted. 
    ||| } },
    withBackend(value):: self {
      resource+: {
        vault_pki_secret_backend_issuer+: { [terraformName]+: { backend: value } },
      },
    },
    '#withCrlDistributionPoints': { 'function': { help: |||
      Specifies the URL values for the CRL Distribution Points field. 
    ||| } },
    withCrlDistributionPoints(value):: self {
      resource+: {
        vault_pki_secret_backend_issuer+: { [terraformName]+: { crl_distribution_points: value } },
      },
    },
    '#withDisableCriticalExtensionChecks': { 'function': { help: |||
      This determines whether this issuer is able to issue certificates where the chain of trust (including the issued certificate) contain critical extensions not processed by Vault. 
    ||| } },
    withDisableCriticalExtensionChecks(value):: self {
      resource+: {
        vault_pki_secret_backend_issuer+: { [terraformName]+: { disable_critical_extension_checks: value } },
      },
    },
    '#withDisableNameChecks': { 'function': { help: |||
      This determines whether this issuer is able to issue certificates where the chain of trust (including the final issued certificate) contains a link in which the subject of the issuing certificate does not match the named issuer of the certificate it signed. 
    ||| } },
    withDisableNameChecks(value):: self {
      resource+: {
        vault_pki_secret_backend_issuer+: { [terraformName]+: { disable_name_checks: value } },
      },
    },
    '#withDisableNameConstraintChecks': { 'function': { help: |||
      This determines whether this issuer is able to issue certificates where the chain of trust (including the final issued certificate) violates the name constraints critical extension of one of the issuer certificates in the chain. 
    ||| } },
    withDisableNameConstraintChecks(value):: self {
      resource+: {
        vault_pki_secret_backend_issuer+: { [terraformName]+: { disable_name_constraint_checks: value } },
      },
    },
    '#withDisablePathLengthChecks': { 'function': { help: |||
      This determines whether this issuer is able to issue certificates where the chain of trust (including the final issued certificate) is longer than allowed by a certificate authority in that chain. 
    ||| } },
    withDisablePathLengthChecks(value):: self {
      resource+: {
        vault_pki_secret_backend_issuer+: { [terraformName]+: { disable_path_length_checks: value } },
      },
    },
    '#withEnableAiaUrlTemplating': { 'function': { help: |||
      Specifies that the AIA URL values should be templated. 
    ||| } },
    withEnableAiaUrlTemplating(value):: self {
      resource+: {
        vault_pki_secret_backend_issuer+: { [terraformName]+: { enable_aia_url_templating: value } },
      },
    },
    withId(value):: self {
      resource+: {
        vault_pki_secret_backend_issuer+: { [terraformName]+: { id: value } },
      },
    },
    '#withIssuerId': { 'function': { help: |||
      ID of the issuer. 
    ||| } },
    withIssuerId(value):: self {
      resource+: {
        vault_pki_secret_backend_issuer+: { [terraformName]+: { issuer_id: value } },
      },
    },
    '#withIssuerName': { 'function': { help: |||
      Reference to an existing issuer. 
    ||| } },
    withIssuerName(value):: self {
      resource+: {
        vault_pki_secret_backend_issuer+: { [terraformName]+: { issuer_name: value } },
      },
    },
    '#withIssuerRef': { 'function': { help: |||
      Reference to an existing issuer. 
    ||| } },
    withIssuerRef(value):: self {
      resource+: {
        vault_pki_secret_backend_issuer+: { [terraformName]+: { issuer_ref: value } },
      },
    },
    '#withIssuingCertificates': { 'function': { help: |||
      Specifies the URL values for the Issuing Certificate field. 
    ||| } },
    withIssuingCertificates(value):: self {
      resource+: {
        vault_pki_secret_backend_issuer+: { [terraformName]+: { issuing_certificates: value } },
      },
    },
    '#withLeafNotAfterBehavior': { 'function': { help: |||
      Behavior of a leaf's 'NotAfter' field during issuance. 
    ||| } },
    withLeafNotAfterBehavior(value):: self {
      resource+: {
        vault_pki_secret_backend_issuer+: { [terraformName]+: { leaf_not_after_behavior: value } },
      },
    },
    '#withManualChain': { 'function': { help: |||
      Chain of issuer references to build this issuer's computed CAChain field from, when non-empty. 
    ||| } },
    withManualChain(value):: self {
      resource+: {
        vault_pki_secret_backend_issuer+: { [terraformName]+: { manual_chain: value } },
      },
    },
    '#withNamespace': { 'function': { help: |||
      Target namespace. (requires Enterprise) 
    ||| } },
    withNamespace(value):: self {
      resource+: {
        vault_pki_secret_backend_issuer+: { [terraformName]+: { namespace: value } },
      },
    },
    '#withOcspServers': { 'function': { help: |||
      Specifies the URL values for the OCSP Servers field. 
    ||| } },
    withOcspServers(value):: self {
      resource+: {
        vault_pki_secret_backend_issuer+: { [terraformName]+: { ocsp_servers: value } },
      },
    },
    '#withRevocationSignatureAlgorithm': { 'function': { help: |||
      Which signature algorithm to use when building CRLs. 
    ||| } },
    withRevocationSignatureAlgorithm(value):: self {
      resource+: {
        vault_pki_secret_backend_issuer+: { [terraformName]+: { revocation_signature_algorithm: value } },
      },
    },
    '#withUsage': { 'function': { help: |||
      Comma-separated list of allowed usages for this issuer. 
    ||| } },
    withUsage(value):: self {
      resource+: {
        vault_pki_secret_backend_issuer+: { [terraformName]+: { usage: value } },
      },
    },
  },
}
