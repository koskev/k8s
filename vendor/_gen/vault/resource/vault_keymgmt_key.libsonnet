{
  new(terraformName, mount, name):: {
    _type:: 'tf',
    resource+: {
      vault_keymgmt_key+: { [terraformName]+: {
        mount: mount,
        name: name,
      } },
    },
    '#withDeletionAllowed':: { 'function': { help: |||
      Specifies if the key is allowed to be deleted. 
    ||| } },
    withDeletionAllowed(value):: self {
      resource+: {
        vault_keymgmt_key+: { [terraformName]+: { deletion_allowed: value } },
      },
    },
    '#withLatestVersion':: { 'function': { help: |||
      Specifies the latest version of the key. 
    ||| } },
    withLatestVersion(value):: self {
      resource+: {
        vault_keymgmt_key+: { [terraformName]+: { latest_version: value } },
      },
    },
    '#withMinEnabledVersion':: { 'function': { help: |||
      Specifies the minimum enabled version of the key. All versions of the key less than the specified version will be disabled for cryptographic operations in the KMS provider that the key has been distributed to. Setting this value to 0 means that all versions will be enabled. 
    ||| } },
    withMinEnabledVersion(value):: self {
      resource+: {
        vault_keymgmt_key+: { [terraformName]+: { min_enabled_version: value } },
      },
    },
    '#withMount':: { 'function': { help: |||
      Path of the Key Management secrets engine mount. Must match the `path` of a `vault_mount` resource with `type = "keymgmt"`. Use `vault_mount.keymgmt.path` here. 
    ||| } },
    withMount(value):: self {
      resource+: {
        vault_keymgmt_key+: { [terraformName]+: { mount: value } },
      },
    },
    '#withName':: { 'function': { help: |||
      Specifies the name of the key to create. 
    ||| } },
    withName(value):: self {
      resource+: {
        vault_keymgmt_key+: { [terraformName]+: { name: value } },
      },
    },
    '#withNamespace':: { 'function': { help: |||
      Target namespace. (requires Enterprise) 
    ||| } },
    withNamespace(value):: self {
      resource+: {
        vault_keymgmt_key+: { [terraformName]+: { namespace: value } },
      },
    },
    '#withReplicaRegions':: { 'function': { help: |||
      Specifies the regions in which the key should be replicated. Supported only for AWS KMS. 
    ||| } },
    withReplicaRegions(value):: self {
      resource+: {
        vault_keymgmt_key+: { [terraformName]+: { replica_regions: value } },
      },
    },
    '#withType':: { 'function': { help: |||
      Specifies the type of cryptographic key to create. aes256-gcm96, rsa-2048, rsa-3072, rsa-4096, ecdsa-p256, ecdsa-p384, ecdsa-p521 key types are supported. Defaults to `rsa-2048`. 
    ||| } },
    withType(value):: self {
      resource+: {
        vault_keymgmt_key+: { [terraformName]+: { type: value } },
      },
    },
  },
}
