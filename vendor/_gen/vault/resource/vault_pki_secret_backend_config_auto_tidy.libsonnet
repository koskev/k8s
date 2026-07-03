{
  new(terraformName, backend, enabled):: self.functions(terraformName) {
    _type:: 'tf',
    resource+: {
      vault_pki_secret_backend_config_auto_tidy+: {
        [terraformName]+: {
          backend: backend,
          enabled: enabled,
        },
      },
    },
  },
  functions(terraformName):: {
    '#withAcmeAccountSafetyBuffer':: { 'function': { help: |||
      The amount of time that must pass after creation that an account with no orders is marked revoked, and the amount of time after being marked revoked or deactivated. 
    ||| } },
    withAcmeAccountSafetyBuffer(value):: self {
      resource+: {
        vault_pki_secret_backend_config_auto_tidy+: { [terraformName]+: { acme_account_safety_buffer: value } },
      },
    },
    '#withBackend':: { 'function': { help: |||
      The path of the PKI secret backend the resource belongs to. 
    ||| } },
    withBackend(value):: self {
      resource+: {
        vault_pki_secret_backend_config_auto_tidy+: { [terraformName]+: { backend: value } },
      },
    },
    '#withEnabled':: { 'function': { help: |||
      Specifies whether automatic tidy is enabled or not. 
    ||| } },
    withEnabled(value):: self {
      resource+: {
        vault_pki_secret_backend_config_auto_tidy+: { [terraformName]+: { enabled: value } },
      },
    },
    withId(value):: self {
      resource+: {
        vault_pki_secret_backend_config_auto_tidy+: { [terraformName]+: { id: value } },
      },
    },
    '#withIntervalDuration':: { 'function': { help: |||
      Interval at which to run an auto-tidy operation. This is the time between tidy invocations (after one finishes to the start of the next). 
    ||| } },
    withIntervalDuration(value):: self {
      resource+: {
        vault_pki_secret_backend_config_auto_tidy+: { [terraformName]+: { interval_duration: value } },
      },
    },
    '#withIssuerSafetyBuffer':: { 'function': { help: |||
      The amount of extra time that must have passed beyond issuer's expiration before it is removed from the backend storage. 
    ||| } },
    withIssuerSafetyBuffer(value):: self {
      resource+: {
        vault_pki_secret_backend_config_auto_tidy+: { [terraformName]+: { issuer_safety_buffer: value } },
      },
    },
    '#withMaintainStoredCertificateCounts':: { 'function': { help: |||
      This configures whether stored certificate are counted upon initialization of the backend, and whether during normal operation, a running count of certificates stored is maintained. 
    ||| } },
    withMaintainStoredCertificateCounts(value):: self {
      resource+: {
        vault_pki_secret_backend_config_auto_tidy+: { [terraformName]+: { maintain_stored_certificate_counts: value } },
      },
    },
    '#withMaxStartupBackoffDuration':: { 'function': { help: |||
      The maximum amount of time auto-tidy will be delayed after startup. 
    ||| } },
    withMaxStartupBackoffDuration(value):: self {
      resource+: {
        vault_pki_secret_backend_config_auto_tidy+: { [terraformName]+: { max_startup_backoff_duration: value } },
      },
    },
    '#withMinStartupBackoffDuration':: { 'function': { help: |||
      The minimum amount of time auto-tidy will be delayed after startup. 
    ||| } },
    withMinStartupBackoffDuration(value):: self {
      resource+: {
        vault_pki_secret_backend_config_auto_tidy+: { [terraformName]+: { min_startup_backoff_duration: value } },
      },
    },
    '#withNamespace':: { 'function': { help: |||
      Target namespace. (requires Enterprise) 
    ||| } },
    withNamespace(value):: self {
      resource+: {
        vault_pki_secret_backend_config_auto_tidy+: { [terraformName]+: { namespace: value } },
      },
    },
    '#withPauseDuration':: { 'function': { help: |||
      The amount of time to wait between processing certificates. 
    ||| } },
    withPauseDuration(value):: self {
      resource+: {
        vault_pki_secret_backend_config_auto_tidy+: { [terraformName]+: { pause_duration: value } },
      },
    },
    '#withPublishStoredCertificateCountMetrics':: { 'function': { help: |||
      This configures whether the stored certificate count is published to the metrics consumer. 
    ||| } },
    withPublishStoredCertificateCountMetrics(value):: self {
      resource+: {
        vault_pki_secret_backend_config_auto_tidy+: { [terraformName]+: { publish_stored_certificate_count_metrics: value } },
      },
    },
    '#withRevocationQueueSafetyBuffer':: { 'function': { help: |||
      The amount of time that must pass from the cross-cluster revocation request being initiated to when it will be slated for removal. 
    ||| } },
    withRevocationQueueSafetyBuffer(value):: self {
      resource+: {
        vault_pki_secret_backend_config_auto_tidy+: { [terraformName]+: { revocation_queue_safety_buffer: value } },
      },
    },
    '#withSafetyBuffer':: { 'function': { help: |||
      The amount of extra time that must have passed beyond certificate expiration before it is removed from the backend storage and/or revocation list. 
    ||| } },
    withSafetyBuffer(value):: self {
      resource+: {
        vault_pki_secret_backend_config_auto_tidy+: { [terraformName]+: { safety_buffer: value } },
      },
    },
    '#withTidyAcme':: { 'function': { help: |||
      Set to true to enable tidying ACME accounts, orders and authorizations. 
    ||| } },
    withTidyAcme(value):: self {
      resource+: {
        vault_pki_secret_backend_config_auto_tidy+: { [terraformName]+: { tidy_acme: value } },
      },
    },
    '#withTidyCertMetadata':: { 'function': { help: |||
      Set to true to enable tidying up certificate metadata. 
    ||| } },
    withTidyCertMetadata(value):: self {
      resource+: {
        vault_pki_secret_backend_config_auto_tidy+: { [terraformName]+: { tidy_cert_metadata: value } },
      },
    },
    '#withTidyCertStore':: { 'function': { help: |||
      Set to true to enable tidying up the certificate store 
    ||| } },
    withTidyCertStore(value):: self {
      resource+: {
        vault_pki_secret_backend_config_auto_tidy+: { [terraformName]+: { tidy_cert_store: value } },
      },
    },
    '#withTidyCmpv2NonceStore':: { 'function': { help: |||
      Set to true to enable tidying up the CMPv2 nonce store. 
    ||| } },
    withTidyCmpv2NonceStore(value):: self {
      resource+: {
        vault_pki_secret_backend_config_auto_tidy+: { [terraformName]+: { tidy_cmpv2_nonce_store: value } },
      },
    },
    '#withTidyCrossClusterRevokedCerts':: { 'function': { help: |||
      Set to true to enable tidying up the cross-cluster revoked certificate store. 
    ||| } },
    withTidyCrossClusterRevokedCerts(value):: self {
      resource+: {
        vault_pki_secret_backend_config_auto_tidy+: { [terraformName]+: { tidy_cross_cluster_revoked_certs: value } },
      },
    },
    '#withTidyExpiredIssuers':: { 'function': { help: |||
      Set to true to automatically remove expired issuers past the issuer_safety_buffer. No keys will be removed as part of this operation. 
    ||| } },
    withTidyExpiredIssuers(value):: self {
      resource+: {
        vault_pki_secret_backend_config_auto_tidy+: { [terraformName]+: { tidy_expired_issuers: value } },
      },
    },
    '#withTidyMoveLegacyCaBundle':: { 'function': { help: |||
      Set to true to move the legacy ca_bundle from /config/ca_bundle to /config/ca_bundle.bak. 
    ||| } },
    withTidyMoveLegacyCaBundle(value):: self {
      resource+: {
        vault_pki_secret_backend_config_auto_tidy+: { [terraformName]+: { tidy_move_legacy_ca_bundle: value } },
      },
    },
    '#withTidyRevocationQueue':: { 'function': { help: |||
      Set to true to remove stale revocation queue entries that haven't been confirmed by any active cluster. 
    ||| } },
    withTidyRevocationQueue(value):: self {
      resource+: {
        vault_pki_secret_backend_config_auto_tidy+: { [terraformName]+: { tidy_revocation_queue: value } },
      },
    },
    '#withTidyRevokedCertIssuerAssociations':: { 'function': { help: |||
      Set to true to validate issuer associations on revocation entries. This helps increase the performance of CRL building and OCSP responses. 
    ||| } },
    withTidyRevokedCertIssuerAssociations(value):: self {
      resource+: {
        vault_pki_secret_backend_config_auto_tidy+: { [terraformName]+: { tidy_revoked_cert_issuer_associations: value } },
      },
    },
    '#withTidyRevokedCerts':: { 'function': { help: |||
      Set to true to remove all invalid and expired certificates from storage. A revoked storage entry is considered invalid if the entry is empty, or the value within the entry is empty. If a certificate is removed due to expiry, the entry will also be removed from the CRL, and the CRL will be rotated. 
    ||| } },
    withTidyRevokedCerts(value):: self {
      resource+: {
        vault_pki_secret_backend_config_auto_tidy+: { [terraformName]+: { tidy_revoked_certs: value } },
      },
    },
  },
  ref(terraformName):: {
    local refSelf = self,
    plain(suffix=''):: '${ vault_pki_secret_backend_config_auto_tidy.%s%s }' % [terraformName, suffix],
    fields:: {
      '#acme_account_safety_buffer':: { 'function': { help: |||
        The amount of time that must pass after creation that an account with no orders is marked revoked, and the amount of time after being marked revoked or deactivated. 
      ||| } },
      acme_account_safety_buffer(suffix=''):: refSelf.plain('.acme_account_safety_buffer%s' % suffix),
      '#backend':: { 'function': { help: |||
        The path of the PKI secret backend the resource belongs to. 
      ||| } },
      backend(suffix=''):: refSelf.plain('.backend%s' % suffix),
      '#enabled':: { 'function': { help: |||
        Specifies whether automatic tidy is enabled or not. 
      ||| } },
      enabled(suffix=''):: refSelf.plain('.enabled%s' % suffix),
      id(suffix=''):: refSelf.plain('.id%s' % suffix),
      '#interval_duration':: { 'function': { help: |||
        Interval at which to run an auto-tidy operation. This is the time between tidy invocations (after one finishes to the start of the next). 
      ||| } },
      interval_duration(suffix=''):: refSelf.plain('.interval_duration%s' % suffix),
      '#issuer_safety_buffer':: { 'function': { help: |||
        The amount of extra time that must have passed beyond issuer's expiration before it is removed from the backend storage. 
      ||| } },
      issuer_safety_buffer(suffix=''):: refSelf.plain('.issuer_safety_buffer%s' % suffix),
      '#maintain_stored_certificate_counts':: { 'function': { help: |||
        This configures whether stored certificate are counted upon initialization of the backend, and whether during normal operation, a running count of certificates stored is maintained. 
      ||| } },
      maintain_stored_certificate_counts(suffix=''):: refSelf.plain('.maintain_stored_certificate_counts%s' % suffix),
      '#max_startup_backoff_duration':: { 'function': { help: |||
        The maximum amount of time auto-tidy will be delayed after startup. 
      ||| } },
      max_startup_backoff_duration(suffix=''):: refSelf.plain('.max_startup_backoff_duration%s' % suffix),
      '#min_startup_backoff_duration':: { 'function': { help: |||
        The minimum amount of time auto-tidy will be delayed after startup. 
      ||| } },
      min_startup_backoff_duration(suffix=''):: refSelf.plain('.min_startup_backoff_duration%s' % suffix),
      '#namespace':: { 'function': { help: |||
        Target namespace. (requires Enterprise) 
      ||| } },
      namespace(suffix=''):: refSelf.plain('.namespace%s' % suffix),
      '#pause_duration':: { 'function': { help: |||
        The amount of time to wait between processing certificates. 
      ||| } },
      pause_duration(suffix=''):: refSelf.plain('.pause_duration%s' % suffix),
      '#publish_stored_certificate_count_metrics':: { 'function': { help: |||
        This configures whether the stored certificate count is published to the metrics consumer. 
      ||| } },
      publish_stored_certificate_count_metrics(suffix=''):: refSelf.plain('.publish_stored_certificate_count_metrics%s' % suffix),
      '#revocation_queue_safety_buffer':: { 'function': { help: |||
        The amount of time that must pass from the cross-cluster revocation request being initiated to when it will be slated for removal. 
      ||| } },
      revocation_queue_safety_buffer(suffix=''):: refSelf.plain('.revocation_queue_safety_buffer%s' % suffix),
      '#safety_buffer':: { 'function': { help: |||
        The amount of extra time that must have passed beyond certificate expiration before it is removed from the backend storage and/or revocation list. 
      ||| } },
      safety_buffer(suffix=''):: refSelf.plain('.safety_buffer%s' % suffix),
      '#tidy_acme':: { 'function': { help: |||
        Set to true to enable tidying ACME accounts, orders and authorizations. 
      ||| } },
      tidy_acme(suffix=''):: refSelf.plain('.tidy_acme%s' % suffix),
      '#tidy_cert_metadata':: { 'function': { help: |||
        Set to true to enable tidying up certificate metadata. 
      ||| } },
      tidy_cert_metadata(suffix=''):: refSelf.plain('.tidy_cert_metadata%s' % suffix),
      '#tidy_cert_store':: { 'function': { help: |||
        Set to true to enable tidying up the certificate store 
      ||| } },
      tidy_cert_store(suffix=''):: refSelf.plain('.tidy_cert_store%s' % suffix),
      '#tidy_cmpv2_nonce_store':: { 'function': { help: |||
        Set to true to enable tidying up the CMPv2 nonce store. 
      ||| } },
      tidy_cmpv2_nonce_store(suffix=''):: refSelf.plain('.tidy_cmpv2_nonce_store%s' % suffix),
      '#tidy_cross_cluster_revoked_certs':: { 'function': { help: |||
        Set to true to enable tidying up the cross-cluster revoked certificate store. 
      ||| } },
      tidy_cross_cluster_revoked_certs(suffix=''):: refSelf.plain('.tidy_cross_cluster_revoked_certs%s' % suffix),
      '#tidy_expired_issuers':: { 'function': { help: |||
        Set to true to automatically remove expired issuers past the issuer_safety_buffer. No keys will be removed as part of this operation. 
      ||| } },
      tidy_expired_issuers(suffix=''):: refSelf.plain('.tidy_expired_issuers%s' % suffix),
      '#tidy_move_legacy_ca_bundle':: { 'function': { help: |||
        Set to true to move the legacy ca_bundle from /config/ca_bundle to /config/ca_bundle.bak. 
      ||| } },
      tidy_move_legacy_ca_bundle(suffix=''):: refSelf.plain('.tidy_move_legacy_ca_bundle%s' % suffix),
      '#tidy_revocation_queue':: { 'function': { help: |||
        Set to true to remove stale revocation queue entries that haven't been confirmed by any active cluster. 
      ||| } },
      tidy_revocation_queue(suffix=''):: refSelf.plain('.tidy_revocation_queue%s' % suffix),
      '#tidy_revoked_cert_issuer_associations':: { 'function': { help: |||
        Set to true to validate issuer associations on revocation entries. This helps increase the performance of CRL building and OCSP responses. 
      ||| } },
      tidy_revoked_cert_issuer_associations(suffix=''):: refSelf.plain('.tidy_revoked_cert_issuer_associations%s' % suffix),
      '#tidy_revoked_certs':: { 'function': { help: |||
        Set to true to remove all invalid and expired certificates from storage. A revoked storage entry is considered invalid if the entry is empty, or the value within the entry is empty. If a certificate is removed due to expiry, the entry will also be removed from the CRL, and the CRL will be rotated. 
      ||| } },
      tidy_revoked_certs(suffix=''):: refSelf.plain('.tidy_revoked_certs%s' % suffix),
    },
  },
}
