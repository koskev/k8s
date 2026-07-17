{
  local outerSelf = self,
  new(terraformName):: self.functions(terraformName) + {
    _type:: 'tf',
    ref():: outerSelf.ref(terraformName),
    resource+: {
      vault_ssh_secret_backend_ca+: { [terraformName]+: {
      } },
    },
  }
  ,
  functions(terraformName):: {
    withForEach(value):: self { resource+: {
      vault_ssh_secret_backend_ca+: { [terraformName]+: { for_each: value } },
    } },
    withDependsOn(value):: self { resource+: {
      vault_ssh_secret_backend_ca+: { [terraformName]+: { depends_on: value } },
    } },
    withCount(value):: self { resource+: {
      vault_ssh_secret_backend_ca+: { [terraformName]+: { count: value } },
    } },
    withLifecycle(value):: self { resource+: {
      vault_ssh_secret_backend_ca+: { [terraformName]+: { lifecycle: value } },
    } },
    withProvider(value):: self { resource+: {
      vault_ssh_secret_backend_ca+: { [terraformName]+: { provider: value } },
    } },
    withProviders(value):: self { resource+: {
      vault_ssh_secret_backend_ca+: { [terraformName]+: { providers: value } },
    } },
    addCustomData(name, value):: self { resource+: {
      vault_ssh_secret_backend_ca+: { [terraformName]+: { [name]: value } },
    } },
    '#withBackend':: { 'function': {
      help:
        |||
          The path of the SSH Secret Backend where the CA should be configured
        |||,
    } },
    withBackend(value):: self { resource+: {
      vault_ssh_secret_backend_ca+: { [terraformName]+: { backend: value } },
    } },
    '#withGenerateSigningKey':: { 'function': {
      help:
        |||
          Whether Vault should generate the signing key pair internally.
        |||,
    } },
    withGenerateSigningKey(value):: self { resource+: {
      vault_ssh_secret_backend_ca+: { [terraformName]+: { generate_signing_key: value } },
    } },
    withId(value):: self { resource+: {
      vault_ssh_secret_backend_ca+: { [terraformName]+: { id: value } },
    } },
    '#withKeyBits':: { 'function': {
      help:
        |||
          Specifies the desired key bits for the generated SSH CA key when `generate_signing_key` is set to `true`.
        |||,
    } },
    withKeyBits(value):: self { resource+: {
      vault_ssh_secret_backend_ca+: { [terraformName]+: { key_bits: value } },
    } },
    '#withKeyType':: { 'function': {
      help:
        |||
          Specifies the desired key type for the generated SSH CA key when `generate_signing_key` is set to `true`.
        |||,
    } },
    withKeyType(value):: self { resource+: {
      vault_ssh_secret_backend_ca+: { [terraformName]+: { key_type: value } },
    } },
    '#withManagedKeyId':: { 'function': {
      help:
        |||
          The id of the managed key to use. When using a managed key, this field or managed_key_name is required.
        |||,
    } },
    withManagedKeyId(value):: self { resource+: {
      vault_ssh_secret_backend_ca+: { [terraformName]+: { managed_key_id: value } },
    } },
    '#withManagedKeyName':: { 'function': {
      help:
        |||
          The name of the managed key to use. When using a managed key, this field or managed_key_id is required.
        |||,
    } },
    withManagedKeyName(value):: self { resource+: {
      vault_ssh_secret_backend_ca+: { [terraformName]+: { managed_key_name: value } },
    } },
    '#withNamespace':: { 'function': {
      help:
        |||
          Target namespace. (requires Enterprise)
        |||,
    } },
    withNamespace(value):: self { resource+: {
      vault_ssh_secret_backend_ca+: { [terraformName]+: { namespace: value } },
    } },
    '#withPrivateKey':: { 'function': {
      help:
        |||
          Private key part the SSH CA key pair; required if generate_signing_key is false.
        |||,
    } },
    withPrivateKey(value):: self { resource+: {
      vault_ssh_secret_backend_ca+: { [terraformName]+: { private_key: value } },
    } },
    '#withPublicKey':: { 'function': {
      help:
        |||
          Public key part the SSH CA key pair; required if generate_signing_key is false.
        |||,
    } },
    withPublicKey(value):: self { resource+: {
      vault_ssh_secret_backend_ca+: { [terraformName]+: { public_key: value } },
    } },

  }
  ,
  ref(terraformName):: {
    local refSelf = self,
    plain(suffix=''):: '${ vault_ssh_secret_backend_ca.%s%s }' % [terraformName, suffix],
    fields:: {
      '#backend':: { 'function': {
        help:
          |||
            The path of the SSH Secret Backend where the CA should be configured
          |||,
      } },
      backend(suffix=''):: refSelf.plain('.backend%s' % suffix),
      '#generate_signing_key':: { 'function': {
        help:
          |||
            Whether Vault should generate the signing key pair internally.
          |||,
      } },
      generate_signing_key(suffix=''):: refSelf.plain('.generate_signing_key%s' % suffix),
      id(suffix=''):: refSelf.plain('.id%s' % suffix),
      '#key_bits':: { 'function': {
        help:
          |||
            Specifies the desired key bits for the generated SSH CA key when `generate_signing_key` is set to `true`.
          |||,
      } },
      key_bits(suffix=''):: refSelf.plain('.key_bits%s' % suffix),
      '#key_type':: { 'function': {
        help:
          |||
            Specifies the desired key type for the generated SSH CA key when `generate_signing_key` is set to `true`.
          |||,
      } },
      key_type(suffix=''):: refSelf.plain('.key_type%s' % suffix),
      '#managed_key_id':: { 'function': {
        help:
          |||
            The id of the managed key to use. When using a managed key, this field or managed_key_name is required.
          |||,
      } },
      managed_key_id(suffix=''):: refSelf.plain('.managed_key_id%s' % suffix),
      '#managed_key_name':: { 'function': {
        help:
          |||
            The name of the managed key to use. When using a managed key, this field or managed_key_id is required.
          |||,
      } },
      managed_key_name(suffix=''):: refSelf.plain('.managed_key_name%s' % suffix),
      '#namespace':: { 'function': {
        help:
          |||
            Target namespace. (requires Enterprise)
          |||,
      } },
      namespace(suffix=''):: refSelf.plain('.namespace%s' % suffix),
      '#private_key':: { 'function': {
        help:
          |||
            Private key part the SSH CA key pair; required if generate_signing_key is false.
          |||,
      } },
      private_key(suffix=''):: refSelf.plain('.private_key%s' % suffix),
      '#public_key':: { 'function': {
        help:
          |||
            Public key part the SSH CA key pair; required if generate_signing_key is false.
          |||,
      } },
      public_key(suffix=''):: refSelf.plain('.public_key%s' % suffix),

    },

  },

}
