{
  local outerSelf = self,
  new(terraformName, backend, ciphertext, key):: self.functions(terraformName) {
    ref():: outerSelf.ref(terraformName),
    _type:: 'tf',
    data+: {
      vault_transit_decrypt+: {
        [terraformName]+: {
          backend: backend,
          ciphertext: ciphertext,
          key: key,
        },
      },
    },
  },
  functions(terraformName):: {
    '#withBackend':: { 'function': { help: |||
      The Transit secret backend the key belongs to.
    ||| } },
    withBackend(value):: self {
      data+: {
        vault_transit_decrypt+: { [terraformName]+: { backend: value } },
      },
    },
    '#withCiphertext':: { 'function': { help: |||
      Transit encrypted cipher text.
    ||| } },
    withCiphertext(value):: self {
      data+: {
        vault_transit_decrypt+: { [terraformName]+: { ciphertext: value } },
      },
    },
    '#withContext':: { 'function': { help: |||
      Specifies the context for key derivation
    ||| } },
    withContext(value):: self {
      data+: {
        vault_transit_decrypt+: { [terraformName]+: { context: value } },
      },
    },
    withId(value):: self {
      data+: {
        vault_transit_decrypt+: { [terraformName]+: { id: value } },
      },
    },
    '#withKey':: { 'function': { help: |||
      Name of the decryption key to use.
    ||| } },
    withKey(value):: self {
      data+: {
        vault_transit_decrypt+: { [terraformName]+: { key: value } },
      },
    },
    '#withNamespace':: { 'function': { help: |||
      Target namespace. (requires Enterprise)
    ||| } },
    withNamespace(value):: self {
      data+: {
        vault_transit_decrypt+: { [terraformName]+: { namespace: value } },
      },
    },
  },
  ref(terraformName):: {
    local refSelf = self,
    plain(suffix=''):: '${ data.vault_transit_decrypt.%s%s }' % [terraformName, suffix],
    fields:: {
      '#backend':: { 'function': { help: |||
        The Transit secret backend the key belongs to.
      ||| } },
      backend(suffix=''):: refSelf.plain('.backend%s' % suffix),
      '#ciphertext':: { 'function': { help: |||
        Transit encrypted cipher text.
      ||| } },
      ciphertext(suffix=''):: refSelf.plain('.ciphertext%s' % suffix),
      '#context':: { 'function': { help: |||
        Specifies the context for key derivation
      ||| } },
      context(suffix=''):: refSelf.plain('.context%s' % suffix),
      id(suffix=''):: refSelf.plain('.id%s' % suffix),
      '#key':: { 'function': { help: |||
        Name of the decryption key to use.
      ||| } },
      key(suffix=''):: refSelf.plain('.key%s' % suffix),
      '#namespace':: { 'function': { help: |||
        Target namespace. (requires Enterprise)
      ||| } },
      namespace(suffix=''):: refSelf.plain('.namespace%s' % suffix),
      '#plaintext':: { 'function': { help: |||
        Decrypted plain text
      ||| } },
      plaintext(suffix=''):: refSelf.plain('.plaintext%s' % suffix),
    },
  },
}
