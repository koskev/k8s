{
  '#new':: { 'function': { help: |||
    Manage PKI External CA roles for certificate issuance via ACME.
  ||| } },
  local outerSelf = self,
  new(terraformName, acme_account_name, mount, name):: self.functions(terraformName) {
    ref():: outerSelf.ref(terraformName),
    _type:: 'tf',
    resource+: {
      vault_pki_external_ca_secret_backend_role+: {
        [terraformName]+: {
          acme_account_name: acme_account_name,
          mount: mount,
          name: name,
        },
      },
    },
  },
  functions(terraformName):: {
    withForEach(value):: self {
      resource+: {
        vault_pki_external_ca_secret_backend_role+: { [terraformName]+: { for_each: value } },
      },
    },
    withDependsOn(value):: self {
      resource+: {
        vault_pki_external_ca_secret_backend_role+: { [terraformName]+: { depends_on: value } },
      },
    },
    withCount(value):: self {
      resource+: {
        vault_pki_external_ca_secret_backend_role+: { [terraformName]+: { count: value } },
      },
    },
    withLifecycle(value):: self {
      resource+: {
        vault_pki_external_ca_secret_backend_role+: { [terraformName]+: { lifecycle: value } },
      },
    },
    withProvider(value):: self {
      resource+: {
        vault_pki_external_ca_secret_backend_role+: { [terraformName]+: { provider: value } },
      },
    },
    withProviders(value):: self {
      resource+: {
        vault_pki_external_ca_secret_backend_role+: { [terraformName]+: { providers: value } },
      },
    },
    '#acme_account_name':: { 'function': { help: |||
      The ACME account to use when validating certificates.
    ||| } },
    withAcmeAccountName(value):: self {
      resource+: {
        vault_pki_external_ca_secret_backend_role+: { [terraformName]+: { acme_account_name: value } },
      },
    },
    '#allowed_challenge_types':: { 'function': { help: |||
      The list of challenge types that are allowed to be used. Valid values are: `http-01`, `dns-01`, `tls-alpn-01`. Defaults to all challenge types.
    ||| } },
    withAllowedChallengeTypes(value):: self {
      resource+: {
        vault_pki_external_ca_secret_backend_role+: { [terraformName]+: { allowed_challenge_types: value } },
      },
    },
    '#allowed_domain_options':: { 'function': { help: |||
      A list of keyword options that influence how values within allowed_domains are interpreted against the requested set of identifiers from the client. Valid values are: `bare_domains`, `subdomains`, `wildcards`, `globs`.
    ||| } },
    withAllowedDomainOptions(value):: self {
      resource+: {
        vault_pki_external_ca_secret_backend_role+: { [terraformName]+: { allowed_domain_options: value } },
      },
    },
    '#allowed_domains':: { 'function': { help: |||
      A list of domains the role will accept certificates for. May contain templates, as with ACL Path Templating.
    ||| } },
    withAllowedDomains(value):: self {
      resource+: {
        vault_pki_external_ca_secret_backend_role+: { [terraformName]+: { allowed_domains: value } },
      },
    },
    '#csr_generate_key_type':: { 'function': { help: |||
      The key type and size/parameters to use when generating a new key if running in the identifier workflow. Valid values are: `ec-256`, `ec-384`, `ec-521`, `rsa-2048`, `rsa-4096`.
    ||| } },
    withCsrGenerateKeyType(value):: self {
      resource+: {
        vault_pki_external_ca_secret_backend_role+: { [terraformName]+: { csr_generate_key_type: value } },
      },
    },
    '#csr_identifier_population':: { 'function': { help: |||
      The technique used to populate a CSR from the provided identifiers in the identifier workflow. Valid values are: `cn_first`, `sans_only`.
    ||| } },
    withCsrIdentifierPopulation(value):: self {
      resource+: {
        vault_pki_external_ca_secret_backend_role+: { [terraformName]+: { csr_identifier_population: value } },
      },
    },
    '#force':: { 'function': { help: |||
      Force deletion even when active orders exist.
    ||| } },
    withForce(value):: self {
      resource+: {
        vault_pki_external_ca_secret_backend_role+: { [terraformName]+: { force: value } },
      },
    },
    '#mount':: { 'function': { help: |||
      The path where the PKI External CA secret backend is mounted.
    ||| } },
    withMount(value):: self {
      resource+: {
        vault_pki_external_ca_secret_backend_role+: { [terraformName]+: { mount: value } },
      },
    },
    '#name':: { 'function': { help: |||
      Name of the role.
    ||| } },
    withName(value):: self {
      resource+: {
        vault_pki_external_ca_secret_backend_role+: { [terraformName]+: { name: value } },
      },
    },
    '#namespace':: { 'function': { help: |||
      Target namespace. (requires Enterprise)
    ||| } },
    withNamespace(value):: self {
      resource+: {
        vault_pki_external_ca_secret_backend_role+: { [terraformName]+: { namespace: value } },
      },
    },
  },
  ref(terraformName):: {
    local refSelf = self,
    plain(suffix=''):: '${ vault_pki_external_ca_secret_backend_role.%s%s }' % [terraformName, suffix],
    fields:: {
      '#acme_account_name':: { 'function': { help: |||
        The ACME account to use when validating certificates.
      ||| } },
      acme_account_name(suffix=''):: refSelf.plain('.acme_account_name%s' % suffix),
      '#allowed_challenge_types':: { 'function': { help: |||
        The list of challenge types that are allowed to be used. Valid values are: `http-01`, `dns-01`, `tls-alpn-01`. Defaults to all challenge types.
      ||| } },
      allowed_challenge_types(suffix=''):: refSelf.plain('.allowed_challenge_types%s' % suffix),
      '#allowed_domain_options':: { 'function': { help: |||
        A list of keyword options that influence how values within allowed_domains are interpreted against the requested set of identifiers from the client. Valid values are: `bare_domains`, `subdomains`, `wildcards`, `globs`.
      ||| } },
      allowed_domain_options(suffix=''):: refSelf.plain('.allowed_domain_options%s' % suffix),
      '#allowed_domains':: { 'function': { help: |||
        A list of domains the role will accept certificates for. May contain templates, as with ACL Path Templating.
      ||| } },
      allowed_domains(suffix=''):: refSelf.plain('.allowed_domains%s' % suffix),
      '#creation_date':: { 'function': { help: |||
        The date and time the role was created in RFC3339 format.
      ||| } },
      creation_date(suffix=''):: refSelf.plain('.creation_date%s' % suffix),
      '#csr_generate_key_type':: { 'function': { help: |||
        The key type and size/parameters to use when generating a new key if running in the identifier workflow. Valid values are: `ec-256`, `ec-384`, `ec-521`, `rsa-2048`, `rsa-4096`.
      ||| } },
      csr_generate_key_type(suffix=''):: refSelf.plain('.csr_generate_key_type%s' % suffix),
      '#csr_identifier_population':: { 'function': { help: |||
        The technique used to populate a CSR from the provided identifiers in the identifier workflow. Valid values are: `cn_first`, `sans_only`.
      ||| } },
      csr_identifier_population(suffix=''):: refSelf.plain('.csr_identifier_population%s' % suffix),
      '#force':: { 'function': { help: |||
        Force deletion even when active orders exist.
      ||| } },
      force(suffix=''):: refSelf.plain('.force%s' % suffix),
      '#last_update_date':: { 'function': { help: |||
        The date and time the role was last updated in RFC3339 format.
      ||| } },
      last_update_date(suffix=''):: refSelf.plain('.last_update_date%s' % suffix),
      '#mount':: { 'function': { help: |||
        The path where the PKI External CA secret backend is mounted.
      ||| } },
      mount(suffix=''):: refSelf.plain('.mount%s' % suffix),
      '#name':: { 'function': { help: |||
        Name of the role.
      ||| } },
      name(suffix=''):: refSelf.plain('.name%s' % suffix),
      '#namespace':: { 'function': { help: |||
        Target namespace. (requires Enterprise)
      ||| } },
      namespace(suffix=''):: refSelf.plain('.namespace%s' % suffix),
    },
  },
}
