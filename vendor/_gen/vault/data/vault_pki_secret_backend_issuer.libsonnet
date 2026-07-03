{
  new(terraformName, backend, issuer_ref):: {
    _type:: 'tf',
    data+: {
      vault_pki_secret_backend_issuer+: { [terraformName]+: {
        backend: backend,
        issuer_ref: issuer_ref,
      } },
    },
    '#withBackend':: { 'function': { help: |||
      Full path where PKI backend is mounted. 
    ||| } },
    withBackend(value):: self {
      data+: {
        vault_pki_secret_backend_issuer+: { [terraformName]+: { backend: value } },
      },
    },
    '#withCaChain':: { 'function': { help: |||
      The CA chain as a list of format specific certificates 
    ||| } },
    withCaChain(value):: self {
      data+: {
        vault_pki_secret_backend_issuer+: { [terraformName]+: { ca_chain: value } },
      },
    },
    '#withCertificate':: { 'function': { help: |||
      The certificate. 
    ||| } },
    withCertificate(value):: self {
      data+: {
        vault_pki_secret_backend_issuer+: { [terraformName]+: { certificate: value } },
      },
    },
    '#withDisableCriticalExtensionChecks':: { 'function': { help: |||
      This determines whether this issuer is able to issue certificates where the chain of trust (including the issued certificate) contain critical extensions not processed by Vault. 
    ||| } },
    withDisableCriticalExtensionChecks(value):: self {
      data+: {
        vault_pki_secret_backend_issuer+: { [terraformName]+: { disable_critical_extension_checks: value } },
      },
    },
    '#withDisableNameChecks':: { 'function': { help: |||
      This determines whether this issuer is able to issue certificates where the chain of trust (including the final issued certificate) contains a link in which the subject of the issuing certificate does not match the named issuer of the certificate it signed. 
    ||| } },
    withDisableNameChecks(value):: self {
      data+: {
        vault_pki_secret_backend_issuer+: { [terraformName]+: { disable_name_checks: value } },
      },
    },
    '#withDisableNameConstraintChecks':: { 'function': { help: |||
      This determines whether this issuer is able to issue certificates where the chain of trust (including the final issued certificate) violates the name constraints critical extension of one of the issuer certificates in the chain 
    ||| } },
    withDisableNameConstraintChecks(value):: self {
      data+: {
        vault_pki_secret_backend_issuer+: { [terraformName]+: { disable_name_constraint_checks: value } },
      },
    },
    '#withDisablePathLengthChecks':: { 'function': { help: |||
      This determines whether this issuer is able to issue certificates where the chain of trust (including the final issued certificate) is longer than allowed by a certificate authority in that chain. 
    ||| } },
    withDisablePathLengthChecks(value):: self {
      data+: {
        vault_pki_secret_backend_issuer+: { [terraformName]+: { disable_path_length_checks: value } },
      },
    },
    withId(value):: self {
      data+: {
        vault_pki_secret_backend_issuer+: { [terraformName]+: { id: value } },
      },
    },
    '#withIssuerId':: { 'function': { help: |||
      ID of the issuer. 
    ||| } },
    withIssuerId(value):: self {
      data+: {
        vault_pki_secret_backend_issuer+: { [terraformName]+: { issuer_id: value } },
      },
    },
    '#withIssuerName':: { 'function': { help: |||
      Name of the issuer. 
    ||| } },
    withIssuerName(value):: self {
      data+: {
        vault_pki_secret_backend_issuer+: { [terraformName]+: { issuer_name: value } },
      },
    },
    '#withIssuerRef':: { 'function': { help: |||
      Reference to an existing issuer. 
    ||| } },
    withIssuerRef(value):: self {
      data+: {
        vault_pki_secret_backend_issuer+: { [terraformName]+: { issuer_ref: value } },
      },
    },
    '#withKeyId':: { 'function': { help: |||
      ID of the key used by the issuer. 
    ||| } },
    withKeyId(value):: self {
      data+: {
        vault_pki_secret_backend_issuer+: { [terraformName]+: { key_id: value } },
      },
    },
    '#withLeafNotAfterBehavior':: { 'function': { help: |||
      Behavior of a leaf's NotAfter field during issuance. 
    ||| } },
    withLeafNotAfterBehavior(value):: self {
      data+: {
        vault_pki_secret_backend_issuer+: { [terraformName]+: { leaf_not_after_behavior: value } },
      },
    },
    '#withManualChain':: { 'function': { help: |||
      Chain of issuer references to build this issuer's computed CAChain field from, when non-empty 
    ||| } },
    withManualChain(value):: self {
      data+: {
        vault_pki_secret_backend_issuer+: { [terraformName]+: { manual_chain: value } },
      },
    },
    '#withNamespace':: { 'function': { help: |||
      Target namespace. (requires Enterprise) 
    ||| } },
    withNamespace(value):: self {
      data+: {
        vault_pki_secret_backend_issuer+: { [terraformName]+: { namespace: value } },
      },
    },
    '#withUsage':: { 'function': { help: |||
      Allowed usages for this issuer. 
    ||| } },
    withUsage(value):: self {
      data+: {
        vault_pki_secret_backend_issuer+: { [terraformName]+: { usage: value } },
      },
    },
  },
}
