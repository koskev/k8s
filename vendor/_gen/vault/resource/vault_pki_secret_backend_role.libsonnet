{
  local outerSelf = self,
  new(terraformName, backend, name):: self.functions(terraformName) + {
    _type:: 'tf',
    ref():: outerSelf.ref(terraformName),
    resource+: {
      vault_pki_secret_backend_role+: { [terraformName]+: {
        backend: backend,
        name: name,
      } },
    },
  }
  ,
  functions(terraformName):: {
    withForEach(value):: self { resource+: {
      vault_pki_secret_backend_role+: { [terraformName]+: { for_each: value } },
    } },
    withDependsOn(value):: self { resource+: {
      vault_pki_secret_backend_role+: { [terraformName]+: { depends_on: value } },
    } },
    withCount(value):: self { resource+: {
      vault_pki_secret_backend_role+: { [terraformName]+: { count: value } },
    } },
    withLifecycle(value):: self { resource+: {
      vault_pki_secret_backend_role+: { [terraformName]+: { lifecycle: value } },
    } },
    withProvider(value):: self { resource+: {
      vault_pki_secret_backend_role+: { [terraformName]+: { provider: value } },
    } },
    withProviders(value):: self { resource+: {
      vault_pki_secret_backend_role+: { [terraformName]+: { providers: value } },
    } },
    addCustomData(name, value):: self { resource+: {
      vault_pki_secret_backend_role+: { [terraformName]+: { [name]: value } },
    } },
    '#withAllowAnyName':: { 'function': {
      help:
        |||
          Flag to allow any name
        |||,
    } },
    withAllowAnyName(value):: self { resource+: {
      vault_pki_secret_backend_role+: { [terraformName]+: { allow_any_name: value } },
    } },
    '#withAllowBareDomains':: { 'function': {
      help:
        |||
          Flag to allow certificates matching the actual domain.
        |||,
    } },
    withAllowBareDomains(value):: self { resource+: {
      vault_pki_secret_backend_role+: { [terraformName]+: { allow_bare_domains: value } },
    } },
    '#withAllowGlobDomains':: { 'function': {
      help:
        |||
          Flag to allow names containing glob patterns.
        |||,
    } },
    withAllowGlobDomains(value):: self { resource+: {
      vault_pki_secret_backend_role+: { [terraformName]+: { allow_glob_domains: value } },
    } },
    '#withAllowIpSans':: { 'function': {
      help:
        |||
          Flag to allow IP SANs
        |||,
    } },
    withAllowIpSans(value):: self { resource+: {
      vault_pki_secret_backend_role+: { [terraformName]+: { allow_ip_sans: value } },
    } },
    '#withAllowLocalhost':: { 'function': {
      help:
        |||
          Flag to allow certificates for localhost.
        |||,
    } },
    withAllowLocalhost(value):: self { resource+: {
      vault_pki_secret_backend_role+: { [terraformName]+: { allow_localhost: value } },
    } },
    '#withAllowSubdomains':: { 'function': {
      help:
        |||
          Flag to allow certificates matching subdomains.
        |||,
    } },
    withAllowSubdomains(value):: self { resource+: {
      vault_pki_secret_backend_role+: { [terraformName]+: { allow_subdomains: value } },
    } },
    '#withAllowWildcardCertificates':: { 'function': {
      help:
        |||
          Flag to allow wildcard certificates
        |||,
    } },
    withAllowWildcardCertificates(value):: self { resource+: {
      vault_pki_secret_backend_role+: { [terraformName]+: { allow_wildcard_certificates: value } },
    } },
    '#withAllowedDomains':: { 'function': {
      help:
        |||
          The domains of the role.
        |||,
    } },
    withAllowedDomains(value):: self { resource+: {
      vault_pki_secret_backend_role+: { [terraformName]+: { allowed_domains: value } },
    } },
    '#withAllowedDomainsTemplate':: { 'function': {
      help:
        |||
          Flag to indicate that `allowed_domains` specifies a template expression (e.g. {{identity.entity.aliases.<mount accessor>.name}})
        |||,
    } },
    withAllowedDomainsTemplate(value):: self { resource+: {
      vault_pki_secret_backend_role+: { [terraformName]+: { allowed_domains_template: value } },
    } },
    '#withAllowedOtherSans':: { 'function': {
      help:
        |||
          Defines allowed custom SANs
        |||,
    } },
    withAllowedOtherSans(value):: self { resource+: {
      vault_pki_secret_backend_role+: { [terraformName]+: { allowed_other_sans: value } },
    } },
    '#withAllowedSerialNumbers':: { 'function': {
      help:
        |||
          Defines allowed Subject serial numbers.
        |||,
    } },
    withAllowedSerialNumbers(value):: self { resource+: {
      vault_pki_secret_backend_role+: { [terraformName]+: { allowed_serial_numbers: value } },
    } },
    '#withAllowedUriSans':: { 'function': {
      help:
        |||
          Defines allowed URI SANs
        |||,
    } },
    withAllowedUriSans(value):: self { resource+: {
      vault_pki_secret_backend_role+: { [terraformName]+: { allowed_uri_sans: value } },
    } },
    '#withAllowedUriSansTemplate':: { 'function': {
      help:
        |||
          Flag to indicate that `allowed_uri_sans` specifies a template expression (e.g. {{identity.entity.aliases.<mount accessor>.name}})
        |||,
    } },
    withAllowedUriSansTemplate(value):: self { resource+: {
      vault_pki_secret_backend_role+: { [terraformName]+: { allowed_uri_sans_template: value } },
    } },
    '#withAllowedUserIds':: { 'function': {
      help:
        |||
          The allowed User ID's.
        |||,
    } },
    withAllowedUserIds(value):: self { resource+: {
      vault_pki_secret_backend_role+: { [terraformName]+: { allowed_user_ids: value } },
    } },
    '#withBackend':: { 'function': {
      help:
        |||
          The path of the PKI secret backend the resource belongs to.
        |||,
    } },
    withBackend(value):: self { resource+: {
      vault_pki_secret_backend_role+: { [terraformName]+: { backend: value } },
    } },
    '#withBasicConstraintsValidForNonCa':: { 'function': {
      help:
        |||
          Flag to mark basic constraints valid when issuing non-CA certificates.
        |||,
    } },
    withBasicConstraintsValidForNonCa(value):: self { resource+: {
      vault_pki_secret_backend_role+: { [terraformName]+: { basic_constraints_valid_for_non_ca: value } },
    } },
    '#withClientFlag':: { 'function': {
      help:
        |||
          Flag to specify certificates for client use.
        |||,
    } },
    withClientFlag(value):: self { resource+: {
      vault_pki_secret_backend_role+: { [terraformName]+: { client_flag: value } },
    } },
    '#withCnValidations':: { 'function': {
      help:
        |||
          Specify validations to run on the Common Name field of the certificate.
        |||,
    } },
    withCnValidations(value):: self { resource+: {
      vault_pki_secret_backend_role+: { [terraformName]+: { cn_validations: value } },
    } },
    '#withCodeSigningFlag':: { 'function': {
      help:
        |||
          Flag to specify certificates for code signing use.
        |||,
    } },
    withCodeSigningFlag(value):: self { resource+: {
      vault_pki_secret_backend_role+: { [terraformName]+: { code_signing_flag: value } },
    } },
    '#withCountry':: { 'function': {
      help:
        |||
          The country of generated certificates.
        |||,
    } },
    withCountry(value):: self { resource+: {
      vault_pki_secret_backend_role+: { [terraformName]+: { country: value } },
    } },
    '#withEmailProtectionFlag':: { 'function': {
      help:
        |||
          Flag to specify certificates for email protection use.
        |||,
    } },
    withEmailProtectionFlag(value):: self { resource+: {
      vault_pki_secret_backend_role+: { [terraformName]+: { email_protection_flag: value } },
    } },
    '#withEnforceHostnames':: { 'function': {
      help:
        |||
          Flag to allow only valid host names
        |||,
    } },
    withEnforceHostnames(value):: self { resource+: {
      vault_pki_secret_backend_role+: { [terraformName]+: { enforce_hostnames: value } },
    } },
    '#withExtKeyUsage':: { 'function': {
      help:
        |||
          Specify the allowed extended key usage constraint on issued certificates.
        |||,
    } },
    withExtKeyUsage(value):: self { resource+: {
      vault_pki_secret_backend_role+: { [terraformName]+: { ext_key_usage: value } },
    } },
    '#withExtKeyUsageOids':: { 'function': {
      help:
        |||
          A list of extended key usage OIDs.
        |||,
    } },
    withExtKeyUsageOids(value):: self { resource+: {
      vault_pki_secret_backend_role+: { [terraformName]+: { ext_key_usage_oids: value } },
    } },
    '#withGenerateLease':: { 'function': {
      help:
        |||
          Flag to generate leases with certificates.
        |||,
    } },
    withGenerateLease(value):: self { resource+: {
      vault_pki_secret_backend_role+: { [terraformName]+: { generate_lease: value } },
    } },
    withId(value):: self { resource+: {
      vault_pki_secret_backend_role+: { [terraformName]+: { id: value } },
    } },
    '#withIssuerRef':: { 'function': {
      help:
        |||
          Specifies the default issuer of this request.
        |||,
    } },
    withIssuerRef(value):: self { resource+: {
      vault_pki_secret_backend_role+: { [terraformName]+: { issuer_ref: value } },
    } },
    '#withKeyBits':: { 'function': {
      help:
        |||
          The number of bits of generated keys.
        |||,
    } },
    withKeyBits(value):: self { resource+: {
      vault_pki_secret_backend_role+: { [terraformName]+: { key_bits: value } },
    } },
    '#withKeyType':: { 'function': {
      help:
        |||
          The generated key type.
        |||,
    } },
    withKeyType(value):: self { resource+: {
      vault_pki_secret_backend_role+: { [terraformName]+: { key_type: value } },
    } },
    '#withKeyUsage':: { 'function': {
      help:
        |||
          Specify the allowed key usage constraint on issued certificates.
        |||,
    } },
    withKeyUsage(value):: self { resource+: {
      vault_pki_secret_backend_role+: { [terraformName]+: { key_usage: value } },
    } },
    '#withLocality':: { 'function': {
      help:
        |||
          The locality of generated certificates.
        |||,
    } },
    withLocality(value):: self { resource+: {
      vault_pki_secret_backend_role+: { [terraformName]+: { locality: value } },
    } },
    '#withMaxTtl':: { 'function': {
      help:
        |||
          The maximum TTL.
        |||,
    } },
    withMaxTtl(value):: self { resource+: {
      vault_pki_secret_backend_role+: { [terraformName]+: { max_ttl: value } },
    } },
    '#withName':: { 'function': {
      help:
        |||
          Unique name for the role.
        |||,
    } },
    withName(value):: self { resource+: {
      vault_pki_secret_backend_role+: { [terraformName]+: { name: value } },
    } },
    '#withNamespace':: { 'function': {
      help:
        |||
          Target namespace. (requires Enterprise)
        |||,
    } },
    withNamespace(value):: self { resource+: {
      vault_pki_secret_backend_role+: { [terraformName]+: { namespace: value } },
    } },
    '#withNoStore':: { 'function': {
      help:
        |||
          Flag to not store certificates in the storage backend.
        |||,
    } },
    withNoStore(value):: self { resource+: {
      vault_pki_secret_backend_role+: { [terraformName]+: { no_store: value } },
    } },
    '#withNoStoreMetadata':: { 'function': {
      help:
        |||
          Allows metadata to be stored keyed on the certificate's serial number. The field is independent of no_store, allowing metadata storage regardless of whether certificates are stored. If true, metadata is not stored and an error is returned if the metadata field is specified on issuance APIs
        |||,
    } },
    withNoStoreMetadata(value):: self { resource+: {
      vault_pki_secret_backend_role+: { [terraformName]+: { no_store_metadata: value } },
    } },
    '#withNotAfter':: { 'function': {
      help:
        |||
          Set the Not After field of the certificate with specified date value. The value format should be given in UTC format YYYY-MM-ddTHH:MM:SSZ. Supports the Y10K end date for IEEE 802.1AR-2018 standard devices, 9999-12-31T23:59:59Z.
        |||,
    } },
    withNotAfter(value):: self { resource+: {
      vault_pki_secret_backend_role+: { [terraformName]+: { not_after: value } },
    } },
    '#withNotBeforeDuration':: { 'function': {
      help:
        |||
          Specifies the duration by which to backdate the NotBefore property.
        |||,
    } },
    withNotBeforeDuration(value):: self { resource+: {
      vault_pki_secret_backend_role+: { [terraformName]+: { not_before_duration: value } },
    } },
    '#withOrganization':: { 'function': {
      help:
        |||
          The organization of generated certificates.
        |||,
    } },
    withOrganization(value):: self { resource+: {
      vault_pki_secret_backend_role+: { [terraformName]+: { organization: value } },
    } },
    '#withOu':: { 'function': {
      help:
        |||
          The organization unit of generated certificates.
        |||,
    } },
    withOu(value):: self { resource+: {
      vault_pki_secret_backend_role+: { [terraformName]+: { ou: value } },
    } },
    '#withPolicyIdentifiers':: { 'function': {
      help:
        |||
          Specify the list of allowed policies OIDs.
        |||,
    } },
    withPolicyIdentifiers(value):: self { resource+: {
      vault_pki_secret_backend_role+: { [terraformName]+: { policy_identifiers: value } },
    } },
    '#withPostalCode':: { 'function': {
      help:
        |||
          The postal code of generated certificates.
        |||,
    } },
    withPostalCode(value):: self { resource+: {
      vault_pki_secret_backend_role+: { [terraformName]+: { postal_code: value } },
    } },
    '#withProvince':: { 'function': {
      help:
        |||
          The province of generated certificates.
        |||,
    } },
    withProvince(value):: self { resource+: {
      vault_pki_secret_backend_role+: { [terraformName]+: { province: value } },
    } },
    '#withRequireCn':: { 'function': {
      help:
        |||
          Flag to force CN usage.
        |||,
    } },
    withRequireCn(value):: self { resource+: {
      vault_pki_secret_backend_role+: { [terraformName]+: { require_cn: value } },
    } },
    '#withSerialNumberSource':: { 'function': {
      help:
        |||
          Specifies the source of the subject serial number. Valid values are json-csr (default) or json. When set to json-csr, the subject serial number is taken from the serial_number parameter and falls back to the serial number in the CSR. When set to json, the subject serial number is taken from the serial_number parameter but will ignore any value in the CSR. For backwards compatibility an empty value for this field will default to the json-csr behavior.
        |||,
    } },
    withSerialNumberSource(value):: self { resource+: {
      vault_pki_secret_backend_role+: { [terraformName]+: { serial_number_source: value } },
    } },
    '#withServerFlag':: { 'function': {
      help:
        |||
          Flag to specify certificates for server use.
        |||,
    } },
    withServerFlag(value):: self { resource+: {
      vault_pki_secret_backend_role+: { [terraformName]+: { server_flag: value } },
    } },
    '#withSignatureBits':: { 'function': {
      help:
        |||
          The number of bits to use in the signature algorithm.
        |||,
    } },
    withSignatureBits(value):: self { resource+: {
      vault_pki_secret_backend_role+: { [terraformName]+: { signature_bits: value } },
    } },
    '#withStreetAddress':: { 'function': {
      help:
        |||
          The street address of generated certificates.
        |||,
    } },
    withStreetAddress(value):: self { resource+: {
      vault_pki_secret_backend_role+: { [terraformName]+: { street_address: value } },
    } },
    '#withTtl':: { 'function': {
      help:
        |||
          The TTL.
        |||,
    } },
    withTtl(value):: self { resource+: {
      vault_pki_secret_backend_role+: { [terraformName]+: { ttl: value } },
    } },
    '#withUseCsrCommonName':: { 'function': {
      help:
        |||
          Flag to use the CN in the CSR.
        |||,
    } },
    withUseCsrCommonName(value):: self { resource+: {
      vault_pki_secret_backend_role+: { [terraformName]+: { use_csr_common_name: value } },
    } },
    '#withUseCsrSans':: { 'function': {
      help:
        |||
          Flag to use the SANs in the CSR.
        |||,
    } },
    withUseCsrSans(value):: self { resource+: {
      vault_pki_secret_backend_role+: { [terraformName]+: { use_csr_sans: value } },
    } },
    '#withUsePss':: { 'function': {
      help:
        |||
          Specifies whether or not to use PSS signatures over PKCS#1v1.5 signatures when a RSA-type issuer is used. Ignored for ECDSA/Ed25519 issuers.
        |||,
    } },
    withUsePss(value):: self { resource+: {
      vault_pki_secret_backend_role+: { [terraformName]+: { use_pss: value } },
    } },

  }
  ,
  ref(terraformName):: {
    local refSelf = self,
    plain(suffix=''):: '${ vault_pki_secret_backend_role.%s%s }' % [terraformName, suffix],
    fields:: {
      '#allow_any_name':: { 'function': {
        help:
          |||
            Flag to allow any name
          |||,
      } },
      allow_any_name(suffix=''):: refSelf.plain('.allow_any_name%s' % suffix),
      '#allow_bare_domains':: { 'function': {
        help:
          |||
            Flag to allow certificates matching the actual domain.
          |||,
      } },
      allow_bare_domains(suffix=''):: refSelf.plain('.allow_bare_domains%s' % suffix),
      '#allow_glob_domains':: { 'function': {
        help:
          |||
            Flag to allow names containing glob patterns.
          |||,
      } },
      allow_glob_domains(suffix=''):: refSelf.plain('.allow_glob_domains%s' % suffix),
      '#allow_ip_sans':: { 'function': {
        help:
          |||
            Flag to allow IP SANs
          |||,
      } },
      allow_ip_sans(suffix=''):: refSelf.plain('.allow_ip_sans%s' % suffix),
      '#allow_localhost':: { 'function': {
        help:
          |||
            Flag to allow certificates for localhost.
          |||,
      } },
      allow_localhost(suffix=''):: refSelf.plain('.allow_localhost%s' % suffix),
      '#allow_subdomains':: { 'function': {
        help:
          |||
            Flag to allow certificates matching subdomains.
          |||,
      } },
      allow_subdomains(suffix=''):: refSelf.plain('.allow_subdomains%s' % suffix),
      '#allow_wildcard_certificates':: { 'function': {
        help:
          |||
            Flag to allow wildcard certificates
          |||,
      } },
      allow_wildcard_certificates(suffix=''):: refSelf.plain('.allow_wildcard_certificates%s' % suffix),
      '#allowed_domains':: { 'function': {
        help:
          |||
            The domains of the role.
          |||,
      } },
      allowed_domains(suffix=''):: refSelf.plain('.allowed_domains%s' % suffix),
      '#allowed_domains_template':: { 'function': {
        help:
          |||
            Flag to indicate that `allowed_domains` specifies a template expression (e.g. {{identity.entity.aliases.<mount accessor>.name}})
          |||,
      } },
      allowed_domains_template(suffix=''):: refSelf.plain('.allowed_domains_template%s' % suffix),
      '#allowed_other_sans':: { 'function': {
        help:
          |||
            Defines allowed custom SANs
          |||,
      } },
      allowed_other_sans(suffix=''):: refSelf.plain('.allowed_other_sans%s' % suffix),
      '#allowed_serial_numbers':: { 'function': {
        help:
          |||
            Defines allowed Subject serial numbers.
          |||,
      } },
      allowed_serial_numbers(suffix=''):: refSelf.plain('.allowed_serial_numbers%s' % suffix),
      '#allowed_uri_sans':: { 'function': {
        help:
          |||
            Defines allowed URI SANs
          |||,
      } },
      allowed_uri_sans(suffix=''):: refSelf.plain('.allowed_uri_sans%s' % suffix),
      '#allowed_uri_sans_template':: { 'function': {
        help:
          |||
            Flag to indicate that `allowed_uri_sans` specifies a template expression (e.g. {{identity.entity.aliases.<mount accessor>.name}})
          |||,
      } },
      allowed_uri_sans_template(suffix=''):: refSelf.plain('.allowed_uri_sans_template%s' % suffix),
      '#allowed_user_ids':: { 'function': {
        help:
          |||
            The allowed User ID's.
          |||,
      } },
      allowed_user_ids(suffix=''):: refSelf.plain('.allowed_user_ids%s' % suffix),
      '#backend':: { 'function': {
        help:
          |||
            The path of the PKI secret backend the resource belongs to.
          |||,
      } },
      backend(suffix=''):: refSelf.plain('.backend%s' % suffix),
      '#basic_constraints_valid_for_non_ca':: { 'function': {
        help:
          |||
            Flag to mark basic constraints valid when issuing non-CA certificates.
          |||,
      } },
      basic_constraints_valid_for_non_ca(suffix=''):: refSelf.plain('.basic_constraints_valid_for_non_ca%s' % suffix),
      '#client_flag':: { 'function': {
        help:
          |||
            Flag to specify certificates for client use.
          |||,
      } },
      client_flag(suffix=''):: refSelf.plain('.client_flag%s' % suffix),
      '#cn_validations':: { 'function': {
        help:
          |||
            Specify validations to run on the Common Name field of the certificate.
          |||,
      } },
      cn_validations(suffix=''):: refSelf.plain('.cn_validations%s' % suffix),
      '#code_signing_flag':: { 'function': {
        help:
          |||
            Flag to specify certificates for code signing use.
          |||,
      } },
      code_signing_flag(suffix=''):: refSelf.plain('.code_signing_flag%s' % suffix),
      '#country':: { 'function': {
        help:
          |||
            The country of generated certificates.
          |||,
      } },
      country(suffix=''):: refSelf.plain('.country%s' % suffix),
      '#email_protection_flag':: { 'function': {
        help:
          |||
            Flag to specify certificates for email protection use.
          |||,
      } },
      email_protection_flag(suffix=''):: refSelf.plain('.email_protection_flag%s' % suffix),
      '#enforce_hostnames':: { 'function': {
        help:
          |||
            Flag to allow only valid host names
          |||,
      } },
      enforce_hostnames(suffix=''):: refSelf.plain('.enforce_hostnames%s' % suffix),
      '#ext_key_usage':: { 'function': {
        help:
          |||
            Specify the allowed extended key usage constraint on issued certificates.
          |||,
      } },
      ext_key_usage(suffix=''):: refSelf.plain('.ext_key_usage%s' % suffix),
      '#ext_key_usage_oids':: { 'function': {
        help:
          |||
            A list of extended key usage OIDs.
          |||,
      } },
      ext_key_usage_oids(suffix=''):: refSelf.plain('.ext_key_usage_oids%s' % suffix),
      '#generate_lease':: { 'function': {
        help:
          |||
            Flag to generate leases with certificates.
          |||,
      } },
      generate_lease(suffix=''):: refSelf.plain('.generate_lease%s' % suffix),
      id(suffix=''):: refSelf.plain('.id%s' % suffix),
      '#issuer_ref':: { 'function': {
        help:
          |||
            Specifies the default issuer of this request.
          |||,
      } },
      issuer_ref(suffix=''):: refSelf.plain('.issuer_ref%s' % suffix),
      '#key_bits':: { 'function': {
        help:
          |||
            The number of bits of generated keys.
          |||,
      } },
      key_bits(suffix=''):: refSelf.plain('.key_bits%s' % suffix),
      '#key_type':: { 'function': {
        help:
          |||
            The generated key type.
          |||,
      } },
      key_type(suffix=''):: refSelf.plain('.key_type%s' % suffix),
      '#key_usage':: { 'function': {
        help:
          |||
            Specify the allowed key usage constraint on issued certificates.
          |||,
      } },
      key_usage(suffix=''):: refSelf.plain('.key_usage%s' % suffix),
      '#locality':: { 'function': {
        help:
          |||
            The locality of generated certificates.
          |||,
      } },
      locality(suffix=''):: refSelf.plain('.locality%s' % suffix),
      '#max_ttl':: { 'function': {
        help:
          |||
            The maximum TTL.
          |||,
      } },
      max_ttl(suffix=''):: refSelf.plain('.max_ttl%s' % suffix),
      '#name':: { 'function': {
        help:
          |||
            Unique name for the role.
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
      '#no_store':: { 'function': {
        help:
          |||
            Flag to not store certificates in the storage backend.
          |||,
      } },
      no_store(suffix=''):: refSelf.plain('.no_store%s' % suffix),
      '#no_store_metadata':: { 'function': {
        help:
          |||
            Allows metadata to be stored keyed on the certificate's serial number. The field is independent of no_store, allowing metadata storage regardless of whether certificates are stored. If true, metadata is not stored and an error is returned if the metadata field is specified on issuance APIs
          |||,
      } },
      no_store_metadata(suffix=''):: refSelf.plain('.no_store_metadata%s' % suffix),
      '#not_after':: { 'function': {
        help:
          |||
            Set the Not After field of the certificate with specified date value. The value format should be given in UTC format YYYY-MM-ddTHH:MM:SSZ. Supports the Y10K end date for IEEE 802.1AR-2018 standard devices, 9999-12-31T23:59:59Z.
          |||,
      } },
      not_after(suffix=''):: refSelf.plain('.not_after%s' % suffix),
      '#not_before_duration':: { 'function': {
        help:
          |||
            Specifies the duration by which to backdate the NotBefore property.
          |||,
      } },
      not_before_duration(suffix=''):: refSelf.plain('.not_before_duration%s' % suffix),
      '#organization':: { 'function': {
        help:
          |||
            The organization of generated certificates.
          |||,
      } },
      organization(suffix=''):: refSelf.plain('.organization%s' % suffix),
      '#ou':: { 'function': {
        help:
          |||
            The organization unit of generated certificates.
          |||,
      } },
      ou(suffix=''):: refSelf.plain('.ou%s' % suffix),
      '#policy_identifiers':: { 'function': {
        help:
          |||
            Specify the list of allowed policies OIDs.
          |||,
      } },
      policy_identifiers(suffix=''):: refSelf.plain('.policy_identifiers%s' % suffix),
      '#postal_code':: { 'function': {
        help:
          |||
            The postal code of generated certificates.
          |||,
      } },
      postal_code(suffix=''):: refSelf.plain('.postal_code%s' % suffix),
      '#province':: { 'function': {
        help:
          |||
            The province of generated certificates.
          |||,
      } },
      province(suffix=''):: refSelf.plain('.province%s' % suffix),
      '#require_cn':: { 'function': {
        help:
          |||
            Flag to force CN usage.
          |||,
      } },
      require_cn(suffix=''):: refSelf.plain('.require_cn%s' % suffix),
      '#serial_number_source':: { 'function': {
        help:
          |||
            Specifies the source of the subject serial number. Valid values are json-csr (default) or json. When set to json-csr, the subject serial number is taken from the serial_number parameter and falls back to the serial number in the CSR. When set to json, the subject serial number is taken from the serial_number parameter but will ignore any value in the CSR. For backwards compatibility an empty value for this field will default to the json-csr behavior.
          |||,
      } },
      serial_number_source(suffix=''):: refSelf.plain('.serial_number_source%s' % suffix),
      '#server_flag':: { 'function': {
        help:
          |||
            Flag to specify certificates for server use.
          |||,
      } },
      server_flag(suffix=''):: refSelf.plain('.server_flag%s' % suffix),
      '#signature_bits':: { 'function': {
        help:
          |||
            The number of bits to use in the signature algorithm.
          |||,
      } },
      signature_bits(suffix=''):: refSelf.plain('.signature_bits%s' % suffix),
      '#street_address':: { 'function': {
        help:
          |||
            The street address of generated certificates.
          |||,
      } },
      street_address(suffix=''):: refSelf.plain('.street_address%s' % suffix),
      '#ttl':: { 'function': {
        help:
          |||
            The TTL.
          |||,
      } },
      ttl(suffix=''):: refSelf.plain('.ttl%s' % suffix),
      '#use_csr_common_name':: { 'function': {
        help:
          |||
            Flag to use the CN in the CSR.
          |||,
      } },
      use_csr_common_name(suffix=''):: refSelf.plain('.use_csr_common_name%s' % suffix),
      '#use_csr_sans':: { 'function': {
        help:
          |||
            Flag to use the SANs in the CSR.
          |||,
      } },
      use_csr_sans(suffix=''):: refSelf.plain('.use_csr_sans%s' % suffix),
      '#use_pss':: { 'function': {
        help:
          |||
            Specifies whether or not to use PSS signatures over PKCS#1v1.5 signatures when a RSA-type issuer is used. Ignored for ECDSA/Ed25519 issuers.
          |||,
      } },
      use_pss(suffix=''):: refSelf.plain('.use_pss%s' % suffix),

    },

  },

}
