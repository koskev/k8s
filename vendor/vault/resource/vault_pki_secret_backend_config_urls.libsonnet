{
  new(terraformName, backend):: {
    _type:: 'tf',
    resource+: {
      vault_pki_secret_backend_config_urls+: { [terraformName]+: {
        backend: backend,
      } },
    },
    withNamespace(value):: self {
      resource+: {
        vault_pki_secret_backend_config_urls+: { [terraformName]+: { namespace: value } },
      },
    },
    withOcspServers(value):: self {
      resource+: {
        vault_pki_secret_backend_config_urls+: { [terraformName]+: { ocsp_servers: value } },
      },
    },
    withCrlDistributionPoints(value):: self {
      resource+: {
        vault_pki_secret_backend_config_urls+: { [terraformName]+: { crl_distribution_points: value } },
      },
    },
    withEnableTemplating(value):: self {
      resource+: {
        vault_pki_secret_backend_config_urls+: { [terraformName]+: { enable_templating: value } },
      },
    },
    withBackend(value):: self {
      resource+: {
        vault_pki_secret_backend_config_urls+: { [terraformName]+: { backend: value } },
      },
    },
    withId(value):: self {
      resource+: {
        vault_pki_secret_backend_config_urls+: { [terraformName]+: { id: value } },
      },
    },
    withIssuingCertificates(value):: self {
      resource+: {
        vault_pki_secret_backend_config_urls+: { [terraformName]+: { issuing_certificates: value } },
      },
    },
  },
}
