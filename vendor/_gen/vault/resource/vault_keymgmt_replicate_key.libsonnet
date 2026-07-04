{
  '#new':: { 'function': { help: |||
    Replicates a Key Management key to configured regions (AWS KMS only)
  ||| } },
  local outerSelf = self,
  new(terraformName, key_name, kms_name, mount):: self.functions(terraformName) {
    ref():: outerSelf.ref(terraformName),
    _type:: 'tf',
    resource+: {
      vault_keymgmt_replicate_key+: {
        [terraformName]+: {
          key_name: key_name,
          kms_name: kms_name,
          mount: mount,
        },
      },
    },
  },
  functions(terraformName):: {
    '#withKeyName':: { 'function': { help: |||
      Specifies the name of the key to replicate.
    ||| } },
    withKeyName(value):: self {
      resource+: {
        vault_keymgmt_replicate_key+: { [terraformName]+: { key_name: value } },
      },
    },
    '#withKmsName':: { 'function': { help: |||
      Specifies the name of the AWS KMS provider.
    ||| } },
    withKmsName(value):: self {
      resource+: {
        vault_keymgmt_replicate_key+: { [terraformName]+: { kms_name: value } },
      },
    },
    '#withMount':: { 'function': { help: |||
      Path of the Key Management secrets engine mount. Must match the `path` of a `vault_mount` resource with `type = "keymgmt"`. Use `vault_mount.keymgmt.path` here.
    ||| } },
    withMount(value):: self {
      resource+: {
        vault_keymgmt_replicate_key+: { [terraformName]+: { mount: value } },
      },
    },
    '#withNamespace':: { 'function': { help: |||
      Target namespace. (requires Enterprise)
    ||| } },
    withNamespace(value):: self {
      resource+: {
        vault_keymgmt_replicate_key+: { [terraformName]+: { namespace: value } },
      },
    },
  },
  ref(terraformName):: {
    local refSelf = self,
    plain(suffix=''):: '${ vault_keymgmt_replicate_key.%s%s }' % [terraformName, suffix],
    fields:: {
      '#key_name':: { 'function': { help: |||
        Specifies the name of the key to replicate.
      ||| } },
      key_name(suffix=''):: refSelf.plain('.key_name%s' % suffix),
      '#kms_name':: { 'function': { help: |||
        Specifies the name of the AWS KMS provider.
      ||| } },
      kms_name(suffix=''):: refSelf.plain('.kms_name%s' % suffix),
      '#mount':: { 'function': { help: |||
        Path of the Key Management secrets engine mount. Must match the `path` of a `vault_mount` resource with `type = "keymgmt"`. Use `vault_mount.keymgmt.path` here.
      ||| } },
      mount(suffix=''):: refSelf.plain('.mount%s' % suffix),
      '#namespace':: { 'function': { help: |||
        Target namespace. (requires Enterprise)
      ||| } },
      namespace(suffix=''):: refSelf.plain('.namespace%s' % suffix),
    },
  },
}
