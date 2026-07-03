{
  new(terraformName, key_bits, key_type, name, path):: {
    _type:: 'tf',
    resource+: {
      vault_kmip_secret_ca_generated+: { [terraformName]+: {
        key_bits: key_bits,
        key_type: key_type,
        name: name,
        path: path,
      } },
    },
    '#withCaPem':: { 'function': { help: |||
      CA certificate in PEM format. 
    ||| } },
    withCaPem(value):: self {
      resource+: {
        vault_kmip_secret_ca_generated+: { [terraformName]+: { ca_pem: value } },
      },
    },
    '#withKeyBits':: { 'function': { help: |||
      CA key bits. Valid values depend on key_type: For rsa: 2048, 3072, 4096. For ec: 224, 256, 384, 521. 
    ||| } },
    withKeyBits(value):: self {
      resource+: {
        vault_kmip_secret_ca_generated+: { [terraformName]+: { key_bits: value } },
      },
    },
    '#withKeyType':: { 'function': { help: |||
      CA key type (rsa or ec). 
    ||| } },
    withKeyType(value):: self {
      resource+: {
        vault_kmip_secret_ca_generated+: { [terraformName]+: { key_type: value } },
      },
    },
    '#withName':: { 'function': { help: |||
      Name to identify the CA. 
    ||| } },
    withName(value):: self {
      resource+: {
        vault_kmip_secret_ca_generated+: { [terraformName]+: { name: value } },
      },
    },
    '#withNamespace':: { 'function': { help: |||
      Target namespace. (requires Enterprise) 
    ||| } },
    withNamespace(value):: self {
      resource+: {
        vault_kmip_secret_ca_generated+: { [terraformName]+: { namespace: value } },
      },
    },
    '#withPath':: { 'function': { help: |||
      Path where KMIP backend is mounted. 
    ||| } },
    withPath(value):: self {
      resource+: {
        vault_kmip_secret_ca_generated+: { [terraformName]+: { path: value } },
      },
    },
    '#withTtl':: { 'function': { help: |||
      CA TTL in seconds. Defaults to 365 days. 
    ||| } },
    withTtl(value):: self {
      resource+: {
        vault_kmip_secret_ca_generated+: { [terraformName]+: { ttl: value } },
      },
    },
  },
}
