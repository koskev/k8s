{
  new(terraformName, acme_account_name, mount, name):: {
    _type:: 'tf',
    resource+: {
      vault_pki_external_ca_secret_backend_role+: { [terraformName]+: {
        acme_account_name: acme_account_name,
        mount: mount,
        name: name,
      } },
    },
    '#withAcmeAccountName':: { 'function': { help: |||
      The ACME account to use when validating certificates. 
    ||| } },
    withAcmeAccountName(value):: self {
      resource+: {
        vault_pki_external_ca_secret_backend_role+: { [terraformName]+: { acme_account_name: value } },
      },
    },
    '#withAllowedChallengeTypes':: { 'function': { help: |||
      The list of challenge types that are allowed to be used. Valid values are: `http-01`, `dns-01`, `tls-alpn-01`. Defaults to all challenge types. 
    ||| } },
    withAllowedChallengeTypes(value):: self {
      resource+: {
        vault_pki_external_ca_secret_backend_role+: { [terraformName]+: { allowed_challenge_types: value } },
      },
    },
    '#withAllowedDomainOptions':: { 'function': { help: |||
      A list of keyword options that influence how values within allowed_domains are interpreted against the requested set of identifiers from the client. Valid values are: `bare_domains`, `subdomains`, `wildcards`, `globs`. 
    ||| } },
    withAllowedDomainOptions(value):: self {
      resource+: {
        vault_pki_external_ca_secret_backend_role+: { [terraformName]+: { allowed_domain_options: value } },
      },
    },
    '#withAllowedDomains':: { 'function': { help: |||
      A list of domains the role will accept certificates for. May contain templates, as with ACL Path Templating. 
    ||| } },
    withAllowedDomains(value):: self {
      resource+: {
        vault_pki_external_ca_secret_backend_role+: { [terraformName]+: { allowed_domains: value } },
      },
    },
    '#withCreationDate':: { 'function': { help: |||
      The date and time the role was created in RFC3339 format. 
    ||| } },
    withCreationDate(value):: self {
      resource+: {
        vault_pki_external_ca_secret_backend_role+: { [terraformName]+: { creation_date: value } },
      },
    },
    '#withCsrGenerateKeyType':: { 'function': { help: |||
      The key type and size/parameters to use when generating a new key if running in the identifier workflow. Valid values are: `ec-256`, `ec-384`, `ec-521`, `rsa-2048`, `rsa-4096`. 
    ||| } },
    withCsrGenerateKeyType(value):: self {
      resource+: {
        vault_pki_external_ca_secret_backend_role+: { [terraformName]+: { csr_generate_key_type: value } },
      },
    },
    '#withCsrIdentifierPopulation':: { 'function': { help: |||
      The technique used to populate a CSR from the provided identifiers in the identifier workflow. Valid values are: `cn_first`, `sans_only`. 
    ||| } },
    withCsrIdentifierPopulation(value):: self {
      resource+: {
        vault_pki_external_ca_secret_backend_role+: { [terraformName]+: { csr_identifier_population: value } },
      },
    },
    '#withForce':: { 'function': { help: |||
      Force deletion even when active orders exist. 
    ||| } },
    withForce(value):: self {
      resource+: {
        vault_pki_external_ca_secret_backend_role+: { [terraformName]+: { force: value } },
      },
    },
    '#withLastUpdateDate':: { 'function': { help: |||
      The date and time the role was last updated in RFC3339 format. 
    ||| } },
    withLastUpdateDate(value):: self {
      resource+: {
        vault_pki_external_ca_secret_backend_role+: { [terraformName]+: { last_update_date: value } },
      },
    },
    '#withMount':: { 'function': { help: |||
      The path where the PKI External CA secret backend is mounted. 
    ||| } },
    withMount(value):: self {
      resource+: {
        vault_pki_external_ca_secret_backend_role+: { [terraformName]+: { mount: value } },
      },
    },
    '#withName':: { 'function': { help: |||
      Name of the role. 
    ||| } },
    withName(value):: self {
      resource+: {
        vault_pki_external_ca_secret_backend_role+: { [terraformName]+: { name: value } },
      },
    },
    '#withNamespace':: { 'function': { help: |||
      Target namespace. (requires Enterprise) 
    ||| } },
    withNamespace(value):: self {
      resource+: {
        vault_pki_external_ca_secret_backend_role+: { [terraformName]+: { namespace: value } },
      },
    },
  },
}
