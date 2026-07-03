{
  new(terraformName, address, ca, name, path):: {
    _type:: 'tf',
    resource+: {
      vault_kmip_secret_listener+: { [terraformName]+: {
        address: address,
        ca: ca,
        name: name,
        path: path,
      } },
    },
    '#withAdditionalClientCas':: { 'function': { help: |||
      Names of additional TLS CAs to use to verify client certificates. 
    ||| } },
    withAdditionalClientCas(value):: self {
      resource+: {
        vault_kmip_secret_listener+: { [terraformName]+: { additional_client_cas: value } },
      },
    },
    '#withAddress':: { 'function': { help: |||
      Host:port address to listen on. 
    ||| } },
    withAddress(value):: self {
      resource+: {
        vault_kmip_secret_listener+: { [terraformName]+: { address: value } },
      },
    },
    '#withAlsoUseLegacyCa':: { 'function': { help: |||
      Use the legacy unnamed CA for verifying client certificates as well. 
    ||| } },
    withAlsoUseLegacyCa(value):: self {
      resource+: {
        vault_kmip_secret_listener+: { [terraformName]+: { also_use_legacy_ca: value } },
      },
    },
    '#withCa':: { 'function': { help: |||
      Name of the CA to use to generate the server certificate and verify client certificates. 
    ||| } },
    withCa(value):: self {
      resource+: {
        vault_kmip_secret_listener+: { [terraformName]+: { ca: value } },
      },
    },
    '#withName':: { 'function': { help: |||
      Unique name for the listener. 
    ||| } },
    withName(value):: self {
      resource+: {
        vault_kmip_secret_listener+: { [terraformName]+: { name: value } },
      },
    },
    '#withNamespace':: { 'function': { help: |||
      Target namespace. (requires Enterprise) 
    ||| } },
    withNamespace(value):: self {
      resource+: {
        vault_kmip_secret_listener+: { [terraformName]+: { namespace: value } },
      },
    },
    '#withPath':: { 'function': { help: |||
      Path where KMIP backend is mounted. 
    ||| } },
    withPath(value):: self {
      resource+: {
        vault_kmip_secret_listener+: { [terraformName]+: { path: value } },
      },
    },
    '#withServerHostnames':: { 'function': { help: |||
      DNS SANs to include in listener certificate. 
    ||| } },
    withServerHostnames(value):: self {
      resource+: {
        vault_kmip_secret_listener+: { [terraformName]+: { server_hostnames: value } },
      },
    },
    '#withServerIps':: { 'function': { help: |||
      IP SANs to include in listener certificate. 
    ||| } },
    withServerIps(value):: self {
      resource+: {
        vault_kmip_secret_listener+: { [terraformName]+: { server_ips: value } },
      },
    },
    '#withTlsCipherSuites':: { 'function': { help: |||
      TLS cipher suites to allow (does not apply to tls13+). 
    ||| } },
    withTlsCipherSuites(value):: self {
      resource+: {
        vault_kmip_secret_listener+: { [terraformName]+: { tls_cipher_suites: value } },
      },
    },
    '#withTlsMaxVersion':: { 'function': { help: |||
      Maximum TLS version to accept (tls12 or tls13). 
    ||| } },
    withTlsMaxVersion(value):: self {
      resource+: {
        vault_kmip_secret_listener+: { [terraformName]+: { tls_max_version: value } },
      },
    },
    '#withTlsMinVersion':: { 'function': { help: |||
      Minimum TLS version to accept (tls12 or tls13). 
    ||| } },
    withTlsMinVersion(value):: self {
      resource+: {
        vault_kmip_secret_listener+: { [terraformName]+: { tls_min_version: value } },
      },
    },
  },
}
