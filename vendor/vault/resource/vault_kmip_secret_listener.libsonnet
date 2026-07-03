{
  new(terraformName, address, name, path, ca):: {
    _type:: 'tf',
    resource+: {
      vault_kmip_secret_listener+: { [terraformName]+: {
        address: address,
        name: name,
        path: path,
        ca: ca,
      } },
    },
    withAddress(value):: self {
      resource+: {
        vault_kmip_secret_listener+: { [terraformName]+: { address: value } },
      },
    },
    withNamespace(value):: self {
      resource+: {
        vault_kmip_secret_listener+: { [terraformName]+: { namespace: value } },
      },
    },
    withAdditionalClientCas(value):: self {
      resource+: {
        vault_kmip_secret_listener+: { [terraformName]+: { additional_client_cas: value } },
      },
    },
    withName(value):: self {
      resource+: {
        vault_kmip_secret_listener+: { [terraformName]+: { name: value } },
      },
    },
    withAlsoUseLegacyCa(value):: self {
      resource+: {
        vault_kmip_secret_listener+: { [terraformName]+: { also_use_legacy_ca: value } },
      },
    },
    withServerHostnames(value):: self {
      resource+: {
        vault_kmip_secret_listener+: { [terraformName]+: { server_hostnames: value } },
      },
    },
    withPath(value):: self {
      resource+: {
        vault_kmip_secret_listener+: { [terraformName]+: { path: value } },
      },
    },
    withTlsMaxVersion(value):: self {
      resource+: {
        vault_kmip_secret_listener+: { [terraformName]+: { tls_max_version: value } },
      },
    },
    withTlsMinVersion(value):: self {
      resource+: {
        vault_kmip_secret_listener+: { [terraformName]+: { tls_min_version: value } },
      },
    },
    withCa(value):: self {
      resource+: {
        vault_kmip_secret_listener+: { [terraformName]+: { ca: value } },
      },
    },
    withServerIps(value):: self {
      resource+: {
        vault_kmip_secret_listener+: { [terraformName]+: { server_ips: value } },
      },
    },
    withTlsCipherSuites(value):: self {
      resource+: {
        vault_kmip_secret_listener+: { [terraformName]+: { tls_cipher_suites: value } },
      },
    },
  },
}
