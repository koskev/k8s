{
  '#new':: { 'function': { help: |||
    Manages a Key Management key in Vault
  ||| } },
  local outerSelf = self,
  new(terraformName, mount, name):: self.functions(terraformName) {
    ref():: outerSelf.ref(terraformName),
    _type:: 'tf',
    resource+: {
      vault_keymgmt_key+: {
        [terraformName]+: {
          mount: mount,
          name: name,
        },
      },
    },
  },
  functions(terraformName):: {
    '#withDeletionAllowed':: { 'function': { help: |||
      Specifies if the key is allowed to be deleted.
    ||| } },
    withDeletionAllowed(value):: self {
      resource+: {
        vault_keymgmt_key+: { [terraformName]+: { deletion_allowed: value } },
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
  ref(terraformName):: {
    local refSelf = self,
    plain(suffix=''):: '${ vault_keymgmt_key.%s%s }' % [terraformName, suffix],
    fields:: {
      '#deletion_allowed':: { 'function': { help: |||
        Specifies if the key is allowed to be deleted.
      ||| } },
      deletion_allowed(suffix=''):: refSelf.plain('.deletion_allowed%s' % suffix),
      '#latest_version':: { 'function': { help: |||
        Specifies the latest version of the key.
      ||| } },
      latest_version(suffix=''):: refSelf.plain('.latest_version%s' % suffix),
      '#min_enabled_version':: { 'function': { help: |||
        Specifies the minimum enabled version of the key. All versions of the key less than the specified version will be disabled for cryptographic operations in the KMS provider that the key has been distributed to. Setting this value to 0 means that all versions will be enabled.
      ||| } },
      min_enabled_version(suffix=''):: refSelf.plain('.min_enabled_version%s' % suffix),
      '#mount':: { 'function': { help: |||
        Path of the Key Management secrets engine mount. Must match the `path` of a `vault_mount` resource with `type = "keymgmt"`. Use `vault_mount.keymgmt.path` here.
      ||| } },
      mount(suffix=''):: refSelf.plain('.mount%s' % suffix),
      '#name':: { 'function': { help: |||
        Specifies the name of the key to create.
      ||| } },
      name(suffix=''):: refSelf.plain('.name%s' % suffix),
      '#namespace':: { 'function': { help: |||
        Target namespace. (requires Enterprise)
      ||| } },
      namespace(suffix=''):: refSelf.plain('.namespace%s' % suffix),
      '#replica_regions':: { 'function': { help: |||
        Specifies the regions in which the key should be replicated. Supported only for AWS KMS.
      ||| } },
      replica_regions(suffix=''):: refSelf.plain('.replica_regions%s' % suffix),
      '#type':: { 'function': { help: |||
        Specifies the type of cryptographic key to create. aes256-gcm96, rsa-2048, rsa-3072, rsa-4096, ecdsa-p256, ecdsa-p384, ecdsa-p521 key types are supported. Defaults to `rsa-2048`.
      ||| } },
      type(suffix=''):: refSelf.plain('.type%s' % suffix),
    },
  },
}
