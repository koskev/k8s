{
  local outerSelf = self,
  new(terraformName, backend):: self.functions(terraformName) + {
    _type:: 'tf',
    ref():: outerSelf.ref(terraformName),
    resource+: {
      vault_pki_secret_backend_config_urls+: { [terraformName]+: {
        backend: backend,
      } },
    },
  }
  ,
  functions(terraformName):: {
    withForEach(value):: self { resource+: {
      vault_pki_secret_backend_config_urls+: { [terraformName]+: { for_each: value } },
    } },
    withDependsOn(value):: self { resource+: {
      vault_pki_secret_backend_config_urls+: { [terraformName]+: { depends_on: value } },
    } },
    withCount(value):: self { resource+: {
      vault_pki_secret_backend_config_urls+: { [terraformName]+: { count: value } },
    } },
    withLifecycle(value):: self { resource+: {
      vault_pki_secret_backend_config_urls+: { [terraformName]+: { lifecycle: value } },
    } },
    withProvider(value):: self { resource+: {
      vault_pki_secret_backend_config_urls+: { [terraformName]+: { provider: value } },
    } },
    withProviders(value):: self { resource+: {
      vault_pki_secret_backend_config_urls+: { [terraformName]+: { providers: value } },
    } },
    addCustomData(name, value):: self { resource+: {
      vault_pki_secret_backend_config_urls+: { [terraformName]+: { [name]: value } },
    } },
    '#withBackend':: { 'function': {
      help:
        |||
          The path of the PKI secret backend the resource belongs to.
        |||,
    } },
    withBackend(value):: self { resource+: {
      vault_pki_secret_backend_config_urls+: { [terraformName]+: { backend: value } },
    } },
    '#withCrlDistributionPoints':: { 'function': {
      help:
        |||
          Specifies the URL values for the CRL Distribution Points field.
        |||,
    } },
    withCrlDistributionPoints(value):: self { resource+: {
      vault_pki_secret_backend_config_urls+: { [terraformName]+: { crl_distribution_points: value } },
    } },
    '#withEnableTemplating':: { 'function': {
      help:
        |||
          Specifies that templating of AIA fields is allowed.
        |||,
    } },
    withEnableTemplating(value):: self { resource+: {
      vault_pki_secret_backend_config_urls+: { [terraformName]+: { enable_templating: value } },
    } },
    withId(value):: self { resource+: {
      vault_pki_secret_backend_config_urls+: { [terraformName]+: { id: value } },
    } },
    '#withIssuingCertificates':: { 'function': {
      help:
        |||
          Specifies the URL values for the Issuing Certificate field.
        |||,
    } },
    withIssuingCertificates(value):: self { resource+: {
      vault_pki_secret_backend_config_urls+: { [terraformName]+: { issuing_certificates: value } },
    } },
    '#withNamespace':: { 'function': {
      help:
        |||
          Target namespace. (requires Enterprise)
        |||,
    } },
    withNamespace(value):: self { resource+: {
      vault_pki_secret_backend_config_urls+: { [terraformName]+: { namespace: value } },
    } },
    '#withOcspServers':: { 'function': {
      help:
        |||
          Specifies the URL values for the OCSP Servers field.
        |||,
    } },
    withOcspServers(value):: self { resource+: {
      vault_pki_secret_backend_config_urls+: { [terraformName]+: { ocsp_servers: value } },
    } },

  }
  ,
  ref(terraformName):: {
    local refSelf = self,
    plain(suffix=''):: '${ vault_pki_secret_backend_config_urls.%s%s }' % [terraformName, suffix],
    fields:: {
      '#backend':: { 'function': {
        help:
          |||
            The path of the PKI secret backend the resource belongs to.
          |||,
      } },
      backend(suffix=''):: refSelf.plain('.backend%s' % suffix),
      '#crl_distribution_points':: { 'function': {
        help:
          |||
            Specifies the URL values for the CRL Distribution Points field.
          |||,
      } },
      crl_distribution_points(suffix=''):: refSelf.plain('.crl_distribution_points%s' % suffix),
      '#enable_templating':: { 'function': {
        help:
          |||
            Specifies that templating of AIA fields is allowed.
          |||,
      } },
      enable_templating(suffix=''):: refSelf.plain('.enable_templating%s' % suffix),
      id(suffix=''):: refSelf.plain('.id%s' % suffix),
      '#issuing_certificates':: { 'function': {
        help:
          |||
            Specifies the URL values for the Issuing Certificate field.
          |||,
      } },
      issuing_certificates(suffix=''):: refSelf.plain('.issuing_certificates%s' % suffix),
      '#namespace':: { 'function': {
        help:
          |||
            Target namespace. (requires Enterprise)
          |||,
      } },
      namespace(suffix=''):: refSelf.plain('.namespace%s' % suffix),
      '#ocsp_servers':: { 'function': {
        help:
          |||
            Specifies the URL values for the OCSP Servers field.
          |||,
      } },
      ocsp_servers(suffix=''):: refSelf.plain('.ocsp_servers%s' % suffix),

    },

  },

}
