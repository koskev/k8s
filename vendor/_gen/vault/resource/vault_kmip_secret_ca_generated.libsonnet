{
  local outerSelf = self,
  '#new':: { 'function': {
    help:
      |||
        Manage generated KMIP secret engine CAs.
      |||,
  } },
  new(terraformName, key_bits, key_type, name, path):: self.functions(terraformName) + {
    _type:: 'tf',
    ref():: outerSelf.ref(terraformName),
    resource+: {
      vault_kmip_secret_ca_generated+: { [terraformName]+: {
        key_bits: key_bits,
        key_type: key_type,
        name: name,
        path: path,
      } },
    },
  }
  ,
  functions(terraformName):: {
    withForEach(value):: self { resource+: {
      vault_kmip_secret_ca_generated+: { [terraformName]+: { for_each: value } },
    } },
    withDependsOn(value):: self { resource+: {
      vault_kmip_secret_ca_generated+: { [terraformName]+: { depends_on: value } },
    } },
    withCount(value):: self { resource+: {
      vault_kmip_secret_ca_generated+: { [terraformName]+: { count: value } },
    } },
    withLifecycle(value):: self { resource+: {
      vault_kmip_secret_ca_generated+: { [terraformName]+: { lifecycle: value } },
    } },
    withProvider(value):: self { resource+: {
      vault_kmip_secret_ca_generated+: { [terraformName]+: { provider: value } },
    } },
    withProviders(value):: self { resource+: {
      vault_kmip_secret_ca_generated+: { [terraformName]+: { providers: value } },
    } },
    addCustomData(name, value):: self { resource+: {
      vault_kmip_secret_ca_generated+: { [terraformName]+: { [name]: value } },
    } },
    '#withKeyBits':: { 'function': {
      help:
        |||
          CA key bits. Valid values depend on key_type: For rsa: 2048, 3072, 4096. For ec: 224, 256, 384, 521.
        |||,
    } },
    withKeyBits(value):: self { resource+: {
      vault_kmip_secret_ca_generated+: { [terraformName]+: { key_bits: value } },
    } },
    '#withKeyType':: { 'function': {
      help:
        |||
          CA key type (rsa or ec).
        |||,
    } },
    withKeyType(value):: self { resource+: {
      vault_kmip_secret_ca_generated+: { [terraformName]+: { key_type: value } },
    } },
    '#withName':: { 'function': {
      help:
        |||
          Name to identify the CA.
        |||,
    } },
    withName(value):: self { resource+: {
      vault_kmip_secret_ca_generated+: { [terraformName]+: { name: value } },
    } },
    '#withNamespace':: { 'function': {
      help:
        |||
          Target namespace. (requires Enterprise)
        |||,
    } },
    withNamespace(value):: self { resource+: {
      vault_kmip_secret_ca_generated+: { [terraformName]+: { namespace: value } },
    } },
    '#withPath':: { 'function': {
      help:
        |||
          Path where KMIP backend is mounted.
        |||,
    } },
    withPath(value):: self { resource+: {
      vault_kmip_secret_ca_generated+: { [terraformName]+: { path: value } },
    } },
    '#withTtl':: { 'function': {
      help:
        |||
          CA TTL in seconds. Defaults to 365 days.
        |||,
    } },
    withTtl(value):: self { resource+: {
      vault_kmip_secret_ca_generated+: { [terraformName]+: { ttl: value } },
    } },

  }
  ,
  ref(terraformName):: {
    local refSelf = self,
    plain(suffix=''):: '${ vault_kmip_secret_ca_generated.%s%s }' % [terraformName, suffix],
    fields:: {
      '#ca_pem':: { 'function': {
        help:
          |||
            CA certificate in PEM format.
          |||,
      } },
      ca_pem(suffix=''):: refSelf.plain('.ca_pem%s' % suffix),
      '#key_bits':: { 'function': {
        help:
          |||
            CA key bits. Valid values depend on key_type: For rsa: 2048, 3072, 4096. For ec: 224, 256, 384, 521.
          |||,
      } },
      key_bits(suffix=''):: refSelf.plain('.key_bits%s' % suffix),
      '#key_type':: { 'function': {
        help:
          |||
            CA key type (rsa or ec).
          |||,
      } },
      key_type(suffix=''):: refSelf.plain('.key_type%s' % suffix),
      '#name':: { 'function': {
        help:
          |||
            Name to identify the CA.
          |||,
      } },
      name(suffix=''):: refSelf.plain('.name%s' % suffix),
      '#namespace':: { 'function': {
        help:
          |||
            Target namespace. (requires Enterprise)
          |||,
      } },
      namespace(suffix=''):: refSelf.plain('.namespace%s' % suffix),
      '#path':: { 'function': {
        help:
          |||
            Path where KMIP backend is mounted.
          |||,
      } },
      path(suffix=''):: refSelf.plain('.path%s' % suffix),
      '#ttl':: { 'function': {
        help:
          |||
            CA TTL in seconds. Defaults to 365 days.
          |||,
      } },
      ttl(suffix=''):: refSelf.plain('.ttl%s' % suffix),

    },

  },

}
