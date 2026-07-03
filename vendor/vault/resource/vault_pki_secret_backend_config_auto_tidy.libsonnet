{
  new(terraformName, enabled, backend):: {
    _type:: 'tf',
    resource+: {
      vault_pki_secret_backend_config_auto_tidy+: { [terraformName]+: {
        enabled: enabled,
        backend: backend,
      } },
    },
    withNamespace(value):: self {
      resource+: {
        vault_pki_secret_backend_config_auto_tidy+: { [terraformName]+: { namespace: value } },
      },
    },
    withEnabled(value):: self {
      resource+: {
        vault_pki_secret_backend_config_auto_tidy+: { [terraformName]+: { enabled: value } },
      },
    },
    withMaintainStoredCertificateCounts(value):: self {
      resource+: {
        vault_pki_secret_backend_config_auto_tidy+: { [terraformName]+: { maintain_stored_certificate_counts: value } },
      },
    },
    withIssuerSafetyBuffer(value):: self {
      resource+: {
        vault_pki_secret_backend_config_auto_tidy+: { [terraformName]+: { issuer_safety_buffer: value } },
      },
    },
    withAcmeAccountSafetyBuffer(value):: self {
      resource+: {
        vault_pki_secret_backend_config_auto_tidy+: { [terraformName]+: { acme_account_safety_buffer: value } },
      },
    },
    withId(value):: self {
      resource+: {
        vault_pki_secret_backend_config_auto_tidy+: { [terraformName]+: { id: value } },
      },
    },
    withTidyAcme(value):: self {
      resource+: {
        vault_pki_secret_backend_config_auto_tidy+: { [terraformName]+: { tidy_acme: value } },
      },
    },
    withTidyExpiredIssuers(value):: self {
      resource+: {
        vault_pki_secret_backend_config_auto_tidy+: { [terraformName]+: { tidy_expired_issuers: value } },
      },
    },
    withMaxStartupBackoffDuration(value):: self {
      resource+: {
        vault_pki_secret_backend_config_auto_tidy+: { [terraformName]+: { max_startup_backoff_duration: value } },
      },
    },
    withTidyRevokedCerts(value):: self {
      resource+: {
        vault_pki_secret_backend_config_auto_tidy+: { [terraformName]+: { tidy_revoked_certs: value } },
      },
    },
    withTidyCmpv2NonceStore(value):: self {
      resource+: {
        vault_pki_secret_backend_config_auto_tidy+: { [terraformName]+: { tidy_cmpv2_nonce_store: value } },
      },
    },
    withTidyCrossClusterRevokedCerts(value):: self {
      resource+: {
        vault_pki_secret_backend_config_auto_tidy+: { [terraformName]+: { tidy_cross_cluster_revoked_certs: value } },
      },
    },
    withRevocationQueueSafetyBuffer(value):: self {
      resource+: {
        vault_pki_secret_backend_config_auto_tidy+: { [terraformName]+: { revocation_queue_safety_buffer: value } },
      },
    },
    withTidyRevokedCertIssuerAssociations(value):: self {
      resource+: {
        vault_pki_secret_backend_config_auto_tidy+: { [terraformName]+: { tidy_revoked_cert_issuer_associations: value } },
      },
    },
    withSafetyBuffer(value):: self {
      resource+: {
        vault_pki_secret_backend_config_auto_tidy+: { [terraformName]+: { safety_buffer: value } },
      },
    },
    withPauseDuration(value):: self {
      resource+: {
        vault_pki_secret_backend_config_auto_tidy+: { [terraformName]+: { pause_duration: value } },
      },
    },
    withPublishStoredCertificateCountMetrics(value):: self {
      resource+: {
        vault_pki_secret_backend_config_auto_tidy+: { [terraformName]+: { publish_stored_certificate_count_metrics: value } },
      },
    },
    withTidyCertMetadata(value):: self {
      resource+: {
        vault_pki_secret_backend_config_auto_tidy+: { [terraformName]+: { tidy_cert_metadata: value } },
      },
    },
    withTidyCertStore(value):: self {
      resource+: {
        vault_pki_secret_backend_config_auto_tidy+: { [terraformName]+: { tidy_cert_store: value } },
      },
    },
    withTidyRevocationQueue(value):: self {
      resource+: {
        vault_pki_secret_backend_config_auto_tidy+: { [terraformName]+: { tidy_revocation_queue: value } },
      },
    },
    withMinStartupBackoffDuration(value):: self {
      resource+: {
        vault_pki_secret_backend_config_auto_tidy+: { [terraformName]+: { min_startup_backoff_duration: value } },
      },
    },
    withIntervalDuration(value):: self {
      resource+: {
        vault_pki_secret_backend_config_auto_tidy+: { [terraformName]+: { interval_duration: value } },
      },
    },
    withTidyMoveLegacyCaBundle(value):: self {
      resource+: {
        vault_pki_secret_backend_config_auto_tidy+: { [terraformName]+: { tidy_move_legacy_ca_bundle: value } },
      },
    },
    withBackend(value):: self {
      resource+: {
        vault_pki_secret_backend_config_auto_tidy+: { [terraformName]+: { backend: value } },
      },
    },
  },
}
