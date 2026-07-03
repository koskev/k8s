{
  new(terraformName, name, backend):: {
    _type:: 'tf',
    resource+: {
      vault_pki_secret_backend_role+: { [terraformName]+: {
        name: name,
        backend: backend,
      } },
    },
    withKeyBits(value):: self {
      resource+: {
        vault_pki_secret_backend_role+: { [terraformName]+: { key_bits: value } },
      },
    },
    withNamespace(value):: self {
      resource+: {
        vault_pki_secret_backend_role+: { [terraformName]+: { namespace: value } },
      },
    },
    withStreetAddress(value):: self {
      resource+: {
        vault_pki_secret_backend_role+: { [terraformName]+: { street_address: value } },
      },
    },
    withAllowedSerialNumbers(value):: self {
      resource+: {
        vault_pki_secret_backend_role+: { [terraformName]+: { allowed_serial_numbers: value } },
      },
    },
    withUseCsrCommonName(value):: self {
      resource+: {
        vault_pki_secret_backend_role+: { [terraformName]+: { use_csr_common_name: value } },
      },
    },
    withAllowedDomainsTemplate(value):: self {
      resource+: {
        vault_pki_secret_backend_role+: { [terraformName]+: { allowed_domains_template: value } },
      },
    },
    withExtKeyUsage(value):: self {
      resource+: {
        vault_pki_secret_backend_role+: { [terraformName]+: { ext_key_usage: value } },
      },
    },
    withAllowSubdomains(value):: self {
      resource+: {
        vault_pki_secret_backend_role+: { [terraformName]+: { allow_subdomains: value } },
      },
    },
    withId(value):: self {
      resource+: {
        vault_pki_secret_backend_role+: { [terraformName]+: { id: value } },
      },
    },
    withCodeSigningFlag(value):: self {
      resource+: {
        vault_pki_secret_backend_role+: { [terraformName]+: { code_signing_flag: value } },
      },
    },
    withKeyType(value):: self {
      resource+: {
        vault_pki_secret_backend_role+: { [terraformName]+: { key_type: value } },
      },
    },
    withName(value):: self {
      resource+: {
        vault_pki_secret_backend_role+: { [terraformName]+: { name: value } },
      },
    },
    withCountry(value):: self {
      resource+: {
        vault_pki_secret_backend_role+: { [terraformName]+: { country: value } },
      },
    },
    withBasicConstraintsValidForNonCa(value):: self {
      resource+: {
        vault_pki_secret_backend_role+: { [terraformName]+: { basic_constraints_valid_for_non_ca: value } },
      },
    },
    withIssuerRef(value):: self {
      resource+: {
        vault_pki_secret_backend_role+: { [terraformName]+: { issuer_ref: value } },
      },
    },
    withEnforceHostnames(value):: self {
      resource+: {
        vault_pki_secret_backend_role+: { [terraformName]+: { enforce_hostnames: value } },
      },
    },
    withExtKeyUsageOids(value):: self {
      resource+: {
        vault_pki_secret_backend_role+: { [terraformName]+: { ext_key_usage_oids: value } },
      },
    },
    withGenerateLease(value):: self {
      resource+: {
        vault_pki_secret_backend_role+: { [terraformName]+: { generate_lease: value } },
      },
    },
    withAllowedDomains(value):: self {
      resource+: {
        vault_pki_secret_backend_role+: { [terraformName]+: { allowed_domains: value } },
      },
    },
    withMaxTtl(value):: self {
      resource+: {
        vault_pki_secret_backend_role+: { [terraformName]+: { max_ttl: value } },
      },
    },
    withNotAfter(value):: self {
      resource+: {
        vault_pki_secret_backend_role+: { [terraformName]+: { not_after: value } },
      },
    },
    withAllowedOtherSans(value):: self {
      resource+: {
        vault_pki_secret_backend_role+: { [terraformName]+: { allowed_other_sans: value } },
      },
    },
    withEmailProtectionFlag(value):: self {
      resource+: {
        vault_pki_secret_backend_role+: { [terraformName]+: { email_protection_flag: value } },
      },
    },
    withPostalCode(value):: self {
      resource+: {
        vault_pki_secret_backend_role+: { [terraformName]+: { postal_code: value } },
      },
    },
    withSignatureBits(value):: self {
      resource+: {
        vault_pki_secret_backend_role+: { [terraformName]+: { signature_bits: value } },
      },
    },
    withSerialNumberSource(value):: self {
      resource+: {
        vault_pki_secret_backend_role+: { [terraformName]+: { serial_number_source: value } },
      },
    },
    withAllowIpSans(value):: self {
      resource+: {
        vault_pki_secret_backend_role+: { [terraformName]+: { allow_ip_sans: value } },
      },
    },
    withOrganization(value):: self {
      resource+: {
        vault_pki_secret_backend_role+: { [terraformName]+: { organization: value } },
      },
    },
    withAllowedUserIds(value):: self {
      resource+: {
        vault_pki_secret_backend_role+: { [terraformName]+: { allowed_user_ids: value } },
      },
    },
    withAllowedUriSans(value):: self {
      resource+: {
        vault_pki_secret_backend_role+: { [terraformName]+: { allowed_uri_sans: value } },
      },
    },
    withAllowedUriSansTemplate(value):: self {
      resource+: {
        vault_pki_secret_backend_role+: { [terraformName]+: { allowed_uri_sans_template: value } },
      },
    },
    withAllowWildcardCertificates(value):: self {
      resource+: {
        vault_pki_secret_backend_role+: { [terraformName]+: { allow_wildcard_certificates: value } },
      },
    },
    withAllowGlobDomains(value):: self {
      resource+: {
        vault_pki_secret_backend_role+: { [terraformName]+: { allow_glob_domains: value } },
      },
    },
    withAllowBareDomains(value):: self {
      resource+: {
        vault_pki_secret_backend_role+: { [terraformName]+: { allow_bare_domains: value } },
      },
    },
    withBackend(value):: self {
      resource+: {
        vault_pki_secret_backend_role+: { [terraformName]+: { backend: value } },
      },
    },
    withClientFlag(value):: self {
      resource+: {
        vault_pki_secret_backend_role+: { [terraformName]+: { client_flag: value } },
      },
    },
    withKeyUsage(value):: self {
      resource+: {
        vault_pki_secret_backend_role+: { [terraformName]+: { key_usage: value } },
      },
    },
    withLocality(value):: self {
      resource+: {
        vault_pki_secret_backend_role+: { [terraformName]+: { locality: value } },
      },
    },
    withNoStore(value):: self {
      resource+: {
        vault_pki_secret_backend_role+: { [terraformName]+: { no_store: value } },
      },
    },
    withNoStoreMetadata(value):: self {
      resource+: {
        vault_pki_secret_backend_role+: { [terraformName]+: { no_store_metadata: value } },
      },
    },
    withOu(value):: self {
      resource+: {
        vault_pki_secret_backend_role+: { [terraformName]+: { ou: value } },
      },
    },
    withPolicyIdentifiers(value):: self {
      resource+: {
        vault_pki_secret_backend_role+: { [terraformName]+: { policy_identifiers: value } },
      },
    },
    withRequireCn(value):: self {
      resource+: {
        vault_pki_secret_backend_role+: { [terraformName]+: { require_cn: value } },
      },
    },
    withServerFlag(value):: self {
      resource+: {
        vault_pki_secret_backend_role+: { [terraformName]+: { server_flag: value } },
      },
    },
    withUseCsrSans(value):: self {
      resource+: {
        vault_pki_secret_backend_role+: { [terraformName]+: { use_csr_sans: value } },
      },
    },
    withCnValidations(value):: self {
      resource+: {
        vault_pki_secret_backend_role+: { [terraformName]+: { cn_validations: value } },
      },
    },
    withAllowLocalhost(value):: self {
      resource+: {
        vault_pki_secret_backend_role+: { [terraformName]+: { allow_localhost: value } },
      },
    },
    withUsePss(value):: self {
      resource+: {
        vault_pki_secret_backend_role+: { [terraformName]+: { use_pss: value } },
      },
    },
    withProvince(value):: self {
      resource+: {
        vault_pki_secret_backend_role+: { [terraformName]+: { province: value } },
      },
    },
    withAllowAnyName(value):: self {
      resource+: {
        vault_pki_secret_backend_role+: { [terraformName]+: { allow_any_name: value } },
      },
    },
    withNotBeforeDuration(value):: self {
      resource+: {
        vault_pki_secret_backend_role+: { [terraformName]+: { not_before_duration: value } },
      },
    },
    withTtl(value):: self {
      resource+: {
        vault_pki_secret_backend_role+: { [terraformName]+: { ttl: value } },
      },
    },
  },
}
