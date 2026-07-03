{
  new(terraformName, backend, name):: {
    _type:: 'tf',
    resource+: {
      vault_transit_secret_backend_key+: { [terraformName]+: {
        backend: backend,
        name: name,
      } },
    },
    '#withAllowPlaintextBackup':: { 'function': { help: |||
      If set, enables taking backup of named key in the plaintext format. Once set, this cannot be disabled. 
    ||| } },
    withAllowPlaintextBackup(value):: self {
      resource+: {
        vault_transit_secret_backend_key+: { [terraformName]+: { allow_plaintext_backup: value } },
      },
    },
    '#withAutoRotatePeriod':: { 'function': { help: |||
      Amount of seconds the key should live before being automatically rotated. A value of 0 disables automatic rotation for the key. 
    ||| } },
    withAutoRotatePeriod(value):: self {
      resource+: {
        vault_transit_secret_backend_key+: { [terraformName]+: { auto_rotate_period: value } },
      },
    },
    '#withBackend':: { 'function': { help: |||
      The Transit secret backend the resource belongs to. 
    ||| } },
    withBackend(value):: self {
      resource+: {
        vault_transit_secret_backend_key+: { [terraformName]+: { backend: value } },
      },
    },
    '#withContext':: { 'function': { help: |||
      Base64 encoded context for key derivation. Required if derived is set to true. 
    ||| } },
    withContext(value):: self {
      resource+: {
        vault_transit_secret_backend_key+: { [terraformName]+: { context: value } },
      },
    },
    '#withConvergentEncryption':: { 'function': { help: |||
      Whether or not to support convergent encryption, where the same plaintext creates the same ciphertext. This requires derived to be set to true. 
    ||| } },
    withConvergentEncryption(value):: self {
      resource+: {
        vault_transit_secret_backend_key+: { [terraformName]+: { convergent_encryption: value } },
      },
    },
    '#withDeletionAllowed':: { 'function': { help: |||
      Specifies if the key is allowed to be deleted. 
    ||| } },
    withDeletionAllowed(value):: self {
      resource+: {
        vault_transit_secret_backend_key+: { [terraformName]+: { deletion_allowed: value } },
      },
    },
    '#withDerived':: { 'function': { help: |||
      Specifies if key derivation is to be used. If enabled, all encrypt/decrypt requests to this key must provide a context which is used for key derivation. 
    ||| } },
    withDerived(value):: self {
      resource+: {
        vault_transit_secret_backend_key+: { [terraformName]+: { derived: value } },
      },
    },
    '#withExportable':: { 'function': { help: |||
      Enables keys to be exportable. This allows for all the valid keys in the key ring to be exported. Once set, this cannot be disabled. 
    ||| } },
    withExportable(value):: self {
      resource+: {
        vault_transit_secret_backend_key+: { [terraformName]+: { exportable: value } },
      },
    },
    '#withHybridKeyTypeEc':: { 'function': { help: |||
      The elliptic curve algorithm to use for hybrid signatures. Supported key types are `ecdsa-p256`, `ecdsa-p384`, `ecdsa-p521`, and `ed25519`. 
    ||| } },
    withHybridKeyTypeEc(value):: self {
      resource+: {
        vault_transit_secret_backend_key+: { [terraformName]+: { hybrid_key_type_ec: value } },
      },
    },
    '#withHybridKeyTypePqc':: { 'function': { help: |||
      The post-quantum algorithm to use for hybrid signatures. Currently, ML-DSA is the only supported key type. 
    ||| } },
    withHybridKeyTypePqc(value):: self {
      resource+: {
        vault_transit_secret_backend_key+: { [terraformName]+: { hybrid_key_type_pqc: value } },
      },
    },
    withId(value):: self {
      resource+: {
        vault_transit_secret_backend_key+: { [terraformName]+: { id: value } },
      },
    },
    '#withKeySize':: { 'function': { help: |||
      The key size in bytes for algorithms that allow variable key sizes. Currently only applicable to HMAC; this value must be between 32 and 512. 
    ||| } },
    withKeySize(value):: self {
      resource+: {
        vault_transit_secret_backend_key+: { [terraformName]+: { key_size: value } },
      },
    },
    '#withKeys':: { 'function': { help: |||
      List of key versions in the keyring. 
    ||| } },
    withKeys(value):: self {
      resource+: {
        vault_transit_secret_backend_key+: { [terraformName]+: { keys: value } },
      },
    },
    '#withLatestVersion':: { 'function': { help: |||
      Latest key version in use in the keyring 
    ||| } },
    withLatestVersion(value):: self {
      resource+: {
        vault_transit_secret_backend_key+: { [terraformName]+: { latest_version: value } },
      },
    },
    '#withManagedKeyId':: { 'function': { help: |||
      The UUID of the managed key to use when the key type is managed_key. 
    ||| } },
    withManagedKeyId(value):: self {
      resource+: {
        vault_transit_secret_backend_key+: { [terraformName]+: { managed_key_id: value } },
      },
    },
    '#withManagedKeyName':: { 'function': { help: |||
      The name of the managed key to use when the key type is managed_key. 
    ||| } },
    withManagedKeyName(value):: self {
      resource+: {
        vault_transit_secret_backend_key+: { [terraformName]+: { managed_key_name: value } },
      },
    },
    '#withMinAvailableVersion':: { 'function': { help: |||
      Minimum key version available for use. 
    ||| } },
    withMinAvailableVersion(value):: self {
      resource+: {
        vault_transit_secret_backend_key+: { [terraformName]+: { min_available_version: value } },
      },
    },
    '#withMinDecryptionVersion':: { 'function': { help: |||
      Minimum key version to use for decryption. 
    ||| } },
    withMinDecryptionVersion(value):: self {
      resource+: {
        vault_transit_secret_backend_key+: { [terraformName]+: { min_decryption_version: value } },
      },
    },
    '#withMinEncryptionVersion':: { 'function': { help: |||
      Minimum key version to use for encryption 
    ||| } },
    withMinEncryptionVersion(value):: self {
      resource+: {
        vault_transit_secret_backend_key+: { [terraformName]+: { min_encryption_version: value } },
      },
    },
    '#withName':: { 'function': { help: |||
      Name of the encryption key to create. 
    ||| } },
    withName(value):: self {
      resource+: {
        vault_transit_secret_backend_key+: { [terraformName]+: { name: value } },
      },
    },
    '#withNamespace':: { 'function': { help: |||
      Target namespace. (requires Enterprise) 
    ||| } },
    withNamespace(value):: self {
      resource+: {
        vault_transit_secret_backend_key+: { [terraformName]+: { namespace: value } },
      },
    },
    '#withParameterSet':: { 'function': { help: |||
      The parameter set to use for ML-DSA. Required for ML-DSA and hybrid keys.  Valid values for ML-DSA are `44`, `65`, and `87`. Valid values for SLH-DSA are `slh-dsa-sha2-128s`, `slh-dsa-shake-128s`, `slh-dsa-sha2-128f`, `slh-dsa-shake-128`, `slh-dsa-sha2-192s`, `slh-dsa-shake-192s`, `slh-dsa-sha2-192f`, `slh-dsa-shake-192f`, `slh-dsa-sha2-256s`, `slh-dsa-shake-256s`, `slh-dsa-sha2-256f`, and `slh-dsa-shake-256f`. 
    ||| } },
    withParameterSet(value):: self {
      resource+: {
        vault_transit_secret_backend_key+: { [terraformName]+: { parameter_set: value } },
      },
    },
    '#withSupportsDecryption':: { 'function': { help: |||
      Whether or not the key supports decryption, based on key type. 
    ||| } },
    withSupportsDecryption(value):: self {
      resource+: {
        vault_transit_secret_backend_key+: { [terraformName]+: { supports_decryption: value } },
      },
    },
    '#withSupportsDerivation':: { 'function': { help: |||
      Whether or not the key supports derivation, based on key type. 
    ||| } },
    withSupportsDerivation(value):: self {
      resource+: {
        vault_transit_secret_backend_key+: { [terraformName]+: { supports_derivation: value } },
      },
    },
    '#withSupportsEncryption':: { 'function': { help: |||
      Whether or not the key supports encryption, based on key type. 
    ||| } },
    withSupportsEncryption(value):: self {
      resource+: {
        vault_transit_secret_backend_key+: { [terraformName]+: { supports_encryption: value } },
      },
    },
    '#withSupportsSigning':: { 'function': { help: |||
      Whether or not the key supports signing, based on key type. 
    ||| } },
    withSupportsSigning(value):: self {
      resource+: {
        vault_transit_secret_backend_key+: { [terraformName]+: { supports_signing: value } },
      },
    },
    '#withType':: { 'function': { help: |||
      Specifies the type of key to create. The currently-supported types are: `aes128-gcm96`, `aes256-gcm96` (default), `chacha20-poly1305`, `ed25519`, `ecdsa-p256`, `ecdsa-p384`, `ecdsa-p521`, `hmac`, `rsa-2048`, `rsa-3072`, `rsa-4096`, `managed_key`, `aes128-cmac`, `aes192-cmac`, `aes256-cmac`, `ml-dsa`, `hybrid`, and `slh-dsa`. 
    ||| } },
    withType(value):: self {
      resource+: {
        vault_transit_secret_backend_key+: { [terraformName]+: { type: value } },
      },
    },
  },
}
