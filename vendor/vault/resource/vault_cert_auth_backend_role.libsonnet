{
  new(terraformName, certificate, name):: {
    _type:: 'tf',
    resource+: {
      vault_cert_auth_backend_role+: { [terraformName]+: {
        certificate: certificate,
        name: name,
      } },
    },
    withAllowedOrganizationalUnits(value):: self {
      resource+: {
        vault_cert_auth_backend_role+: { [terraformName]+: { allowed_organizational_units: value } },
      },
    },
    withTokenExplicitMaxTtl(value):: self {
      resource+: {
        vault_cert_auth_backend_role+: { [terraformName]+: { token_explicit_max_ttl: value } },
      },
    },
    withTokenTtl(value):: self {
      resource+: {
        vault_cert_auth_backend_role+: { [terraformName]+: { token_ttl: value } },
      },
    },
    withOcspFailOpen(value):: self {
      resource+: {
        vault_cert_auth_backend_role+: { [terraformName]+: { ocsp_fail_open: value } },
      },
    },
    withId(value):: self {
      resource+: {
        vault_cert_auth_backend_role+: { [terraformName]+: { id: value } },
      },
    },
    withRequiredExtensions(value):: self {
      resource+: {
        vault_cert_auth_backend_role+: { [terraformName]+: { required_extensions: value } },
      },
    },
    withTokenBoundCidrs(value):: self {
      resource+: {
        vault_cert_auth_backend_role+: { [terraformName]+: { token_bound_cidrs: value } },
      },
    },
    withOcspEnabled(value):: self {
      resource+: {
        vault_cert_auth_backend_role+: { [terraformName]+: { ocsp_enabled: value } },
      },
    },
    withTokenPolicies(value):: self {
      resource+: {
        vault_cert_auth_backend_role+: { [terraformName]+: { token_policies: value } },
      },
    },
    withTokenPeriod(value):: self {
      resource+: {
        vault_cert_auth_backend_role+: { [terraformName]+: { token_period: value } },
      },
    },
    withDisplayName(value):: self {
      resource+: {
        vault_cert_auth_backend_role+: { [terraformName]+: { display_name: value } },
      },
    },
    withTokenType(value):: self {
      resource+: {
        vault_cert_auth_backend_role+: { [terraformName]+: { token_type: value } },
      },
    },
    withAllowedUriSans(value):: self {
      resource+: {
        vault_cert_auth_backend_role+: { [terraformName]+: { allowed_uri_sans: value } },
      },
    },
    withAllowedCommonNames(value):: self {
      resource+: {
        vault_cert_auth_backend_role+: { [terraformName]+: { allowed_common_names: value } },
      },
    },
    withOcspMaxRetries(value):: self {
      resource+: {
        vault_cert_auth_backend_role+: { [terraformName]+: { ocsp_max_retries: value } },
      },
    },
    withAliasMetadata(value):: self {
      resource+: {
        vault_cert_auth_backend_role+: { [terraformName]+: { alias_metadata: value } },
      },
    },
    withAllowedDnsSans(value):: self {
      resource+: {
        vault_cert_auth_backend_role+: { [terraformName]+: { allowed_dns_sans: value } },
      },
    },
    withTokenMaxTtl(value):: self {
      resource+: {
        vault_cert_auth_backend_role+: { [terraformName]+: { token_max_ttl: value } },
      },
    },
    withBackend(value):: self {
      resource+: {
        vault_cert_auth_backend_role+: { [terraformName]+: { backend: value } },
      },
    },
    withAllowedEmailSans(value):: self {
      resource+: {
        vault_cert_auth_backend_role+: { [terraformName]+: { allowed_email_sans: value } },
      },
    },
    withCertificate(value):: self {
      resource+: {
        vault_cert_auth_backend_role+: { [terraformName]+: { certificate: value } },
      },
    },
    withOcspQueryAllServers(value):: self {
      resource+: {
        vault_cert_auth_backend_role+: { [terraformName]+: { ocsp_query_all_servers: value } },
      },
    },
    withOcspThisUpdateMaxAge(value):: self {
      resource+: {
        vault_cert_auth_backend_role+: { [terraformName]+: { ocsp_this_update_max_age: value } },
      },
    },
    withOcspServersOverride(value):: self {
      resource+: {
        vault_cert_auth_backend_role+: { [terraformName]+: { ocsp_servers_override: value } },
      },
    },
    withOcspCaCertificates(value):: self {
      resource+: {
        vault_cert_auth_backend_role+: { [terraformName]+: { ocsp_ca_certificates: value } },
      },
    },
    withName(value):: self {
      resource+: {
        vault_cert_auth_backend_role+: { [terraformName]+: { name: value } },
      },
    },
    withTokenNumUses(value):: self {
      resource+: {
        vault_cert_auth_backend_role+: { [terraformName]+: { token_num_uses: value } },
      },
    },
    withTokenNoDefaultPolicy(value):: self {
      resource+: {
        vault_cert_auth_backend_role+: { [terraformName]+: { token_no_default_policy: value } },
      },
    },
    withNamespace(value):: self {
      resource+: {
        vault_cert_auth_backend_role+: { [terraformName]+: { namespace: value } },
      },
    },
    withAllowedNames(value):: self {
      resource+: {
        vault_cert_auth_backend_role+: { [terraformName]+: { allowed_names: value } },
      },
    },
  },
}
