{
  local outerSelf = self,
  new(terraformName, backend, common_name, csr):: self.functions(terraformName) {
    ref():: outerSelf.ref(terraformName),
    _type:: 'tf',
    resource+: {
      vault_pki_secret_backend_root_sign_intermediate+: {
        [terraformName]+: {
          backend: backend,
          common_name: common_name,
          csr: csr,
        },
      },
    },
  },
  functions(terraformName):: {
    withForEach(value):: self {
      resource+: {
        vault_pki_secret_backend_root_sign_intermediate+: { [terraformName]+: { for_each: value } },
      },
    },
    withDependsOn(value):: self {
      resource+: {
        vault_pki_secret_backend_root_sign_intermediate+: { [terraformName]+: { depends_on: value } },
      },
    },
    withCount(value):: self {
      resource+: {
        vault_pki_secret_backend_root_sign_intermediate+: { [terraformName]+: { count: value } },
      },
    },
    withLifecycle(value):: self {
      resource+: {
        vault_pki_secret_backend_root_sign_intermediate+: { [terraformName]+: { lifecycle: value } },
      },
    },
    withProvider(value):: self {
      resource+: {
        vault_pki_secret_backend_root_sign_intermediate+: { [terraformName]+: { provider: value } },
      },
    },
    withProviders(value):: self {
      resource+: {
        vault_pki_secret_backend_root_sign_intermediate+: { [terraformName]+: { providers: value } },
      },
    },
    '#alt_names':: { 'function': { help: |||
      List of alternative names.
    ||| } },
    withAltNames(value):: self {
      resource+: {
        vault_pki_secret_backend_root_sign_intermediate+: { [terraformName]+: { alt_names: value } },
      },
    },
    '#backend':: { 'function': { help: |||
      The PKI secret backend the resource belongs to.
    ||| } },
    withBackend(value):: self {
      resource+: {
        vault_pki_secret_backend_root_sign_intermediate+: { [terraformName]+: { backend: value } },
      },
    },
    '#common_name':: { 'function': { help: |||
      CN of intermediate to create.
    ||| } },
    withCommonName(value):: self {
      resource+: {
        vault_pki_secret_backend_root_sign_intermediate+: { [terraformName]+: { common_name: value } },
      },
    },
    '#country':: { 'function': { help: |||
      The country.
    ||| } },
    withCountry(value):: self {
      resource+: {
        vault_pki_secret_backend_root_sign_intermediate+: { [terraformName]+: { country: value } },
      },
    },
    '#csr':: { 'function': { help: |||
      The CSR.
    ||| } },
    withCsr(value):: self {
      resource+: {
        vault_pki_secret_backend_root_sign_intermediate+: { [terraformName]+: { csr: value } },
      },
    },
    '#exclude_cn_from_sans':: { 'function': { help: |||
      Flag to exclude CN from SANs.
    ||| } },
    withExcludeCnFromSans(value):: self {
      resource+: {
        vault_pki_secret_backend_root_sign_intermediate+: { [terraformName]+: { exclude_cn_from_sans: value } },
      },
    },
    '#excluded_dns_domains':: { 'function': { help: |||
      List of domains for which certificates are not allowed to be issued.
    ||| } },
    withExcludedDnsDomains(value):: self {
      resource+: {
        vault_pki_secret_backend_root_sign_intermediate+: { [terraformName]+: { excluded_dns_domains: value } },
      },
    },
    '#excluded_email_addresses':: { 'function': { help: |||
      List of email addresses for which certificates are not allowed to be issued.
    ||| } },
    withExcludedEmailAddresses(value):: self {
      resource+: {
        vault_pki_secret_backend_root_sign_intermediate+: { [terraformName]+: { excluded_email_addresses: value } },
      },
    },
    '#excluded_ip_ranges':: { 'function': { help: |||
      List of IP ranges for which certificates are NOT allowed to be issued.
    ||| } },
    withExcludedIpRanges(value):: self {
      resource+: {
        vault_pki_secret_backend_root_sign_intermediate+: { [terraformName]+: { excluded_ip_ranges: value } },
      },
    },
    '#excluded_uri_domains':: { 'function': { help: |||
      List of URI domains for which certificates are not allowed to be issued.
    ||| } },
    withExcludedUriDomains(value):: self {
      resource+: {
        vault_pki_secret_backend_root_sign_intermediate+: { [terraformName]+: { excluded_uri_domains: value } },
      },
    },
    '#format':: { 'function': { help: |||
      The format of data.
    ||| } },
    withFormat(value):: self {
      resource+: {
        vault_pki_secret_backend_root_sign_intermediate+: { [terraformName]+: { format: value } },
      },
    },
    withId(value):: self {
      resource+: {
        vault_pki_secret_backend_root_sign_intermediate+: { [terraformName]+: { id: value } },
      },
    },
    '#ip_sans':: { 'function': { help: |||
      List of alternative IPs.
    ||| } },
    withIpSans(value):: self {
      resource+: {
        vault_pki_secret_backend_root_sign_intermediate+: { [terraformName]+: { ip_sans: value } },
      },
    },
    '#issuer_ref':: { 'function': { help: |||
      Specifies the default issuer of this request.
    ||| } },
    withIssuerRef(value):: self {
      resource+: {
        vault_pki_secret_backend_root_sign_intermediate+: { [terraformName]+: { issuer_ref: value } },
      },
    },
    '#key_usage':: { 'function': { help: |||
      Specify the key usages to be added to the existing set of key usages ("CRL", "CertSign") on the generated certificate.
    ||| } },
    withKeyUsage(value):: self {
      resource+: {
        vault_pki_secret_backend_root_sign_intermediate+: { [terraformName]+: { key_usage: value } },
      },
    },
    '#locality':: { 'function': { help: |||
      The locality.
    ||| } },
    withLocality(value):: self {
      resource+: {
        vault_pki_secret_backend_root_sign_intermediate+: { [terraformName]+: { locality: value } },
      },
    },
    '#max_path_length':: { 'function': { help: |||
      The maximum path length to encode in the generated certificate.
    ||| } },
    withMaxPathLength(value):: self {
      resource+: {
        vault_pki_secret_backend_root_sign_intermediate+: { [terraformName]+: { max_path_length: value } },
      },
    },
    '#namespace':: { 'function': { help: |||
      Target namespace. (requires Enterprise)
    ||| } },
    withNamespace(value):: self {
      resource+: {
        vault_pki_secret_backend_root_sign_intermediate+: { [terraformName]+: { namespace: value } },
      },
    },
    '#not_after':: { 'function': { help: |||
      Set the Not After field of the certificate with specified date value. The value format should be given in UTC format YYYY-MM-ddTHH:MM:SSZ. Supports the Y10K end date for IEEE 802.1AR-2018 standard devices, 9999-12-31T23:59:59Z.
    ||| } },
    withNotAfter(value):: self {
      resource+: {
        vault_pki_secret_backend_root_sign_intermediate+: { [terraformName]+: { not_after: value } },
      },
    },
    '#not_before_duration':: { 'function': { help: |||
      Specifies the duration by which to backdate the NotBefore property.
    ||| } },
    withNotBeforeDuration(value):: self {
      resource+: {
        vault_pki_secret_backend_root_sign_intermediate+: { [terraformName]+: { not_before_duration: value } },
      },
    },
    '#organization':: { 'function': { help: |||
      The organization.
    ||| } },
    withOrganization(value):: self {
      resource+: {
        vault_pki_secret_backend_root_sign_intermediate+: { [terraformName]+: { organization: value } },
      },
    },
    '#other_sans':: { 'function': { help: |||
      List of other SANs.
    ||| } },
    withOtherSans(value):: self {
      resource+: {
        vault_pki_secret_backend_root_sign_intermediate+: { [terraformName]+: { other_sans: value } },
      },
    },
    '#ou':: { 'function': { help: |||
      The organization unit.
    ||| } },
    withOu(value):: self {
      resource+: {
        vault_pki_secret_backend_root_sign_intermediate+: { [terraformName]+: { ou: value } },
      },
    },
    '#permitted_dns_domains':: { 'function': { help: |||
      List of domains for which certificates are allowed to be issued.
    ||| } },
    withPermittedDnsDomains(value):: self {
      resource+: {
        vault_pki_secret_backend_root_sign_intermediate+: { [terraformName]+: { permitted_dns_domains: value } },
      },
    },
    '#permitted_email_addresses':: { 'function': { help: |||
      List of email addresses for which certificates are allowed to be issued.
    ||| } },
    withPermittedEmailAddresses(value):: self {
      resource+: {
        vault_pki_secret_backend_root_sign_intermediate+: { [terraformName]+: { permitted_email_addresses: value } },
      },
    },
    '#permitted_ip_ranges':: { 'function': { help: |||
      List of IP ranges for which certificates are allowed to be issued.
    ||| } },
    withPermittedIpRanges(value):: self {
      resource+: {
        vault_pki_secret_backend_root_sign_intermediate+: { [terraformName]+: { permitted_ip_ranges: value } },
      },
    },
    '#permitted_uri_domains':: { 'function': { help: |||
      List of URI domains for which certificates are allowed to be issued.
    ||| } },
    withPermittedUriDomains(value):: self {
      resource+: {
        vault_pki_secret_backend_root_sign_intermediate+: { [terraformName]+: { permitted_uri_domains: value } },
      },
    },
    '#postal_code':: { 'function': { help: |||
      The postal code.
    ||| } },
    withPostalCode(value):: self {
      resource+: {
        vault_pki_secret_backend_root_sign_intermediate+: { [terraformName]+: { postal_code: value } },
      },
    },
    '#province':: { 'function': { help: |||
      The province.
    ||| } },
    withProvince(value):: self {
      resource+: {
        vault_pki_secret_backend_root_sign_intermediate+: { [terraformName]+: { province: value } },
      },
    },
    '#revoke':: { 'function': { help: |||
      Revoke the certificate upon resource destruction.
    ||| } },
    withRevoke(value):: self {
      resource+: {
        vault_pki_secret_backend_root_sign_intermediate+: { [terraformName]+: { revoke: value } },
      },
    },
    '#signature_bits':: { 'function': { help: |||
      The number of bits to use in the signature algorithm.
    ||| } },
    withSignatureBits(value):: self {
      resource+: {
        vault_pki_secret_backend_root_sign_intermediate+: { [terraformName]+: { signature_bits: value } },
      },
    },
    '#skid':: { 'function': { help: |||
      Value for the Subject Key Identifier field
        (RFC 5280 Section 4.2.1.2). Specified as a string in hex format.
    ||| } },
    withSkid(value):: self {
      resource+: {
        vault_pki_secret_backend_root_sign_intermediate+: { [terraformName]+: { skid: value } },
      },
    },
    '#street_address':: { 'function': { help: |||
      The street address.
    ||| } },
    withStreetAddress(value):: self {
      resource+: {
        vault_pki_secret_backend_root_sign_intermediate+: { [terraformName]+: { street_address: value } },
      },
    },
    '#ttl':: { 'function': { help: |||
      Time to live.
    ||| } },
    withTtl(value):: self {
      resource+: {
        vault_pki_secret_backend_root_sign_intermediate+: { [terraformName]+: { ttl: value } },
      },
    },
    '#uri_sans':: { 'function': { help: |||
      List of alternative URIs.
    ||| } },
    withUriSans(value):: self {
      resource+: {
        vault_pki_secret_backend_root_sign_intermediate+: { [terraformName]+: { uri_sans: value } },
      },
    },
    '#use_csr_values':: { 'function': { help: |||
      Preserve CSR values.
    ||| } },
    withUseCsrValues(value):: self {
      resource+: {
        vault_pki_secret_backend_root_sign_intermediate+: { [terraformName]+: { use_csr_values: value } },
      },
    },
    '#use_pss':: { 'function': { help: |||
      Specifies whether or not to use PSS signatures
        over PKCS#1v1.5 signatures when a RSA-type issuer is used.
    ||| } },
    withUsePss(value):: self {
      resource+: {
        vault_pki_secret_backend_root_sign_intermediate+: { [terraformName]+: { use_pss: value } },
      },
    },
  },
  ref(terraformName):: {
    local refSelf = self,
    plain(suffix=''):: '${ vault_pki_secret_backend_root_sign_intermediate.%s%s }' % [terraformName, suffix],
    fields:: {
      '#alt_names':: { 'function': { help: |||
        List of alternative names.
      ||| } },
      alt_names(suffix=''):: refSelf.plain('.alt_names%s' % suffix),
      '#backend':: { 'function': { help: |||
        The PKI secret backend the resource belongs to.
      ||| } },
      backend(suffix=''):: refSelf.plain('.backend%s' % suffix),
      '#ca_chain':: { 'function': { help: |||
        The CA chain as a list of format specific certificates
      ||| } },
      ca_chain(suffix=''):: refSelf.plain('.ca_chain%s' % suffix),
      '#certificate':: { 'function': { help: |||
        The signed intermediate CA certificate.
      ||| } },
      certificate(suffix=''):: refSelf.plain('.certificate%s' % suffix),
      '#certificate_bundle':: { 'function': { help: |||
        The concatenation of the intermediate and issuing CA certificates (PEM encoded). Requires the format to be set to any of: pem, pem_bundle. The value will be empty for all other formats.
      ||| } },
      certificate_bundle(suffix=''):: refSelf.plain('.certificate_bundle%s' % suffix),
      '#common_name':: { 'function': { help: |||
        CN of intermediate to create.
      ||| } },
      common_name(suffix=''):: refSelf.plain('.common_name%s' % suffix),
      '#country':: { 'function': { help: |||
        The country.
      ||| } },
      country(suffix=''):: refSelf.plain('.country%s' % suffix),
      '#csr':: { 'function': { help: |||
        The CSR.
      ||| } },
      csr(suffix=''):: refSelf.plain('.csr%s' % suffix),
      '#exclude_cn_from_sans':: { 'function': { help: |||
        Flag to exclude CN from SANs.
      ||| } },
      exclude_cn_from_sans(suffix=''):: refSelf.plain('.exclude_cn_from_sans%s' % suffix),
      '#excluded_dns_domains':: { 'function': { help: |||
        List of domains for which certificates are not allowed to be issued.
      ||| } },
      excluded_dns_domains(suffix=''):: refSelf.plain('.excluded_dns_domains%s' % suffix),
      '#excluded_email_addresses':: { 'function': { help: |||
        List of email addresses for which certificates are not allowed to be issued.
      ||| } },
      excluded_email_addresses(suffix=''):: refSelf.plain('.excluded_email_addresses%s' % suffix),
      '#excluded_ip_ranges':: { 'function': { help: |||
        List of IP ranges for which certificates are NOT allowed to be issued.
      ||| } },
      excluded_ip_ranges(suffix=''):: refSelf.plain('.excluded_ip_ranges%s' % suffix),
      '#excluded_uri_domains':: { 'function': { help: |||
        List of URI domains for which certificates are not allowed to be issued.
      ||| } },
      excluded_uri_domains(suffix=''):: refSelf.plain('.excluded_uri_domains%s' % suffix),
      '#format':: { 'function': { help: |||
        The format of data.
      ||| } },
      format(suffix=''):: refSelf.plain('.format%s' % suffix),
      id(suffix=''):: refSelf.plain('.id%s' % suffix),
      '#ip_sans':: { 'function': { help: |||
        List of alternative IPs.
      ||| } },
      ip_sans(suffix=''):: refSelf.plain('.ip_sans%s' % suffix),
      '#issuer_ref':: { 'function': { help: |||
        Specifies the default issuer of this request.
      ||| } },
      issuer_ref(suffix=''):: refSelf.plain('.issuer_ref%s' % suffix),
      '#issuing_ca':: { 'function': { help: |||
        The issuing CA certificate.
      ||| } },
      issuing_ca(suffix=''):: refSelf.plain('.issuing_ca%s' % suffix),
      '#key_usage':: { 'function': { help: |||
        Specify the key usages to be added to the existing set of key usages ("CRL", "CertSign") on the generated certificate.
      ||| } },
      key_usage(suffix=''):: refSelf.plain('.key_usage%s' % suffix),
      '#locality':: { 'function': { help: |||
        The locality.
      ||| } },
      locality(suffix=''):: refSelf.plain('.locality%s' % suffix),
      '#max_path_length':: { 'function': { help: |||
        The maximum path length to encode in the generated certificate.
      ||| } },
      max_path_length(suffix=''):: refSelf.plain('.max_path_length%s' % suffix),
      '#namespace':: { 'function': { help: |||
        Target namespace. (requires Enterprise)
      ||| } },
      namespace(suffix=''):: refSelf.plain('.namespace%s' % suffix),
      '#not_after':: { 'function': { help: |||
        Set the Not After field of the certificate with specified date value. The value format should be given in UTC format YYYY-MM-ddTHH:MM:SSZ. Supports the Y10K end date for IEEE 802.1AR-2018 standard devices, 9999-12-31T23:59:59Z.
      ||| } },
      not_after(suffix=''):: refSelf.plain('.not_after%s' % suffix),
      '#not_before_duration':: { 'function': { help: |||
        Specifies the duration by which to backdate the NotBefore property.
      ||| } },
      not_before_duration(suffix=''):: refSelf.plain('.not_before_duration%s' % suffix),
      '#organization':: { 'function': { help: |||
        The organization.
      ||| } },
      organization(suffix=''):: refSelf.plain('.organization%s' % suffix),
      '#other_sans':: { 'function': { help: |||
        List of other SANs.
      ||| } },
      other_sans(suffix=''):: refSelf.plain('.other_sans%s' % suffix),
      '#ou':: { 'function': { help: |||
        The organization unit.
      ||| } },
      ou(suffix=''):: refSelf.plain('.ou%s' % suffix),
      '#permitted_dns_domains':: { 'function': { help: |||
        List of domains for which certificates are allowed to be issued.
      ||| } },
      permitted_dns_domains(suffix=''):: refSelf.plain('.permitted_dns_domains%s' % suffix),
      '#permitted_email_addresses':: { 'function': { help: |||
        List of email addresses for which certificates are allowed to be issued.
      ||| } },
      permitted_email_addresses(suffix=''):: refSelf.plain('.permitted_email_addresses%s' % suffix),
      '#permitted_ip_ranges':: { 'function': { help: |||
        List of IP ranges for which certificates are allowed to be issued.
      ||| } },
      permitted_ip_ranges(suffix=''):: refSelf.plain('.permitted_ip_ranges%s' % suffix),
      '#permitted_uri_domains':: { 'function': { help: |||
        List of URI domains for which certificates are allowed to be issued.
      ||| } },
      permitted_uri_domains(suffix=''):: refSelf.plain('.permitted_uri_domains%s' % suffix),
      '#postal_code':: { 'function': { help: |||
        The postal code.
      ||| } },
      postal_code(suffix=''):: refSelf.plain('.postal_code%s' % suffix),
      '#province':: { 'function': { help: |||
        The province.
      ||| } },
      province(suffix=''):: refSelf.plain('.province%s' % suffix),
      '#revoke':: { 'function': { help: |||
        Revoke the certificate upon resource destruction.
      ||| } },
      revoke(suffix=''):: refSelf.plain('.revoke%s' % suffix),
      '#serial_number':: { 'function': { help: |||
        The certificate's serial number, hex formatted.
      ||| } },
      serial_number(suffix=''):: refSelf.plain('.serial_number%s' % suffix),
      '#signature_bits':: { 'function': { help: |||
        The number of bits to use in the signature algorithm.
      ||| } },
      signature_bits(suffix=''):: refSelf.plain('.signature_bits%s' % suffix),
      '#skid':: { 'function': { help: |||
        Value for the Subject Key Identifier field
          (RFC 5280 Section 4.2.1.2). Specified as a string in hex format.
      ||| } },
      skid(suffix=''):: refSelf.plain('.skid%s' % suffix),
      '#street_address':: { 'function': { help: |||
        The street address.
      ||| } },
      street_address(suffix=''):: refSelf.plain('.street_address%s' % suffix),
      '#ttl':: { 'function': { help: |||
        Time to live.
      ||| } },
      ttl(suffix=''):: refSelf.plain('.ttl%s' % suffix),
      '#uri_sans':: { 'function': { help: |||
        List of alternative URIs.
      ||| } },
      uri_sans(suffix=''):: refSelf.plain('.uri_sans%s' % suffix),
      '#use_csr_values':: { 'function': { help: |||
        Preserve CSR values.
      ||| } },
      use_csr_values(suffix=''):: refSelf.plain('.use_csr_values%s' % suffix),
      '#use_pss':: { 'function': { help: |||
        Specifies whether or not to use PSS signatures
          over PKCS#1v1.5 signatures when a RSA-type issuer is used.
      ||| } },
      use_pss(suffix=''):: refSelf.plain('.use_pss%s' % suffix),
    },
  },
}
