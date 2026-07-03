{
  new(terraformName, backend, name):: self.functions(terraformName) {
    _type:: 'tf',
    resource+: {
      vault_transit_secret_backend_key+: {
        [terraformName]+: {
          backend: backend,
          name: name,
        },
      },
    },
  },
  functions(terraformName):: {
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
    '#withType':: { 'function': { help: |||
      Specifies the type of key to create. The currently-supported types are: `aes128-gcm96`, `aes256-gcm96` (default), `chacha20-poly1305`, `ed25519`, `ecdsa-p256`, `ecdsa-p384`, `ecdsa-p521`, `hmac`, `rsa-2048`, `rsa-3072`, `rsa-4096`, `managed_key`, `aes128-cmac`, `aes192-cmac`, `aes256-cmac`, `ml-dsa`, `hybrid`, and `slh-dsa`. 
    ||| } },
    withType(value):: self {
      resource+: {
        vault_transit_secret_backend_key+: { [terraformName]+: { type: value } },
      },
    },
  },
  ref(terraformName):: {
    local refSelf = self,
    plain(suffix=''):: '${ vault_transit_secret_backend_key.%s%s }' % [terraformName, suffix],
    fields:: {
      '#allow_plaintext_backup':: { 'function': { help: |||
        If set, enables taking backup of named key in the plaintext format. Once set, this cannot be disabled. 
      ||| } },
      allow_plaintext_backup(suffix=''):: refSelf.plain('.allow_plaintext_backup%s' % suffix),
      '#auto_rotate_period':: { 'function': { help: |||
        Amount of seconds the key should live before being automatically rotated. A value of 0 disables automatic rotation for the key. 
      ||| } },
      auto_rotate_period(suffix=''):: refSelf.plain('.auto_rotate_period%s' % suffix),
      '#backend':: { 'function': { help: |||
        The Transit secret backend the resource belongs to. 
      ||| } },
      backend(suffix=''):: refSelf.plain('.backend%s' % suffix),
      '#context':: { 'function': { help: |||
        Base64 encoded context for key derivation. Required if derived is set to true. 
      ||| } },
      context(suffix=''):: refSelf.plain('.context%s' % suffix),
      '#convergent_encryption':: { 'function': { help: |||
        Whether or not to support convergent encryption, where the same plaintext creates the same ciphertext. This requires derived to be set to true. 
      ||| } },
      convergent_encryption(suffix=''):: refSelf.plain('.convergent_encryption%s' % suffix),
      '#deletion_allowed':: { 'function': { help: |||
        Specifies if the key is allowed to be deleted. 
      ||| } },
      deletion_allowed(suffix=''):: refSelf.plain('.deletion_allowed%s' % suffix),
      '#derived':: { 'function': { help: |||
        Specifies if key derivation is to be used. If enabled, all encrypt/decrypt requests to this key must provide a context which is used for key derivation. 
      ||| } },
      derived(suffix=''):: refSelf.plain('.derived%s' % suffix),
      '#exportable':: { 'function': { help: |||
        Enables keys to be exportable. This allows for all the valid keys in the key ring to be exported. Once set, this cannot be disabled. 
      ||| } },
      exportable(suffix=''):: refSelf.plain('.exportable%s' % suffix),
      '#hybrid_key_type_ec':: { 'function': { help: |||
        The elliptic curve algorithm to use for hybrid signatures. Supported key types are `ecdsa-p256`, `ecdsa-p384`, `ecdsa-p521`, and `ed25519`. 
      ||| } },
      hybrid_key_type_ec(suffix=''):: refSelf.plain('.hybrid_key_type_ec%s' % suffix),
      '#hybrid_key_type_pqc':: { 'function': { help: |||
        The post-quantum algorithm to use for hybrid signatures. Currently, ML-DSA is the only supported key type. 
      ||| } },
      hybrid_key_type_pqc(suffix=''):: refSelf.plain('.hybrid_key_type_pqc%s' % suffix),
      id(suffix=''):: refSelf.plain('.id%s' % suffix),
      '#key_size':: { 'function': { help: |||
        The key size in bytes for algorithms that allow variable key sizes. Currently only applicable to HMAC; this value must be between 32 and 512. 
      ||| } },
      key_size(suffix=''):: refSelf.plain('.key_size%s' % suffix),
      '#keys':: { 'function': { help: |||
        List of key versions in the keyring. 
      ||| } },
      keys(suffix=''):: refSelf.plain('.keys%s' % suffix),
      '#latest_version':: { 'function': { help: |||
        Latest key version in use in the keyring 
      ||| } },
      latest_version(suffix=''):: refSelf.plain('.latest_version%s' % suffix),
      '#managed_key_id':: { 'function': { help: |||
        The UUID of the managed key to use when the key type is managed_key. 
      ||| } },
      managed_key_id(suffix=''):: refSelf.plain('.managed_key_id%s' % suffix),
      '#managed_key_name':: { 'function': { help: |||
        The name of the managed key to use when the key type is managed_key. 
      ||| } },
      managed_key_name(suffix=''):: refSelf.plain('.managed_key_name%s' % suffix),
      '#min_available_version':: { 'function': { help: |||
        Minimum key version available for use. 
      ||| } },
      min_available_version(suffix=''):: refSelf.plain('.min_available_version%s' % suffix),
      '#min_decryption_version':: { 'function': { help: |||
        Minimum key version to use for decryption. 
      ||| } },
      min_decryption_version(suffix=''):: refSelf.plain('.min_decryption_version%s' % suffix),
      '#min_encryption_version':: { 'function': { help: |||
        Minimum key version to use for encryption 
      ||| } },
      min_encryption_version(suffix=''):: refSelf.plain('.min_encryption_version%s' % suffix),
      '#name':: { 'function': { help: |||
        Name of the encryption key to create. 
      ||| } },
      name(suffix=''):: refSelf.plain('.name%s' % suffix),
      '#namespace':: { 'function': { help: |||
        Target namespace. (requires Enterprise) 
      ||| } },
      namespace(suffix=''):: refSelf.plain('.namespace%s' % suffix),
      '#parameter_set':: { 'function': { help: |||
        The parameter set to use for ML-DSA. Required for ML-DSA and hybrid keys.  Valid values for ML-DSA are `44`, `65`, and `87`. Valid values for SLH-DSA are `slh-dsa-sha2-128s`, `slh-dsa-shake-128s`, `slh-dsa-sha2-128f`, `slh-dsa-shake-128`, `slh-dsa-sha2-192s`, `slh-dsa-shake-192s`, `slh-dsa-sha2-192f`, `slh-dsa-shake-192f`, `slh-dsa-sha2-256s`, `slh-dsa-shake-256s`, `slh-dsa-sha2-256f`, and `slh-dsa-shake-256f`. 
      ||| } },
      parameter_set(suffix=''):: refSelf.plain('.parameter_set%s' % suffix),
      '#supports_decryption':: { 'function': { help: |||
        Whether or not the key supports decryption, based on key type. 
      ||| } },
      supports_decryption(suffix=''):: refSelf.plain('.supports_decryption%s' % suffix),
      '#supports_derivation':: { 'function': { help: |||
        Whether or not the key supports derivation, based on key type. 
      ||| } },
      supports_derivation(suffix=''):: refSelf.plain('.supports_derivation%s' % suffix),
      '#supports_encryption':: { 'function': { help: |||
        Whether or not the key supports encryption, based on key type. 
      ||| } },
      supports_encryption(suffix=''):: refSelf.plain('.supports_encryption%s' % suffix),
      '#supports_signing':: { 'function': { help: |||
        Whether or not the key supports signing, based on key type. 
      ||| } },
      supports_signing(suffix=''):: refSelf.plain('.supports_signing%s' % suffix),
      '#type':: { 'function': { help: |||
        Specifies the type of key to create. The currently-supported types are: `aes128-gcm96`, `aes256-gcm96` (default), `chacha20-poly1305`, `ed25519`, `ecdsa-p256`, `ecdsa-p384`, `ecdsa-p521`, `hmac`, `rsa-2048`, `rsa-3072`, `rsa-4096`, `managed_key`, `aes128-cmac`, `aes192-cmac`, `aes256-cmac`, `ml-dsa`, `hybrid`, and `slh-dsa`. 
      ||| } },
      type(suffix=''):: refSelf.plain('.type%s' % suffix),
    },
  },
}
