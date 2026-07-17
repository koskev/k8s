{
  local outerSelf = self,
  '#new':: { 'function': {
    help:
      |||
        Manage KMIP secret engine listeners.
      |||,
  } },
  new(terraformName, address, ca, name, path):: self.functions(terraformName) + {
    _type:: 'tf',
    ref():: outerSelf.ref(terraformName),
    resource+: {
      vault_kmip_secret_listener+: { [terraformName]+: {
        address: address,
        ca: ca,
        name: name,
        path: path,
      } },
    },
  }
  ,
  functions(terraformName):: {
    withForEach(value):: self { resource+: {
      vault_kmip_secret_listener+: { [terraformName]+: { for_each: value } },
    } },
    withDependsOn(value):: self { resource+: {
      vault_kmip_secret_listener+: { [terraformName]+: { depends_on: value } },
    } },
    withCount(value):: self { resource+: {
      vault_kmip_secret_listener+: { [terraformName]+: { count: value } },
    } },
    withLifecycle(value):: self { resource+: {
      vault_kmip_secret_listener+: { [terraformName]+: { lifecycle: value } },
    } },
    withProvider(value):: self { resource+: {
      vault_kmip_secret_listener+: { [terraformName]+: { provider: value } },
    } },
    withProviders(value):: self { resource+: {
      vault_kmip_secret_listener+: { [terraformName]+: { providers: value } },
    } },
    addCustomData(name, value):: self { resource+: {
      vault_kmip_secret_listener+: { [terraformName]+: { [name]: value } },
    } },
    '#withAdditionalClientCas':: { 'function': {
      help:
        |||
          Names of additional TLS CAs to use to verify client certificates.
        |||,
    } },
    withAdditionalClientCas(value):: self { resource+: {
      vault_kmip_secret_listener+: { [terraformName]+: { additional_client_cas: value } },
    } },
    '#withAddress':: { 'function': {
      help:
        |||
          Host:port address to listen on.
        |||,
    } },
    withAddress(value):: self { resource+: {
      vault_kmip_secret_listener+: { [terraformName]+: { address: value } },
    } },
    '#withAlsoUseLegacyCa':: { 'function': {
      help:
        |||
          Use the legacy unnamed CA for verifying client certificates as well.
        |||,
    } },
    withAlsoUseLegacyCa(value):: self { resource+: {
      vault_kmip_secret_listener+: { [terraformName]+: { also_use_legacy_ca: value } },
    } },
    '#withCa':: { 'function': {
      help:
        |||
          Name of the CA to use to generate the server certificate and verify client certificates.
        |||,
    } },
    withCa(value):: self { resource+: {
      vault_kmip_secret_listener+: { [terraformName]+: { ca: value } },
    } },
    '#withName':: { 'function': {
      help:
        |||
          Unique name for the listener.
        |||,
    } },
    withName(value):: self { resource+: {
      vault_kmip_secret_listener+: { [terraformName]+: { name: value } },
    } },
    '#withNamespace':: { 'function': {
      help:
        |||
          Target namespace. (requires Enterprise)
        |||,
    } },
    withNamespace(value):: self { resource+: {
      vault_kmip_secret_listener+: { [terraformName]+: { namespace: value } },
    } },
    '#withPath':: { 'function': {
      help:
        |||
          Path where KMIP backend is mounted.
        |||,
    } },
    withPath(value):: self { resource+: {
      vault_kmip_secret_listener+: { [terraformName]+: { path: value } },
    } },
    '#withServerHostnames':: { 'function': {
      help:
        |||
          DNS SANs to include in listener certificate.
        |||,
    } },
    withServerHostnames(value):: self { resource+: {
      vault_kmip_secret_listener+: { [terraformName]+: { server_hostnames: value } },
    } },
    '#withServerIps':: { 'function': {
      help:
        |||
          IP SANs to include in listener certificate.
        |||,
    } },
    withServerIps(value):: self { resource+: {
      vault_kmip_secret_listener+: { [terraformName]+: { server_ips: value } },
    } },
    '#withTlsCipherSuites':: { 'function': {
      help:
        |||
          TLS cipher suites to allow (does not apply to tls13+).
        |||,
    } },
    withTlsCipherSuites(value):: self { resource+: {
      vault_kmip_secret_listener+: { [terraformName]+: { tls_cipher_suites: value } },
    } },
    '#withTlsMaxVersion':: { 'function': {
      help:
        |||
          Maximum TLS version to accept (tls12 or tls13).
        |||,
    } },
    withTlsMaxVersion(value):: self { resource+: {
      vault_kmip_secret_listener+: { [terraformName]+: { tls_max_version: value } },
    } },
    '#withTlsMinVersion':: { 'function': {
      help:
        |||
          Minimum TLS version to accept (tls12 or tls13).
        |||,
    } },
    withTlsMinVersion(value):: self { resource+: {
      vault_kmip_secret_listener+: { [terraformName]+: { tls_min_version: value } },
    } },

  }
  ,
  ref(terraformName):: {
    local refSelf = self,
    plain(suffix=''):: '${ vault_kmip_secret_listener.%s%s }' % [terraformName, suffix],
    fields:: {
      '#additional_client_cas':: { 'function': {
        help:
          |||
            Names of additional TLS CAs to use to verify client certificates.
          |||,
      } },
      additional_client_cas(suffix=''):: refSelf.plain('.additional_client_cas%s' % suffix),
      '#address':: { 'function': {
        help:
          |||
            Host:port address to listen on.
          |||,
      } },
      address(suffix=''):: refSelf.plain('.address%s' % suffix),
      '#also_use_legacy_ca':: { 'function': {
        help:
          |||
            Use the legacy unnamed CA for verifying client certificates as well.
          |||,
      } },
      also_use_legacy_ca(suffix=''):: refSelf.plain('.also_use_legacy_ca%s' % suffix),
      '#ca':: { 'function': {
        help:
          |||
            Name of the CA to use to generate the server certificate and verify client certificates.
          |||,
      } },
      ca(suffix=''):: refSelf.plain('.ca%s' % suffix),
      '#name':: { 'function': {
        help:
          |||
            Unique name for the listener.
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
      '#server_hostnames':: { 'function': {
        help:
          |||
            DNS SANs to include in listener certificate.
          |||,
      } },
      server_hostnames(suffix=''):: refSelf.plain('.server_hostnames%s' % suffix),
      '#server_ips':: { 'function': {
        help:
          |||
            IP SANs to include in listener certificate.
          |||,
      } },
      server_ips(suffix=''):: refSelf.plain('.server_ips%s' % suffix),
      '#tls_cipher_suites':: { 'function': {
        help:
          |||
            TLS cipher suites to allow (does not apply to tls13+).
          |||,
      } },
      tls_cipher_suites(suffix=''):: refSelf.plain('.tls_cipher_suites%s' % suffix),
      '#tls_max_version':: { 'function': {
        help:
          |||
            Maximum TLS version to accept (tls12 or tls13).
          |||,
      } },
      tls_max_version(suffix=''):: refSelf.plain('.tls_max_version%s' % suffix),
      '#tls_min_version':: { 'function': {
        help:
          |||
            Minimum TLS version to accept (tls12 or tls13).
          |||,
      } },
      tls_min_version(suffix=''):: refSelf.plain('.tls_min_version%s' % suffix),

    },

  },

}
