{
  new(terraformName, backend):: {
    _type:: 'tf',
    resource+: {
      vault_pki_secret_backend_crl_config+: { [terraformName]+: {
        backend: backend,
      } },
    },
    '#withAutoRebuild':: { 'function': { help: |||
      Enables or disables periodic rebuilding of the CRL upon expiry. 
    ||| } },
    withAutoRebuild(value):: self {
      resource+: {
        vault_pki_secret_backend_crl_config+: { [terraformName]+: { auto_rebuild: value } },
      },
    },
    '#withAutoRebuildGracePeriod':: { 'function': { help: |||
      Grace period before CRL expiry to attempt rebuild of CRL. 
    ||| } },
    withAutoRebuildGracePeriod(value):: self {
      resource+: {
        vault_pki_secret_backend_crl_config+: { [terraformName]+: { auto_rebuild_grace_period: value } },
      },
    },
    '#withBackend':: { 'function': { help: |||
      The path of the PKI secret backend the resource belongs to. 
    ||| } },
    withBackend(value):: self {
      resource+: {
        vault_pki_secret_backend_crl_config+: { [terraformName]+: { backend: value } },
      },
    },
    '#withCrossClusterRevocation':: { 'function': { help: |||
      Enable cross-cluster revocation request queues. 
    ||| } },
    withCrossClusterRevocation(value):: self {
      resource+: {
        vault_pki_secret_backend_crl_config+: { [terraformName]+: { cross_cluster_revocation: value } },
      },
    },
    '#withDeltaRebuildInterval':: { 'function': { help: |||
      Interval to check for new revocations on, to regenerate the delta CRL. 
    ||| } },
    withDeltaRebuildInterval(value):: self {
      resource+: {
        vault_pki_secret_backend_crl_config+: { [terraformName]+: { delta_rebuild_interval: value } },
      },
    },
    '#withDisable':: { 'function': { help: |||
      Disables or enables CRL building 
    ||| } },
    withDisable(value):: self {
      resource+: {
        vault_pki_secret_backend_crl_config+: { [terraformName]+: { disable: value } },
      },
    },
    '#withEnableDelta':: { 'function': { help: |||
      Enables or disables building of delta CRLs with up-to-date revocation information, augmenting the last complete CRL. 
    ||| } },
    withEnableDelta(value):: self {
      resource+: {
        vault_pki_secret_backend_crl_config+: { [terraformName]+: { enable_delta: value } },
      },
    },
    '#withExpiry':: { 'function': { help: |||
      Specifies the time until expiration. 
    ||| } },
    withExpiry(value):: self {
      resource+: {
        vault_pki_secret_backend_crl_config+: { [terraformName]+: { expiry: value } },
      },
    },
    withId(value):: self {
      resource+: {
        vault_pki_secret_backend_crl_config+: { [terraformName]+: { id: value } },
      },
    },
    '#withMaxCrlEntries':: { 'function': { help: |||
      The maximum number of entries a CRL can contain. This option exists to prevent accidental runaway issuance/revocation from overloading Vault. If set to -1, the limit is disabled. 
    ||| } },
    withMaxCrlEntries(value):: self {
      resource+: {
        vault_pki_secret_backend_crl_config+: { [terraformName]+: { max_crl_entries: value } },
      },
    },
    '#withNamespace':: { 'function': { help: |||
      Target namespace. (requires Enterprise) 
    ||| } },
    withNamespace(value):: self {
      resource+: {
        vault_pki_secret_backend_crl_config+: { [terraformName]+: { namespace: value } },
      },
    },
    '#withOcspDisable':: { 'function': { help: |||
      Disables or enables the OCSP responder in Vault. 
    ||| } },
    withOcspDisable(value):: self {
      resource+: {
        vault_pki_secret_backend_crl_config+: { [terraformName]+: { ocsp_disable: value } },
      },
    },
    '#withOcspExpiry':: { 'function': { help: |||
      The amount of time an OCSP response can be cached for, useful for OCSP stapling refresh durations. 
    ||| } },
    withOcspExpiry(value):: self {
      resource+: {
        vault_pki_secret_backend_crl_config+: { [terraformName]+: { ocsp_expiry: value } },
      },
    },
    '#withUnifiedCrl':: { 'function': { help: |||
      Enables unified CRL and OCSP building. 
    ||| } },
    withUnifiedCrl(value):: self {
      resource+: {
        vault_pki_secret_backend_crl_config+: { [terraformName]+: { unified_crl: value } },
      },
    },
    '#withUnifiedCrlOnExistingPaths':: { 'function': { help: |||
      Enables serving the unified CRL and OCSP on the existing, previously cluster-local paths. 
    ||| } },
    withUnifiedCrlOnExistingPaths(value):: self {
      resource+: {
        vault_pki_secret_backend_crl_config+: { [terraformName]+: { unified_crl_on_existing_paths: value } },
      },
    },
  },
}
