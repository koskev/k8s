{
  new(terraformName, backend, name):: {
    _type:: 'tf',
    resource+: {
      vault_pki_secret_backend_role+: { [terraformName]+: {
        backend: backend,
        name: name,
      } },
    },
    '#withAllowAnyName':: { 'function': { help: |||
      Flag to allow any name 
    ||| } },
    withAllowAnyName(value):: self {
      resource+: {
        vault_pki_secret_backend_role+: { [terraformName]+: { allow_any_name: value } },
      },
    },
    '#withAllowBareDomains':: { 'function': { help: |||
      Flag to allow certificates matching the actual domain. 
    ||| } },
    withAllowBareDomains(value):: self {
      resource+: {
        vault_pki_secret_backend_role+: { [terraformName]+: { allow_bare_domains: value } },
      },
    },
    '#withAllowGlobDomains':: { 'function': { help: |||
      Flag to allow names containing glob patterns. 
    ||| } },
    withAllowGlobDomains(value):: self {
      resource+: {
        vault_pki_secret_backend_role+: { [terraformName]+: { allow_glob_domains: value } },
      },
    },
    '#withAllowIpSans':: { 'function': { help: |||
      Flag to allow IP SANs 
    ||| } },
    withAllowIpSans(value):: self {
      resource+: {
        vault_pki_secret_backend_role+: { [terraformName]+: { allow_ip_sans: value } },
      },
    },
    '#withAllowLocalhost':: { 'function': { help: |||
      Flag to allow certificates for localhost. 
    ||| } },
    withAllowLocalhost(value):: self {
      resource+: {
        vault_pki_secret_backend_role+: { [terraformName]+: { allow_localhost: value } },
      },
    },
    '#withAllowSubdomains':: { 'function': { help: |||
      Flag to allow certificates matching subdomains. 
    ||| } },
    withAllowSubdomains(value):: self {
      resource+: {
        vault_pki_secret_backend_role+: { [terraformName]+: { allow_subdomains: value } },
      },
    },
    '#withAllowWildcardCertificates':: { 'function': { help: |||
      Flag to allow wildcard certificates 
    ||| } },
    withAllowWildcardCertificates(value):: self {
      resource+: {
        vault_pki_secret_backend_role+: { [terraformName]+: { allow_wildcard_certificates: value } },
      },
    },
    '#withAllowedDomains':: { 'function': { help: |||
      The domains of the role. 
    ||| } },
    withAllowedDomains(value):: self {
      resource+: {
        vault_pki_secret_backend_role+: { [terraformName]+: { allowed_domains: value } },
      },
    },
    '#withAllowedDomainsTemplate':: { 'function': { help: |||
      Flag to indicate that `allowed_domains` specifies a template expression (e.g. {{identity.entity.aliases.<mount accessor>.name}}) 
    ||| } },
    withAllowedDomainsTemplate(value):: self {
      resource+: {
        vault_pki_secret_backend_role+: { [terraformName]+: { allowed_domains_template: value } },
      },
    },
    '#withAllowedOtherSans':: { 'function': { help: |||
      Defines allowed custom SANs 
    ||| } },
    withAllowedOtherSans(value):: self {
      resource+: {
        vault_pki_secret_backend_role+: { [terraformName]+: { allowed_other_sans: value } },
      },
    },
    '#withAllowedSerialNumbers':: { 'function': { help: |||
      Defines allowed Subject serial numbers. 
    ||| } },
    withAllowedSerialNumbers(value):: self {
      resource+: {
        vault_pki_secret_backend_role+: { [terraformName]+: { allowed_serial_numbers: value } },
      },
    },
    '#withAllowedUriSans':: { 'function': { help: |||
      Defines allowed URI SANs 
    ||| } },
    withAllowedUriSans(value):: self {
      resource+: {
        vault_pki_secret_backend_role+: { [terraformName]+: { allowed_uri_sans: value } },
      },
    },
    '#withAllowedUriSansTemplate':: { 'function': { help: |||
      Flag to indicate that `allowed_uri_sans` specifies a template expression (e.g. {{identity.entity.aliases.<mount accessor>.name}}) 
    ||| } },
    withAllowedUriSansTemplate(value):: self {
      resource+: {
        vault_pki_secret_backend_role+: { [terraformName]+: { allowed_uri_sans_template: value } },
      },
    },
    '#withAllowedUserIds':: { 'function': { help: |||
      The allowed User ID's. 
    ||| } },
    withAllowedUserIds(value):: self {
      resource+: {
        vault_pki_secret_backend_role+: { [terraformName]+: { allowed_user_ids: value } },
      },
    },
    '#withBackend':: { 'function': { help: |||
      The path of the PKI secret backend the resource belongs to. 
    ||| } },
    withBackend(value):: self {
      resource+: {
        vault_pki_secret_backend_role+: { [terraformName]+: { backend: value } },
      },
    },
    '#withBasicConstraintsValidForNonCa':: { 'function': { help: |||
      Flag to mark basic constraints valid when issuing non-CA certificates. 
    ||| } },
    withBasicConstraintsValidForNonCa(value):: self {
      resource+: {
        vault_pki_secret_backend_role+: { [terraformName]+: { basic_constraints_valid_for_non_ca: value } },
      },
    },
    '#withClientFlag':: { 'function': { help: |||
      Flag to specify certificates for client use. 
    ||| } },
    withClientFlag(value):: self {
      resource+: {
        vault_pki_secret_backend_role+: { [terraformName]+: { client_flag: value } },
      },
    },
    '#withCnValidations':: { 'function': { help: |||
      Specify validations to run on the Common Name field of the certificate. 
    ||| } },
    withCnValidations(value):: self {
      resource+: {
        vault_pki_secret_backend_role+: { [terraformName]+: { cn_validations: value } },
      },
    },
    '#withCodeSigningFlag':: { 'function': { help: |||
      Flag to specify certificates for code signing use. 
    ||| } },
    withCodeSigningFlag(value):: self {
      resource+: {
        vault_pki_secret_backend_role+: { [terraformName]+: { code_signing_flag: value } },
      },
    },
    '#withCountry':: { 'function': { help: |||
      The country of generated certificates. 
    ||| } },
    withCountry(value):: self {
      resource+: {
        vault_pki_secret_backend_role+: { [terraformName]+: { country: value } },
      },
    },
    '#withEmailProtectionFlag':: { 'function': { help: |||
      Flag to specify certificates for email protection use. 
    ||| } },
    withEmailProtectionFlag(value):: self {
      resource+: {
        vault_pki_secret_backend_role+: { [terraformName]+: { email_protection_flag: value } },
      },
    },
    '#withEnforceHostnames':: { 'function': { help: |||
      Flag to allow only valid host names 
    ||| } },
    withEnforceHostnames(value):: self {
      resource+: {
        vault_pki_secret_backend_role+: { [terraformName]+: { enforce_hostnames: value } },
      },
    },
    '#withExtKeyUsage':: { 'function': { help: |||
      Specify the allowed extended key usage constraint on issued certificates. 
    ||| } },
    withExtKeyUsage(value):: self {
      resource+: {
        vault_pki_secret_backend_role+: { [terraformName]+: { ext_key_usage: value } },
      },
    },
    '#withExtKeyUsageOids':: { 'function': { help: |||
      A list of extended key usage OIDs. 
    ||| } },
    withExtKeyUsageOids(value):: self {
      resource+: {
        vault_pki_secret_backend_role+: { [terraformName]+: { ext_key_usage_oids: value } },
      },
    },
    '#withGenerateLease':: { 'function': { help: |||
      Flag to generate leases with certificates. 
    ||| } },
    withGenerateLease(value):: self {
      resource+: {
        vault_pki_secret_backend_role+: { [terraformName]+: { generate_lease: value } },
      },
    },
    withId(value):: self {
      resource+: {
        vault_pki_secret_backend_role+: { [terraformName]+: { id: value } },
      },
    },
    '#withIssuerRef':: { 'function': { help: |||
      Specifies the default issuer of this request. 
    ||| } },
    withIssuerRef(value):: self {
      resource+: {
        vault_pki_secret_backend_role+: { [terraformName]+: { issuer_ref: value } },
      },
    },
    '#withKeyBits':: { 'function': { help: |||
      The number of bits of generated keys. 
    ||| } },
    withKeyBits(value):: self {
      resource+: {
        vault_pki_secret_backend_role+: { [terraformName]+: { key_bits: value } },
      },
    },
    '#withKeyType':: { 'function': { help: |||
      The generated key type. 
    ||| } },
    withKeyType(value):: self {
      resource+: {
        vault_pki_secret_backend_role+: { [terraformName]+: { key_type: value } },
      },
    },
    '#withKeyUsage':: { 'function': { help: |||
      Specify the allowed key usage constraint on issued certificates. 
    ||| } },
    withKeyUsage(value):: self {
      resource+: {
        vault_pki_secret_backend_role+: { [terraformName]+: { key_usage: value } },
      },
    },
    '#withLocality':: { 'function': { help: |||
      The locality of generated certificates. 
    ||| } },
    withLocality(value):: self {
      resource+: {
        vault_pki_secret_backend_role+: { [terraformName]+: { locality: value } },
      },
    },
    '#withMaxTtl':: { 'function': { help: |||
      The maximum TTL. 
    ||| } },
    withMaxTtl(value):: self {
      resource+: {
        vault_pki_secret_backend_role+: { [terraformName]+: { max_ttl: value } },
      },
    },
    '#withName':: { 'function': { help: |||
      Unique name for the role. 
    ||| } },
    withName(value):: self {
      resource+: {
        vault_pki_secret_backend_role+: { [terraformName]+: { name: value } },
      },
    },
    '#withNamespace':: { 'function': { help: |||
      Target namespace. (requires Enterprise) 
    ||| } },
    withNamespace(value):: self {
      resource+: {
        vault_pki_secret_backend_role+: { [terraformName]+: { namespace: value } },
      },
    },
    '#withNoStore':: { 'function': { help: |||
      Flag to not store certificates in the storage backend. 
    ||| } },
    withNoStore(value):: self {
      resource+: {
        vault_pki_secret_backend_role+: { [terraformName]+: { no_store: value } },
      },
    },
    '#withNoStoreMetadata':: { 'function': { help: |||
      Allows metadata to be stored keyed on the certificate's serial number. The field is independent of no_store, allowing metadata storage regardless of whether certificates are stored. If true, metadata is not stored and an error is returned if the metadata field is specified on issuance APIs 
    ||| } },
    withNoStoreMetadata(value):: self {
      resource+: {
        vault_pki_secret_backend_role+: { [terraformName]+: { no_store_metadata: value } },
      },
    },
    '#withNotAfter':: { 'function': { help: |||
      Set the Not After field of the certificate with specified date value. The value format should be given in UTC format YYYY-MM-ddTHH:MM:SSZ. Supports the Y10K end date for IEEE 802.1AR-2018 standard devices, 9999-12-31T23:59:59Z. 
    ||| } },
    withNotAfter(value):: self {
      resource+: {
        vault_pki_secret_backend_role+: { [terraformName]+: { not_after: value } },
      },
    },
    '#withNotBeforeDuration':: { 'function': { help: |||
      Specifies the duration by which to backdate the NotBefore property. 
    ||| } },
    withNotBeforeDuration(value):: self {
      resource+: {
        vault_pki_secret_backend_role+: { [terraformName]+: { not_before_duration: value } },
      },
    },
    '#withOrganization':: { 'function': { help: |||
      The organization of generated certificates. 
    ||| } },
    withOrganization(value):: self {
      resource+: {
        vault_pki_secret_backend_role+: { [terraformName]+: { organization: value } },
      },
    },
    '#withOu':: { 'function': { help: |||
      The organization unit of generated certificates. 
    ||| } },
    withOu(value):: self {
      resource+: {
        vault_pki_secret_backend_role+: { [terraformName]+: { ou: value } },
      },
    },
    '#withPolicyIdentifiers':: { 'function': { help: |||
      Specify the list of allowed policies OIDs. 
    ||| } },
    withPolicyIdentifiers(value):: self {
      resource+: {
        vault_pki_secret_backend_role+: { [terraformName]+: { policy_identifiers: value } },
      },
    },
    '#withPostalCode':: { 'function': { help: |||
      The postal code of generated certificates. 
    ||| } },
    withPostalCode(value):: self {
      resource+: {
        vault_pki_secret_backend_role+: { [terraformName]+: { postal_code: value } },
      },
    },
    '#withProvince':: { 'function': { help: |||
      The province of generated certificates. 
    ||| } },
    withProvince(value):: self {
      resource+: {
        vault_pki_secret_backend_role+: { [terraformName]+: { province: value } },
      },
    },
    '#withRequireCn':: { 'function': { help: |||
      Flag to force CN usage. 
    ||| } },
    withRequireCn(value):: self {
      resource+: {
        vault_pki_secret_backend_role+: { [terraformName]+: { require_cn: value } },
      },
    },
    '#withSerialNumberSource':: { 'function': { help: |||
      Specifies the source of the subject serial number. Valid values are json-csr (default) or json. When set to json-csr, the subject serial number is taken from the serial_number parameter and falls back to the serial number in the CSR. When set to json, the subject serial number is taken from the serial_number parameter but will ignore any value in the CSR. For backwards compatibility an empty value for this field will default to the json-csr behavior. 
    ||| } },
    withSerialNumberSource(value):: self {
      resource+: {
        vault_pki_secret_backend_role+: { [terraformName]+: { serial_number_source: value } },
      },
    },
    '#withServerFlag':: { 'function': { help: |||
      Flag to specify certificates for server use. 
    ||| } },
    withServerFlag(value):: self {
      resource+: {
        vault_pki_secret_backend_role+: { [terraformName]+: { server_flag: value } },
      },
    },
    '#withSignatureBits':: { 'function': { help: |||
      The number of bits to use in the signature algorithm. 
    ||| } },
    withSignatureBits(value):: self {
      resource+: {
        vault_pki_secret_backend_role+: { [terraformName]+: { signature_bits: value } },
      },
    },
    '#withStreetAddress':: { 'function': { help: |||
      The street address of generated certificates. 
    ||| } },
    withStreetAddress(value):: self {
      resource+: {
        vault_pki_secret_backend_role+: { [terraformName]+: { street_address: value } },
      },
    },
    '#withTtl':: { 'function': { help: |||
      The TTL. 
    ||| } },
    withTtl(value):: self {
      resource+: {
        vault_pki_secret_backend_role+: { [terraformName]+: { ttl: value } },
      },
    },
    '#withUseCsrCommonName':: { 'function': { help: |||
      Flag to use the CN in the CSR. 
    ||| } },
    withUseCsrCommonName(value):: self {
      resource+: {
        vault_pki_secret_backend_role+: { [terraformName]+: { use_csr_common_name: value } },
      },
    },
    '#withUseCsrSans':: { 'function': { help: |||
      Flag to use the SANs in the CSR. 
    ||| } },
    withUseCsrSans(value):: self {
      resource+: {
        vault_pki_secret_backend_role+: { [terraformName]+: { use_csr_sans: value } },
      },
    },
    '#withUsePss':: { 'function': { help: |||
      Specifies whether or not to use PSS signatures over PKCS#1v1.5 signatures when a RSA-type issuer is used. Ignored for ECDSA/Ed25519 issuers. 
    ||| } },
    withUsePss(value):: self {
      resource+: {
        vault_pki_secret_backend_role+: { [terraformName]+: { use_pss: value } },
      },
    },
  },
}
