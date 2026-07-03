{
  new(terraformName, key_name, kms_name, mount, purpose):: {
    _type:: 'tf',
    resource+: {
      vault_keymgmt_distribute_key+: { [terraformName]+: {
        key_name: key_name,
        kms_name: kms_name,
        mount: mount,
        purpose: purpose,
      } },
    },
    '#withKeyName':: { 'function': { help: |||
      Specifies the name of the key to distribute to the given KMS provider. 
    ||| } },
    withKeyName(value):: self {
      resource+: {
        vault_keymgmt_distribute_key+: { [terraformName]+: { key_name: value } },
      },
    },
    '#withKmsName':: { 'function': { help: |||
      Specifies the name of the KMS provider to distribute the given key to. 
    ||| } },
    withKmsName(value):: self {
      resource+: {
        vault_keymgmt_distribute_key+: { [terraformName]+: { kms_name: value } },
      },
    },
    '#withMount':: { 'function': { help: |||
      Path of the Key Management secrets engine mount. Must match the `path` of a `vault_mount` resource with `type = "keymgmt"`. Use `vault_mount.keymgmt.path` here. 
    ||| } },
    withMount(value):: self {
      resource+: {
        vault_keymgmt_distribute_key+: { [terraformName]+: { mount: value } },
      },
    },
    '#withNamespace':: { 'function': { help: |||
      Target namespace. (requires Enterprise) 
    ||| } },
    withNamespace(value):: self {
      resource+: {
        vault_keymgmt_distribute_key+: { [terraformName]+: { namespace: value } },
      },
    },
    '#withProtection':: { 'function': { help: |||
      Specifies the protection of the key. The protection defines where cryptographic operations are performed with the key in the KMS provider. The following values are supported: hsm, software. Defaults to `hsm`. 
    ||| } },
    withProtection(value):: self {
      resource+: {
        vault_keymgmt_distribute_key+: { [terraformName]+: { protection: value } },
      },
    },
    '#withPurpose':: { 'function': { help: |||
      Specifies the purpose of the key. The purpose defines a set of cryptographic capabilities that the key will have in the KMS provider. A key must have at least one of the supported purposes. The following values are supported : encrypt, decrypt, sign, verify, wrap, unwrap. 
    ||| } },
    withPurpose(value):: self {
      resource+: {
        vault_keymgmt_distribute_key+: { [terraformName]+: { purpose: value } },
      },
    },
    '#withVersions':: { 'function': { help: |||
      Map of distributed key versions to their identifiers in the KMS provider. 
    ||| } },
    withVersions(value):: self {
      resource+: {
        vault_keymgmt_distribute_key+: { [terraformName]+: { versions: value } },
      },
    },
  },
}
