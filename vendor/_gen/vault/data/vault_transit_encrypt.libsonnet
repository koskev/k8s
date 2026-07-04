{
  local outerSelf = self,
  new(terraformName, backend, key, plaintext):: self.functions(terraformName) {
    ref():: outerSelf.ref(terraformName),
    _type:: 'tf',
    data+: {
      vault_transit_encrypt+: {
        [terraformName]+: {
          backend: backend,
          key: key,
          plaintext: plaintext,
        },
      },
    },
  },
  functions(terraformName):: {
    withForEach(value):: self {
      data+: {
        vault_transit_encrypt+: { [terraformName]+: { for_each: value } },
      },
    },
    withDependsOn(value):: self {
      data+: {
        vault_transit_encrypt+: { [terraformName]+: { depends_on: value } },
      },
    },
    withCount(value):: self {
      data+: {
        vault_transit_encrypt+: { [terraformName]+: { count: value } },
      },
    },
    withLifecycle(value):: self {
      data+: {
        vault_transit_encrypt+: { [terraformName]+: { lifecycle: value } },
      },
    },
    withProvider(value):: self {
      data+: {
        vault_transit_encrypt+: { [terraformName]+: { provider: value } },
      },
    },
    withProviders(value):: self {
      data+: {
        vault_transit_encrypt+: { [terraformName]+: { providers: value } },
      },
    },
    '#backend':: { 'function': { help: |||
      The Transit secret backend the key belongs to.
    ||| } },
    withBackend(value):: self {
      data+: {
        vault_transit_encrypt+: { [terraformName]+: { backend: value } },
      },
    },
    '#context':: { 'function': { help: |||
      Specifies the context for key derivation
    ||| } },
    withContext(value):: self {
      data+: {
        vault_transit_encrypt+: { [terraformName]+: { context: value } },
      },
    },
    withId(value):: self {
      data+: {
        vault_transit_encrypt+: { [terraformName]+: { id: value } },
      },
    },
    '#key':: { 'function': { help: |||
      Name of the encryption key to use.
    ||| } },
    withKey(value):: self {
      data+: {
        vault_transit_encrypt+: { [terraformName]+: { key: value } },
      },
    },
    '#key_version':: { 'function': { help: |||
      The version of the key to use for encryption
    ||| } },
    withKeyVersion(value):: self {
      data+: {
        vault_transit_encrypt+: { [terraformName]+: { key_version: value } },
      },
    },
    '#namespace':: { 'function': { help: |||
      Target namespace. (requires Enterprise)
    ||| } },
    withNamespace(value):: self {
      data+: {
        vault_transit_encrypt+: { [terraformName]+: { namespace: value } },
      },
    },
    '#plaintext':: { 'function': { help: |||
      Map of strings read from Vault.
    ||| } },
    withPlaintext(value):: self {
      data+: {
        vault_transit_encrypt+: { [terraformName]+: { plaintext: value } },
      },
    },
  },
  ref(terraformName):: {
    local refSelf = self,
    plain(suffix=''):: '${ data.vault_transit_encrypt.%s%s }' % [terraformName, suffix],
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
        Name of the encryption key to use.
      ||| } },
      key(suffix=''):: refSelf.plain('.key%s' % suffix),
      '#key_version':: { 'function': { help: |||
        The version of the key to use for encryption
      ||| } },
      key_version(suffix=''):: refSelf.plain('.key_version%s' % suffix),
      '#namespace':: { 'function': { help: |||
        Target namespace. (requires Enterprise)
      ||| } },
      namespace(suffix=''):: refSelf.plain('.namespace%s' % suffix),
      '#plaintext':: { 'function': { help: |||
        Map of strings read from Vault.
      ||| } },
      plaintext(suffix=''):: refSelf.plain('.plaintext%s' % suffix),
    },
  },
}
