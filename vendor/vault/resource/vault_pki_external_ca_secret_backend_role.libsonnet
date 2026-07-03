{
  new(terraformName, mount, name, acme_account_name):: {
    _type:: 'tf',
    resource+: {
      vault_pki_external_ca_secret_backend_role+: { [terraformName]+: {
        mount: mount,
        name: name,
        acme_account_name: acme_account_name,
      } },
    },
    withCreationDate(value):: self {
      resource+: {
        vault_pki_external_ca_secret_backend_role+: { [terraformName]+: { creation_date: value } },
      },
    },
    withAllowedDomainOptions(value):: self {
      resource+: {
        vault_pki_external_ca_secret_backend_role+: { [terraformName]+: { allowed_domain_options: value } },
      },
    },
    withForce(value):: self {
      resource+: {
        vault_pki_external_ca_secret_backend_role+: { [terraformName]+: { force: value } },
      },
    },
    withMount(value):: self {
      resource+: {
        vault_pki_external_ca_secret_backend_role+: { [terraformName]+: { mount: value } },
      },
    },
    withNamespace(value):: self {
      resource+: {
        vault_pki_external_ca_secret_backend_role+: { [terraformName]+: { namespace: value } },
      },
    },
    withAllowedChallengeTypes(value):: self {
      resource+: {
        vault_pki_external_ca_secret_backend_role+: { [terraformName]+: { allowed_challenge_types: value } },
      },
    },
    withLastUpdateDate(value):: self {
      resource+: {
        vault_pki_external_ca_secret_backend_role+: { [terraformName]+: { last_update_date: value } },
      },
    },
    withName(value):: self {
      resource+: {
        vault_pki_external_ca_secret_backend_role+: { [terraformName]+: { name: value } },
      },
    },
    withAllowedDomains(value):: self {
      resource+: {
        vault_pki_external_ca_secret_backend_role+: { [terraformName]+: { allowed_domains: value } },
      },
    },
    withCsrIdentifierPopulation(value):: self {
      resource+: {
        vault_pki_external_ca_secret_backend_role+: { [terraformName]+: { csr_identifier_population: value } },
      },
    },
    withCsrGenerateKeyType(value):: self {
      resource+: {
        vault_pki_external_ca_secret_backend_role+: { [terraformName]+: { csr_generate_key_type: value } },
      },
    },
    withAcmeAccountName(value):: self {
      resource+: {
        vault_pki_external_ca_secret_backend_role+: { [terraformName]+: { acme_account_name: value } },
      },
    },
  },
}
