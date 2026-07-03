{
  new(terraformName, public_key, path, name):: {
    _type:: 'tf',
    data+: {
      vault_ssh_secret_backend_sign+: { [terraformName]+: {
        public_key: public_key,
        path: path,
        name: name,
      } },
    },
    withPublicKey(value):: self {
      data+: {
        vault_ssh_secret_backend_sign+: { [terraformName]+: { public_key: value } },
      },
    },
    withPath(value):: self {
      data+: {
        vault_ssh_secret_backend_sign+: { [terraformName]+: { path: value } },
      },
    },
    withSerialNumber(value):: self {
      data+: {
        vault_ssh_secret_backend_sign+: { [terraformName]+: { serial_number: value } },
      },
    },
    withSignedKey(value):: self {
      data+: {
        vault_ssh_secret_backend_sign+: { [terraformName]+: { signed_key: value } },
      },
    },
    withTtl(value):: self {
      data+: {
        vault_ssh_secret_backend_sign+: { [terraformName]+: { ttl: value } },
      },
    },
    withValidPrincipals(value):: self {
      data+: {
        vault_ssh_secret_backend_sign+: { [terraformName]+: { valid_principals: value } },
      },
    },
    withKeyId(value):: self {
      data+: {
        vault_ssh_secret_backend_sign+: { [terraformName]+: { key_id: value } },
      },
    },
    withName(value):: self {
      data+: {
        vault_ssh_secret_backend_sign+: { [terraformName]+: { name: value } },
      },
    },
    withExtensions(value):: self {
      data+: {
        vault_ssh_secret_backend_sign+: { [terraformName]+: { extensions: value } },
      },
    },
    withNamespace(value):: self {
      data+: {
        vault_ssh_secret_backend_sign+: { [terraformName]+: { namespace: value } },
      },
    },
    withCriticalOptions(value):: self {
      data+: {
        vault_ssh_secret_backend_sign+: { [terraformName]+: { critical_options: value } },
      },
    },
    withId(value):: self {
      data+: {
        vault_ssh_secret_backend_sign+: { [terraformName]+: { id: value } },
      },
    },
    withCertType(value):: self {
      data+: {
        vault_ssh_secret_backend_sign+: { [terraformName]+: { cert_type: value } },
      },
    },
  },
}
