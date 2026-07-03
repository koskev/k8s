{
  new(terraformName, name, key_bits, key_type, path):: {
    _type:: 'tf',
    resource+: {
      vault_kmip_secret_ca_generated+: { [terraformName]+: {
        name: name,
        key_bits: key_bits,
        key_type: key_type,
        path: path,
      } },
    },
    withName(value):: self {
      resource+: {
        vault_kmip_secret_ca_generated+: { [terraformName]+: { name: value } },
      },
    },
    withNamespace(value):: self {
      resource+: {
        vault_kmip_secret_ca_generated+: { [terraformName]+: { namespace: value } },
      },
    },
    withTtl(value):: self {
      resource+: {
        vault_kmip_secret_ca_generated+: { [terraformName]+: { ttl: value } },
      },
    },
    withKeyBits(value):: self {
      resource+: {
        vault_kmip_secret_ca_generated+: { [terraformName]+: { key_bits: value } },
      },
    },
    withCaPem(value):: self {
      resource+: {
        vault_kmip_secret_ca_generated+: { [terraformName]+: { ca_pem: value } },
      },
    },
    withKeyType(value):: self {
      resource+: {
        vault_kmip_secret_ca_generated+: { [terraformName]+: { key_type: value } },
      },
    },
    withPath(value):: self {
      resource+: {
        vault_kmip_secret_ca_generated+: { [terraformName]+: { path: value } },
      },
    },
  },
}
