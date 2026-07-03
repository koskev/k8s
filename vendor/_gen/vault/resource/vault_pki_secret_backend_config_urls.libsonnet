{
  new(terraformName, backend):: {
    _type:: 'tf',
    resource+: {
      vault_pki_secret_backend_config_urls+: { [terraformName]+: {
        backend: backend,
      } },
    },
    '#withBackend':: { 'function': { help: |||
      The path of the PKI secret backend the resource belongs to. 
    ||| } },
    withBackend(value):: self {
      resource+: {
        vault_pki_secret_backend_config_urls+: { [terraformName]+: { backend: value } },
      },
    },
    '#withCrlDistributionPoints':: { 'function': { help: |||
      Specifies the URL values for the CRL Distribution Points field. 
    ||| } },
    withCrlDistributionPoints(value):: self {
      resource+: {
        vault_pki_secret_backend_config_urls+: { [terraformName]+: { crl_distribution_points: value } },
      },
    },
    '#withEnableTemplating':: { 'function': { help: |||
      Specifies that templating of AIA fields is allowed. 
    ||| } },
    withEnableTemplating(value):: self {
      resource+: {
        vault_pki_secret_backend_config_urls+: { [terraformName]+: { enable_templating: value } },
      },
    },
    withId(value):: self {
      resource+: {
        vault_pki_secret_backend_config_urls+: { [terraformName]+: { id: value } },
      },
    },
    '#withIssuingCertificates':: { 'function': { help: |||
      Specifies the URL values for the Issuing Certificate field. 
    ||| } },
    withIssuingCertificates(value):: self {
      resource+: {
        vault_pki_secret_backend_config_urls+: { [terraformName]+: { issuing_certificates: value } },
      },
    },
    '#withNamespace':: { 'function': { help: |||
      Target namespace. (requires Enterprise) 
    ||| } },
    withNamespace(value):: self {
      resource+: {
        vault_pki_secret_backend_config_urls+: { [terraformName]+: { namespace: value } },
      },
    },
    '#withOcspServers':: { 'function': { help: |||
      Specifies the URL values for the OCSP Servers field. 
    ||| } },
    withOcspServers(value):: self {
      resource+: {
        vault_pki_secret_backend_config_urls+: { [terraformName]+: { ocsp_servers: value } },
      },
    },
  },
}
