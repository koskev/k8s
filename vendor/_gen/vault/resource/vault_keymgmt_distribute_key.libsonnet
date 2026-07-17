{
  local outerSelf = self,
  '#new':: { 'function': {
    help:
      |||
        Distributes a Key Management key to a KMS provider
      |||,
  } },
  new(terraformName, key_name, kms_name, mount, purpose):: self.functions(terraformName) + {
    _type:: 'tf',
    ref():: outerSelf.ref(terraformName),
    resource+: {
      vault_keymgmt_distribute_key+: { [terraformName]+: {
        key_name: key_name,
        kms_name: kms_name,
        mount: mount,
        purpose: purpose,
      } },
    },
  }
  ,
  functions(terraformName):: {
    withForEach(value):: self { resource+: {
      vault_keymgmt_distribute_key+: { [terraformName]+: { for_each: value } },
    } },
    withDependsOn(value):: self { resource+: {
      vault_keymgmt_distribute_key+: { [terraformName]+: { depends_on: value } },
    } },
    withCount(value):: self { resource+: {
      vault_keymgmt_distribute_key+: { [terraformName]+: { count: value } },
    } },
    withLifecycle(value):: self { resource+: {
      vault_keymgmt_distribute_key+: { [terraformName]+: { lifecycle: value } },
    } },
    withProvider(value):: self { resource+: {
      vault_keymgmt_distribute_key+: { [terraformName]+: { provider: value } },
    } },
    withProviders(value):: self { resource+: {
      vault_keymgmt_distribute_key+: { [terraformName]+: { providers: value } },
    } },
    addCustomData(name, value):: self { resource+: {
      vault_keymgmt_distribute_key+: { [terraformName]+: { [name]: value } },
    } },
    '#withKeyName':: { 'function': {
      help:
        |||
          Specifies the name of the key to distribute to the given KMS provider.
        |||,
    } },
    withKeyName(value):: self { resource+: {
      vault_keymgmt_distribute_key+: { [terraformName]+: { key_name: value } },
    } },
    '#withKmsName':: { 'function': {
      help:
        |||
          Specifies the name of the KMS provider to distribute the given key to.
        |||,
    } },
    withKmsName(value):: self { resource+: {
      vault_keymgmt_distribute_key+: { [terraformName]+: { kms_name: value } },
    } },
    '#withMount':: { 'function': {
      help:
        |||
          Path of the Key Management secrets engine mount. Must match the `path` of a `vault_mount` resource with `type = "keymgmt"`. Use `vault_mount.keymgmt.path` here.
        |||,
    } },
    withMount(value):: self { resource+: {
      vault_keymgmt_distribute_key+: { [terraformName]+: { mount: value } },
    } },
    '#withNamespace':: { 'function': {
      help:
        |||
          Target namespace. (requires Enterprise)
        |||,
    } },
    withNamespace(value):: self { resource+: {
      vault_keymgmt_distribute_key+: { [terraformName]+: { namespace: value } },
    } },
    '#withProtection':: { 'function': {
      help:
        |||
          Specifies the protection of the key. The protection defines where cryptographic operations are performed with the key in the KMS provider. The following values are supported: hsm, software. Defaults to `hsm`.
        |||,
    } },
    withProtection(value):: self { resource+: {
      vault_keymgmt_distribute_key+: { [terraformName]+: { protection: value } },
    } },
    '#withPurpose':: { 'function': {
      help:
        |||
          Specifies the purpose of the key. The purpose defines a set of cryptographic capabilities that the key will have in the KMS provider. A key must have at least one of the supported purposes. The following values are supported : encrypt, decrypt, sign, verify, wrap, unwrap.
        |||,
    } },
    withPurpose(value):: self { resource+: {
      vault_keymgmt_distribute_key+: { [terraformName]+: { purpose: value } },
    } },

  }
  ,
  ref(terraformName):: {
    local refSelf = self,
    plain(suffix=''):: '${ vault_keymgmt_distribute_key.%s%s }' % [terraformName, suffix],
    fields:: {
      '#key_name':: { 'function': {
        help:
          |||
            Specifies the name of the key to distribute to the given KMS provider.
          |||,
      } },
      key_name(suffix=''):: refSelf.plain('.key_name%s' % suffix),
      '#kms_name':: { 'function': {
        help:
          |||
            Specifies the name of the KMS provider to distribute the given key to.
          |||,
      } },
      kms_name(suffix=''):: refSelf.plain('.kms_name%s' % suffix),
      '#mount':: { 'function': {
        help:
          |||
            Path of the Key Management secrets engine mount. Must match the `path` of a `vault_mount` resource with `type = "keymgmt"`. Use `vault_mount.keymgmt.path` here.
          |||,
      } },
      mount(suffix=''):: refSelf.plain('.mount%s' % suffix),
      '#namespace':: { 'function': {
        help:
          |||
            Target namespace. (requires Enterprise)
          |||,
      } },
      namespace(suffix=''):: refSelf.plain('.namespace%s' % suffix),
      '#protection':: { 'function': {
        help:
          |||
            Specifies the protection of the key. The protection defines where cryptographic operations are performed with the key in the KMS provider. The following values are supported: hsm, software. Defaults to `hsm`.
          |||,
      } },
      protection(suffix=''):: refSelf.plain('.protection%s' % suffix),
      '#purpose':: { 'function': {
        help:
          |||
            Specifies the purpose of the key. The purpose defines a set of cryptographic capabilities that the key will have in the KMS provider. A key must have at least one of the supported purposes. The following values are supported : encrypt, decrypt, sign, verify, wrap, unwrap.
          |||,
      } },
      purpose(suffix=''):: refSelf.plain('.purpose%s' % suffix),
      '#versions':: { 'function': {
        help:
          |||
            Map of distributed key versions to their identifiers in the KMS provider.
          |||,
      } },
      versions(suffix=''):: refSelf.plain('.versions%s' % suffix),

    },

  },

}
