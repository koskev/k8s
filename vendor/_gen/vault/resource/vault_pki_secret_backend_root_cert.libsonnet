{
  local outerSelf = self,
  new(terraformName, backend, common_name, type):: self.functions(terraformName) {
    ref():: outerSelf.ref(terraformName),
    _type:: 'tf',
    resource+: {
      vault_pki_secret_backend_root_cert+: {
        [terraformName]+: {
          backend: backend,
          common_name: common_name,
          type: type,
        },
      },
    },
  },
  functions(terraformName):: {
    '#withAltNames':: { 'function': { help: |||
      List of alternative names.
    ||| } },
    withAltNames(value):: self {
      resource+: {
        vault_pki_secret_backend_root_cert+: { [terraformName]+: { alt_names: value } },
      },
    },
    '#withBackend':: { 'function': { help: |||
      The PKI secret backend the resource belongs to.
    ||| } },
    withBackend(value):: self {
      resource+: {
        vault_pki_secret_backend_root_cert+: { [terraformName]+: { backend: value } },
      },
    },
    '#withCommonName':: { 'function': { help: |||
      CN of root to create.
    ||| } },
    withCommonName(value):: self {
      resource+: {
        vault_pki_secret_backend_root_cert+: { [terraformName]+: { common_name: value } },
      },
    },
    '#withCountry':: { 'function': { help: |||
      The country.
    ||| } },
    withCountry(value):: self {
      resource+: {
        vault_pki_secret_backend_root_cert+: { [terraformName]+: { country: value } },
      },
    },
    '#withExcludeCnFromSans':: { 'function': { help: |||
      Flag to exclude CN from SANs.
    ||| } },
    withExcludeCnFromSans(value):: self {
      resource+: {
        vault_pki_secret_backend_root_cert+: { [terraformName]+: { exclude_cn_from_sans: value } },
      },
    },
    '#withExcludedDnsDomains':: { 'function': { help: |||
      List of domains for which certificates are not allowed to be issued.
    ||| } },
    withExcludedDnsDomains(value):: self {
      resource+: {
        vault_pki_secret_backend_root_cert+: { [terraformName]+: { excluded_dns_domains: value } },
      },
    },
    '#withExcludedEmailAddresses':: { 'function': { help: |||
      List of email addresses for which certificates are not allowed to be issued.
    ||| } },
    withExcludedEmailAddresses(value):: self {
      resource+: {
        vault_pki_secret_backend_root_cert+: { [terraformName]+: { excluded_email_addresses: value } },
      },
    },
    '#withExcludedIpRanges':: { 'function': { help: |||
      List of IP ranges for which certificates are not allowed to be issued.
    ||| } },
    withExcludedIpRanges(value):: self {
      resource+: {
        vault_pki_secret_backend_root_cert+: { [terraformName]+: { excluded_ip_ranges: value } },
      },
    },
    '#withExcludedUriDomains':: { 'function': { help: |||
      List of URI domains for which certificates are not allowed to be issued.
    ||| } },
    withExcludedUriDomains(value):: self {
      resource+: {
        vault_pki_secret_backend_root_cert+: { [terraformName]+: { excluded_uri_domains: value } },
      },
    },
    '#withFormat':: { 'function': { help: |||
      The format of data.
    ||| } },
    withFormat(value):: self {
      resource+: {
        vault_pki_secret_backend_root_cert+: { [terraformName]+: { format: value } },
      },
    },
    withId(value):: self {
      resource+: {
        vault_pki_secret_backend_root_cert+: { [terraformName]+: { id: value } },
      },
    },
    '#withIpSans':: { 'function': { help: |||
      List of alternative IPs.
    ||| } },
    withIpSans(value):: self {
      resource+: {
        vault_pki_secret_backend_root_cert+: { [terraformName]+: { ip_sans: value } },
      },
    },
    '#withIssuerName':: { 'function': { help: |||
      Provides a name to the specified issuer. The name must be unique across all issuers and not be the reserved value 'default'.
    ||| } },
    withIssuerName(value):: self {
      resource+: {
        vault_pki_secret_backend_root_cert+: { [terraformName]+: { issuer_name: value } },
      },
    },
    '#withKeyBits':: { 'function': { help: |||
      The number of bits to use.
    ||| } },
    withKeyBits(value):: self {
      resource+: {
        vault_pki_secret_backend_root_cert+: { [terraformName]+: { key_bits: value } },
      },
    },
    '#withKeyName':: { 'function': { help: |||
      When a new key is created with this request, optionally specifies the name for this.
    ||| } },
    withKeyName(value):: self {
      resource+: {
        vault_pki_secret_backend_root_cert+: { [terraformName]+: { key_name: value } },
      },
    },
    '#withKeyRef':: { 'function': { help: |||
      Specifies the key to use for generating this request.
    ||| } },
    withKeyRef(value):: self {
      resource+: {
        vault_pki_secret_backend_root_cert+: { [terraformName]+: { key_ref: value } },
      },
    },
    '#withKeyType':: { 'function': { help: |||
      The desired key type.
    ||| } },
    withKeyType(value):: self {
      resource+: {
        vault_pki_secret_backend_root_cert+: { [terraformName]+: { key_type: value } },
      },
    },
    '#withKeyUsage':: { 'function': { help: |||
      Specify the allowed key usage constraint on issued certificates.
    ||| } },
    withKeyUsage(value):: self {
      resource+: {
        vault_pki_secret_backend_root_cert+: { [terraformName]+: { key_usage: value } },
      },
    },
    '#withLocality':: { 'function': { help: |||
      The locality.
    ||| } },
    withLocality(value):: self {
      resource+: {
        vault_pki_secret_backend_root_cert+: { [terraformName]+: { locality: value } },
      },
    },
    '#withManagedKeyId':: { 'function': { help: |||
      The ID of the previously configured managed key.
    ||| } },
    withManagedKeyId(value):: self {
      resource+: {
        vault_pki_secret_backend_root_cert+: { [terraformName]+: { managed_key_id: value } },
      },
    },
    '#withManagedKeyName':: { 'function': { help: |||
      The name of the previously configured managed key.
    ||| } },
    withManagedKeyName(value):: self {
      resource+: {
        vault_pki_secret_backend_root_cert+: { [terraformName]+: { managed_key_name: value } },
      },
    },
    '#withMaxPathLength':: { 'function': { help: |||
      The maximum path length to encode in the generated certificate.
    ||| } },
    withMaxPathLength(value):: self {
      resource+: {
        vault_pki_secret_backend_root_cert+: { [terraformName]+: { max_path_length: value } },
      },
    },
    '#withNamespace':: { 'function': { help: |||
      Target namespace. (requires Enterprise)
    ||| } },
    withNamespace(value):: self {
      resource+: {
        vault_pki_secret_backend_root_cert+: { [terraformName]+: { namespace: value } },
      },
    },
    '#withNotAfter':: { 'function': { help: |||
      Set the Not After field of the certificate with specified date value. The value format should be given in UTC format YYYY-MM-ddTHH:MM:SSZ. Supports the Y10K end date for IEEE 802.1AR-2018 standard devices, 9999-12-31T23:59:59Z.
    ||| } },
    withNotAfter(value):: self {
      resource+: {
        vault_pki_secret_backend_root_cert+: { [terraformName]+: { not_after: value } },
      },
    },
    '#withNotBeforeDuration':: { 'function': { help: |||
      Specifies the duration by which to backdate the NotBefore property.
    ||| } },
    withNotBeforeDuration(value):: self {
      resource+: {
        vault_pki_secret_backend_root_cert+: { [terraformName]+: { not_before_duration: value } },
      },
    },
    '#withOrganization':: { 'function': { help: |||
      The organization.
    ||| } },
    withOrganization(value):: self {
      resource+: {
        vault_pki_secret_backend_root_cert+: { [terraformName]+: { organization: value } },
      },
    },
    '#withOtherSans':: { 'function': { help: |||
      List of other SANs.
    ||| } },
    withOtherSans(value):: self {
      resource+: {
        vault_pki_secret_backend_root_cert+: { [terraformName]+: { other_sans: value } },
      },
    },
    '#withOu':: { 'function': { help: |||
      The organization unit.
    ||| } },
    withOu(value):: self {
      resource+: {
        vault_pki_secret_backend_root_cert+: { [terraformName]+: { ou: value } },
      },
    },
    '#withPermittedDnsDomains':: { 'function': { help: |||
      List of domains for which certificates are allowed to be issued.
    ||| } },
    withPermittedDnsDomains(value):: self {
      resource+: {
        vault_pki_secret_backend_root_cert+: { [terraformName]+: { permitted_dns_domains: value } },
      },
    },
    '#withPermittedEmailAddresses':: { 'function': { help: |||
      List of email addresses for which certificates are allowed to be issued.
    ||| } },
    withPermittedEmailAddresses(value):: self {
      resource+: {
        vault_pki_secret_backend_root_cert+: { [terraformName]+: { permitted_email_addresses: value } },
      },
    },
    '#withPermittedIpRanges':: { 'function': { help: |||
      List of IP ranges for which certificates are allowed to be issued.
    ||| } },
    withPermittedIpRanges(value):: self {
      resource+: {
        vault_pki_secret_backend_root_cert+: { [terraformName]+: { permitted_ip_ranges: value } },
      },
    },
    '#withPermittedUriDomains':: { 'function': { help: |||
      List of URI domains for which certificates are allowed to be issued.
    ||| } },
    withPermittedUriDomains(value):: self {
      resource+: {
        vault_pki_secret_backend_root_cert+: { [terraformName]+: { permitted_uri_domains: value } },
      },
    },
    '#withPostalCode':: { 'function': { help: |||
      The postal code.
    ||| } },
    withPostalCode(value):: self {
      resource+: {
        vault_pki_secret_backend_root_cert+: { [terraformName]+: { postal_code: value } },
      },
    },
    '#withPrivateKeyFormat':: { 'function': { help: |||
      The private key format.
    ||| } },
    withPrivateKeyFormat(value):: self {
      resource+: {
        vault_pki_secret_backend_root_cert+: { [terraformName]+: { private_key_format: value } },
      },
    },
    '#withProvince':: { 'function': { help: |||
      The province.
    ||| } },
    withProvince(value):: self {
      resource+: {
        vault_pki_secret_backend_root_cert+: { [terraformName]+: { province: value } },
      },
    },
    '#withSignatureBits':: { 'function': { help: |||
      The number of bits to use in the signature algorithm.
    ||| } },
    withSignatureBits(value):: self {
      resource+: {
        vault_pki_secret_backend_root_cert+: { [terraformName]+: { signature_bits: value } },
      },
    },
    '#withStreetAddress':: { 'function': { help: |||
      The street address.
    ||| } },
    withStreetAddress(value):: self {
      resource+: {
        vault_pki_secret_backend_root_cert+: { [terraformName]+: { street_address: value } },
      },
    },
    '#withTtl':: { 'function': { help: |||
      Time to live.
    ||| } },
    withTtl(value):: self {
      resource+: {
        vault_pki_secret_backend_root_cert+: { [terraformName]+: { ttl: value } },
      },
    },
    '#withType':: { 'function': { help: |||
      Type of root to create. Must be either "existing", "exported", "internal" or "kms"
    ||| } },
    withType(value):: self {
      resource+: {
        vault_pki_secret_backend_root_cert+: { [terraformName]+: { type: value } },
      },
    },
    '#withUriSans':: { 'function': { help: |||
      List of alternative URIs.
    ||| } },
    withUriSans(value):: self {
      resource+: {
        vault_pki_secret_backend_root_cert+: { [terraformName]+: { uri_sans: value } },
      },
    },
    '#withUsePss':: { 'function': { help: |||
      Whether to use PSS signatures when using a RSA key-type issuer.
    ||| } },
    withUsePss(value):: self {
      resource+: {
        vault_pki_secret_backend_root_cert+: { [terraformName]+: { use_pss: value } },
      },
    },
  },
  ref(terraformName):: {
    local refSelf = self,
    plain(suffix=''):: '${ vault_pki_secret_backend_root_cert.%s%s }' % [terraformName, suffix],
    fields:: {
      '#alt_names':: { 'function': { help: |||
        List of alternative names.
      ||| } },
      alt_names(suffix=''):: refSelf.plain('.alt_names%s' % suffix),
      '#backend':: { 'function': { help: |||
        The PKI secret backend the resource belongs to.
      ||| } },
      backend(suffix=''):: refSelf.plain('.backend%s' % suffix),
      '#certificate':: { 'function': { help: |||
        The certificate.
      ||| } },
      certificate(suffix=''):: refSelf.plain('.certificate%s' % suffix),
      '#common_name':: { 'function': { help: |||
        CN of root to create.
      ||| } },
      common_name(suffix=''):: refSelf.plain('.common_name%s' % suffix),
      '#country':: { 'function': { help: |||
        The country.
      ||| } },
      country(suffix=''):: refSelf.plain('.country%s' % suffix),
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
        List of IP ranges for which certificates are not allowed to be issued.
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
      '#issuer_id':: { 'function': { help: |||
        The ID of the generated issuer.
      ||| } },
      issuer_id(suffix=''):: refSelf.plain('.issuer_id%s' % suffix),
      '#issuer_name':: { 'function': { help: |||
        Provides a name to the specified issuer. The name must be unique across all issuers and not be the reserved value 'default'.
      ||| } },
      issuer_name(suffix=''):: refSelf.plain('.issuer_name%s' % suffix),
      '#issuing_ca':: { 'function': { help: |||
        The issuing CA.
      ||| } },
      issuing_ca(suffix=''):: refSelf.plain('.issuing_ca%s' % suffix),
      '#key_bits':: { 'function': { help: |||
        The number of bits to use.
      ||| } },
      key_bits(suffix=''):: refSelf.plain('.key_bits%s' % suffix),
      '#key_id':: { 'function': { help: |||
        The ID of the generated key.
      ||| } },
      key_id(suffix=''):: refSelf.plain('.key_id%s' % suffix),
      '#key_name':: { 'function': { help: |||
        When a new key is created with this request, optionally specifies the name for this.
      ||| } },
      key_name(suffix=''):: refSelf.plain('.key_name%s' % suffix),
      '#key_ref':: { 'function': { help: |||
        Specifies the key to use for generating this request.
      ||| } },
      key_ref(suffix=''):: refSelf.plain('.key_ref%s' % suffix),
      '#key_type':: { 'function': { help: |||
        The desired key type.
      ||| } },
      key_type(suffix=''):: refSelf.plain('.key_type%s' % suffix),
      '#key_usage':: { 'function': { help: |||
        Specify the allowed key usage constraint on issued certificates.
      ||| } },
      key_usage(suffix=''):: refSelf.plain('.key_usage%s' % suffix),
      '#locality':: { 'function': { help: |||
        The locality.
      ||| } },
      locality(suffix=''):: refSelf.plain('.locality%s' % suffix),
      '#managed_key_id':: { 'function': { help: |||
        The ID of the previously configured managed key.
      ||| } },
      managed_key_id(suffix=''):: refSelf.plain('.managed_key_id%s' % suffix),
      '#managed_key_name':: { 'function': { help: |||
        The name of the previously configured managed key.
      ||| } },
      managed_key_name(suffix=''):: refSelf.plain('.managed_key_name%s' % suffix),
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
      '#private_key_format':: { 'function': { help: |||
        The private key format.
      ||| } },
      private_key_format(suffix=''):: refSelf.plain('.private_key_format%s' % suffix),
      '#province':: { 'function': { help: |||
        The province.
      ||| } },
      province(suffix=''):: refSelf.plain('.province%s' % suffix),
      '#serial_number':: { 'function': { help: |||
        The certificate's serial number, hex formatted.
      ||| } },
      serial_number(suffix=''):: refSelf.plain('.serial_number%s' % suffix),
      '#signature_bits':: { 'function': { help: |||
        The number of bits to use in the signature algorithm.
      ||| } },
      signature_bits(suffix=''):: refSelf.plain('.signature_bits%s' % suffix),
      '#street_address':: { 'function': { help: |||
        The street address.
      ||| } },
      street_address(suffix=''):: refSelf.plain('.street_address%s' % suffix),
      '#ttl':: { 'function': { help: |||
        Time to live.
      ||| } },
      ttl(suffix=''):: refSelf.plain('.ttl%s' % suffix),
      '#type':: { 'function': { help: |||
        Type of root to create. Must be either "existing", "exported", "internal" or "kms"
      ||| } },
      type(suffix=''):: refSelf.plain('.type%s' % suffix),
      '#uri_sans':: { 'function': { help: |||
        List of alternative URIs.
      ||| } },
      uri_sans(suffix=''):: refSelf.plain('.uri_sans%s' % suffix),
      '#use_pss':: { 'function': { help: |||
        Whether to use PSS signatures when using a RSA key-type issuer.
      ||| } },
      use_pss(suffix=''):: refSelf.plain('.use_pss%s' % suffix),
    },
  },
}
