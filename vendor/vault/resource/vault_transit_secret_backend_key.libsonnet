{
  new(terraformName, name, backend):: {
    _type:: 'tf',
    resource+: {
      vault_transit_secret_backend_key+: { [terraformName]+: {
        name: name,
        backend: backend,
      } },
    },
    withContext(value):: self {
      resource+: {
        vault_transit_secret_backend_key+: { [terraformName]+: { context: value } },
      },
    },
    withHybridKeyTypePqc(value):: self {
      resource+: {
        vault_transit_secret_backend_key+: { [terraformName]+: { hybrid_key_type_pqc: value } },
      },
    },
    withDerived(value):: self {
      resource+: {
        vault_transit_secret_backend_key+: { [terraformName]+: { derived: value } },
      },
    },
    withKeySize(value):: self {
      resource+: {
        vault_transit_secret_backend_key+: { [terraformName]+: { key_size: value } },
      },
    },
    withHybridKeyTypeEc(value):: self {
      resource+: {
        vault_transit_secret_backend_key+: { [terraformName]+: { hybrid_key_type_ec: value } },
      },
    },
    withMinAvailableVersion(value):: self {
      resource+: {
        vault_transit_secret_backend_key+: { [terraformName]+: { min_available_version: value } },
      },
    },
    withManagedKeyName(value):: self {
      resource+: {
        vault_transit_secret_backend_key+: { [terraformName]+: { managed_key_name: value } },
      },
    },
    withAutoRotatePeriod(value):: self {
      resource+: {
        vault_transit_secret_backend_key+: { [terraformName]+: { auto_rotate_period: value } },
      },
    },
    withLatestVersion(value):: self {
      resource+: {
        vault_transit_secret_backend_key+: { [terraformName]+: { latest_version: value } },
      },
    },
    withName(value):: self {
      resource+: {
        vault_transit_secret_backend_key+: { [terraformName]+: { name: value } },
      },
    },
    withBackend(value):: self {
      resource+: {
        vault_transit_secret_backend_key+: { [terraformName]+: { backend: value } },
      },
    },
    withManagedKeyId(value):: self {
      resource+: {
        vault_transit_secret_backend_key+: { [terraformName]+: { managed_key_id: value } },
      },
    },
    withSupportsDecryption(value):: self {
      resource+: {
        vault_transit_secret_backend_key+: { [terraformName]+: { supports_decryption: value } },
      },
    },
    withSupportsDerivation(value):: self {
      resource+: {
        vault_transit_secret_backend_key+: { [terraformName]+: { supports_derivation: value } },
      },
    },
    withSupportsEncryption(value):: self {
      resource+: {
        vault_transit_secret_backend_key+: { [terraformName]+: { supports_encryption: value } },
      },
    },
    withMinEncryptionVersion(value):: self {
      resource+: {
        vault_transit_secret_backend_key+: { [terraformName]+: { min_encryption_version: value } },
      },
    },
    withConvergentEncryption(value):: self {
      resource+: {
        vault_transit_secret_backend_key+: { [terraformName]+: { convergent_encryption: value } },
      },
    },
    withMinDecryptionVersion(value):: self {
      resource+: {
        vault_transit_secret_backend_key+: { [terraformName]+: { min_decryption_version: value } },
      },
    },
    withNamespace(value):: self {
      resource+: {
        vault_transit_secret_backend_key+: { [terraformName]+: { namespace: value } },
      },
    },
    withType(value):: self {
      resource+: {
        vault_transit_secret_backend_key+: { [terraformName]+: { type: value } },
      },
    },
    withExportable(value):: self {
      resource+: {
        vault_transit_secret_backend_key+: { [terraformName]+: { exportable: value } },
      },
    },
    withSupportsSigning(value):: self {
      resource+: {
        vault_transit_secret_backend_key+: { [terraformName]+: { supports_signing: value } },
      },
    },
    withParameterSet(value):: self {
      resource+: {
        vault_transit_secret_backend_key+: { [terraformName]+: { parameter_set: value } },
      },
    },
    withAllowPlaintextBackup(value):: self {
      resource+: {
        vault_transit_secret_backend_key+: { [terraformName]+: { allow_plaintext_backup: value } },
      },
    },
    withDeletionAllowed(value):: self {
      resource+: {
        vault_transit_secret_backend_key+: { [terraformName]+: { deletion_allowed: value } },
      },
    },
    withKeys(value):: self {
      resource+: {
        vault_transit_secret_backend_key+: { [terraformName]+: { keys: value } },
      },
    },
    withId(value):: self {
      resource+: {
        vault_transit_secret_backend_key+: { [terraformName]+: { id: value } },
      },
    },
  },
}
