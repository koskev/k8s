{
  local outerSelf = self,
  new(terraformName, backend):: self.functions(terraformName) {
    ref():: outerSelf.ref(terraformName),
    _type:: 'tf',
    resource+: {
      vault_pki_secret_backend_crl_config+: {
        [terraformName]+: {
          backend: backend,
        },
      },
    },
  },
  functions(terraformName):: {
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
  ref(terraformName):: {
    local refSelf = self,
    plain(suffix=''):: '${ vault_pki_secret_backend_crl_config.%s%s }' % [terraformName, suffix],
    fields:: {
      '#auto_rebuild':: { 'function': { help: |||
        Enables or disables periodic rebuilding of the CRL upon expiry.
      ||| } },
      auto_rebuild(suffix=''):: refSelf.plain('.auto_rebuild%s' % suffix),
      '#auto_rebuild_grace_period':: { 'function': { help: |||
        Grace period before CRL expiry to attempt rebuild of CRL.
      ||| } },
      auto_rebuild_grace_period(suffix=''):: refSelf.plain('.auto_rebuild_grace_period%s' % suffix),
      '#backend':: { 'function': { help: |||
        The path of the PKI secret backend the resource belongs to.
      ||| } },
      backend(suffix=''):: refSelf.plain('.backend%s' % suffix),
      '#cross_cluster_revocation':: { 'function': { help: |||
        Enable cross-cluster revocation request queues.
      ||| } },
      cross_cluster_revocation(suffix=''):: refSelf.plain('.cross_cluster_revocation%s' % suffix),
      '#delta_rebuild_interval':: { 'function': { help: |||
        Interval to check for new revocations on, to regenerate the delta CRL.
      ||| } },
      delta_rebuild_interval(suffix=''):: refSelf.plain('.delta_rebuild_interval%s' % suffix),
      '#disable':: { 'function': { help: |||
        Disables or enables CRL building
      ||| } },
      disable(suffix=''):: refSelf.plain('.disable%s' % suffix),
      '#enable_delta':: { 'function': { help: |||
        Enables or disables building of delta CRLs with up-to-date revocation information, augmenting the last complete CRL.
      ||| } },
      enable_delta(suffix=''):: refSelf.plain('.enable_delta%s' % suffix),
      '#expiry':: { 'function': { help: |||
        Specifies the time until expiration.
      ||| } },
      expiry(suffix=''):: refSelf.plain('.expiry%s' % suffix),
      id(suffix=''):: refSelf.plain('.id%s' % suffix),
      '#max_crl_entries':: { 'function': { help: |||
        The maximum number of entries a CRL can contain. This option exists to prevent accidental runaway issuance/revocation from overloading Vault. If set to -1, the limit is disabled.
      ||| } },
      max_crl_entries(suffix=''):: refSelf.plain('.max_crl_entries%s' % suffix),
      '#namespace':: { 'function': { help: |||
        Target namespace. (requires Enterprise)
      ||| } },
      namespace(suffix=''):: refSelf.plain('.namespace%s' % suffix),
      '#ocsp_disable':: { 'function': { help: |||
        Disables or enables the OCSP responder in Vault.
      ||| } },
      ocsp_disable(suffix=''):: refSelf.plain('.ocsp_disable%s' % suffix),
      '#ocsp_expiry':: { 'function': { help: |||
        The amount of time an OCSP response can be cached for, useful for OCSP stapling refresh durations.
      ||| } },
      ocsp_expiry(suffix=''):: refSelf.plain('.ocsp_expiry%s' % suffix),
      '#unified_crl':: { 'function': { help: |||
        Enables unified CRL and OCSP building.
      ||| } },
      unified_crl(suffix=''):: refSelf.plain('.unified_crl%s' % suffix),
      '#unified_crl_on_existing_paths':: { 'function': { help: |||
        Enables serving the unified CRL and OCSP on the existing, previously cluster-local paths.
      ||| } },
      unified_crl_on_existing_paths(suffix=''):: refSelf.plain('.unified_crl_on_existing_paths%s' % suffix),
    },
  },
}
