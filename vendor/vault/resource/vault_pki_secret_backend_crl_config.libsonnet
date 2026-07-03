{
  new(terraformName, backend):: {
    _type:: 'tf',
    resource+: {
      vault_pki_secret_backend_crl_config+: { [terraformName]+: {
        backend: backend,
      } },
    },
    withMaxCrlEntries(value):: self {
      resource+: {
        vault_pki_secret_backend_crl_config+: { [terraformName]+: { max_crl_entries: value } },
      },
    },
    withDisable(value):: self {
      resource+: {
        vault_pki_secret_backend_crl_config+: { [terraformName]+: { disable: value } },
      },
    },
    withExpiry(value):: self {
      resource+: {
        vault_pki_secret_backend_crl_config+: { [terraformName]+: { expiry: value } },
      },
    },
    withBackend(value):: self {
      resource+: {
        vault_pki_secret_backend_crl_config+: { [terraformName]+: { backend: value } },
      },
    },
    withUnifiedCrl(value):: self {
      resource+: {
        vault_pki_secret_backend_crl_config+: { [terraformName]+: { unified_crl: value } },
      },
    },
    withOcspExpiry(value):: self {
      resource+: {
        vault_pki_secret_backend_crl_config+: { [terraformName]+: { ocsp_expiry: value } },
      },
    },
    withNamespace(value):: self {
      resource+: {
        vault_pki_secret_backend_crl_config+: { [terraformName]+: { namespace: value } },
      },
    },
    withAutoRebuild(value):: self {
      resource+: {
        vault_pki_secret_backend_crl_config+: { [terraformName]+: { auto_rebuild: value } },
      },
    },
    withCrossClusterRevocation(value):: self {
      resource+: {
        vault_pki_secret_backend_crl_config+: { [terraformName]+: { cross_cluster_revocation: value } },
      },
    },
    withId(value):: self {
      resource+: {
        vault_pki_secret_backend_crl_config+: { [terraformName]+: { id: value } },
      },
    },
    withUnifiedCrlOnExistingPaths(value):: self {
      resource+: {
        vault_pki_secret_backend_crl_config+: { [terraformName]+: { unified_crl_on_existing_paths: value } },
      },
    },
    withEnableDelta(value):: self {
      resource+: {
        vault_pki_secret_backend_crl_config+: { [terraformName]+: { enable_delta: value } },
      },
    },
    withAutoRebuildGracePeriod(value):: self {
      resource+: {
        vault_pki_secret_backend_crl_config+: { [terraformName]+: { auto_rebuild_grace_period: value } },
      },
    },
    withOcspDisable(value):: self {
      resource+: {
        vault_pki_secret_backend_crl_config+: { [terraformName]+: { ocsp_disable: value } },
      },
    },
    withDeltaRebuildInterval(value):: self {
      resource+: {
        vault_pki_secret_backend_crl_config+: { [terraformName]+: { delta_rebuild_interval: value } },
      },
    },
  },
}
