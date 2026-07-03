{
  new(terraformName, backend, common_name, csr):: {
    _type:: 'tf',
    resource+: {
      vault_pki_secret_backend_root_sign_intermediate+: { [terraformName]+: {
        backend: backend,
        common_name: common_name,
        csr: csr,
      } },
    },
    '#withAltNames': { 'function': { help: |||
      List of alternative names. 
    ||| } },
    withAltNames(value):: self {
      resource+: {
        vault_pki_secret_backend_root_sign_intermediate+: { [terraformName]+: { alt_names: value } },
      },
    },
    '#withBackend': { 'function': { help: |||
      The PKI secret backend the resource belongs to. 
    ||| } },
    withBackend(value):: self {
      resource+: {
        vault_pki_secret_backend_root_sign_intermediate+: { [terraformName]+: { backend: value } },
      },
    },
    '#withCaChain': { 'function': { help: |||
      The CA chain as a list of format specific certificates 
    ||| } },
    withCaChain(value):: self {
      resource+: {
        vault_pki_secret_backend_root_sign_intermediate+: { [terraformName]+: { ca_chain: value } },
      },
    },
    '#withCertificate': { 'function': { help: |||
      The signed intermediate CA certificate. 
    ||| } },
    withCertificate(value):: self {
      resource+: {
        vault_pki_secret_backend_root_sign_intermediate+: { [terraformName]+: { certificate: value } },
      },
    },
    '#withCertificateBundle': { 'function': { help: |||
      The concatenation of the intermediate and issuing CA certificates (PEM encoded). Requires the format to be set to any of: pem, pem_bundle. The value will be empty for all other formats. 
    ||| } },
    withCertificateBundle(value):: self {
      resource+: {
        vault_pki_secret_backend_root_sign_intermediate+: { [terraformName]+: { certificate_bundle: value } },
      },
    },
    '#withCommonName': { 'function': { help: |||
      CN of intermediate to create. 
    ||| } },
    withCommonName(value):: self {
      resource+: {
        vault_pki_secret_backend_root_sign_intermediate+: { [terraformName]+: { common_name: value } },
      },
    },
    '#withCountry': { 'function': { help: |||
      The country. 
    ||| } },
    withCountry(value):: self {
      resource+: {
        vault_pki_secret_backend_root_sign_intermediate+: { [terraformName]+: { country: value } },
      },
    },
    '#withCsr': { 'function': { help: |||
      The CSR. 
    ||| } },
    withCsr(value):: self {
      resource+: {
        vault_pki_secret_backend_root_sign_intermediate+: { [terraformName]+: { csr: value } },
      },
    },
    '#withExcludeCnFromSans': { 'function': { help: |||
      Flag to exclude CN from SANs. 
    ||| } },
    withExcludeCnFromSans(value):: self {
      resource+: {
        vault_pki_secret_backend_root_sign_intermediate+: { [terraformName]+: { exclude_cn_from_sans: value } },
      },
    },
    '#withExcludedDnsDomains': { 'function': { help: |||
      List of domains for which certificates are not allowed to be issued. 
    ||| } },
    withExcludedDnsDomains(value):: self {
      resource+: {
        vault_pki_secret_backend_root_sign_intermediate+: { [terraformName]+: { excluded_dns_domains: value } },
      },
    },
    '#withExcludedEmailAddresses': { 'function': { help: |||
      List of email addresses for which certificates are not allowed to be issued. 
    ||| } },
    withExcludedEmailAddresses(value):: self {
      resource+: {
        vault_pki_secret_backend_root_sign_intermediate+: { [terraformName]+: { excluded_email_addresses: value } },
      },
    },
    '#withExcludedIpRanges': { 'function': { help: |||
      List of IP ranges for which certificates are NOT allowed to be issued. 
    ||| } },
    withExcludedIpRanges(value):: self {
      resource+: {
        vault_pki_secret_backend_root_sign_intermediate+: { [terraformName]+: { excluded_ip_ranges: value } },
      },
    },
    '#withExcludedUriDomains': { 'function': { help: |||
      List of URI domains for which certificates are not allowed to be issued. 
    ||| } },
    withExcludedUriDomains(value):: self {
      resource+: {
        vault_pki_secret_backend_root_sign_intermediate+: { [terraformName]+: { excluded_uri_domains: value } },
      },
    },
    '#withFormat': { 'function': { help: |||
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
    '#withIpSans': { 'function': { help: |||
      List of alternative IPs. 
    ||| } },
    withIpSans(value):: self {
      resource+: {
        vault_pki_secret_backend_root_sign_intermediate+: { [terraformName]+: { ip_sans: value } },
      },
    },
    '#withIssuerRef': { 'function': { help: |||
      Specifies the default issuer of this request. 
    ||| } },
    withIssuerRef(value):: self {
      resource+: {
        vault_pki_secret_backend_root_sign_intermediate+: { [terraformName]+: { issuer_ref: value } },
      },
    },
    '#withIssuingCa': { 'function': { help: |||
      The issuing CA certificate. 
    ||| } },
    withIssuingCa(value):: self {
      resource+: {
        vault_pki_secret_backend_root_sign_intermediate+: { [terraformName]+: { issuing_ca: value } },
      },
    },
    '#withKeyUsage': { 'function': { help: |||
      Specify the key usages to be added to the existing set of key usages ("CRL", "CertSign") on the generated certificate. 
    ||| } },
    withKeyUsage(value):: self {
      resource+: {
        vault_pki_secret_backend_root_sign_intermediate+: { [terraformName]+: { key_usage: value } },
      },
    },
    '#withLocality': { 'function': { help: |||
      The locality. 
    ||| } },
    withLocality(value):: self {
      resource+: {
        vault_pki_secret_backend_root_sign_intermediate+: { [terraformName]+: { locality: value } },
      },
    },
    '#withMaxPathLength': { 'function': { help: |||
      The maximum path length to encode in the generated certificate. 
    ||| } },
    withMaxPathLength(value):: self {
      resource+: {
        vault_pki_secret_backend_root_sign_intermediate+: { [terraformName]+: { max_path_length: value } },
      },
    },
    '#withNamespace': { 'function': { help: |||
      Target namespace. (requires Enterprise) 
    ||| } },
    withNamespace(value):: self {
      resource+: {
        vault_pki_secret_backend_root_sign_intermediate+: { [terraformName]+: { namespace: value } },
      },
    },
    '#withNotAfter': { 'function': { help: |||
      Set the Not After field of the certificate with specified date value. The value format should be given in UTC format YYYY-MM-ddTHH:MM:SSZ. Supports the Y10K end date for IEEE 802.1AR-2018 standard devices, 9999-12-31T23:59:59Z. 
    ||| } },
    withNotAfter(value):: self {
      resource+: {
        vault_pki_secret_backend_root_sign_intermediate+: { [terraformName]+: { not_after: value } },
      },
    },
    '#withNotBeforeDuration': { 'function': { help: |||
      Specifies the duration by which to backdate the NotBefore property. 
    ||| } },
    withNotBeforeDuration(value):: self {
      resource+: {
        vault_pki_secret_backend_root_sign_intermediate+: { [terraformName]+: { not_before_duration: value } },
      },
    },
    '#withOrganization': { 'function': { help: |||
      The organization. 
    ||| } },
    withOrganization(value):: self {
      resource+: {
        vault_pki_secret_backend_root_sign_intermediate+: { [terraformName]+: { organization: value } },
      },
    },
    '#withOtherSans': { 'function': { help: |||
      List of other SANs. 
    ||| } },
    withOtherSans(value):: self {
      resource+: {
        vault_pki_secret_backend_root_sign_intermediate+: { [terraformName]+: { other_sans: value } },
      },
    },
    '#withOu': { 'function': { help: |||
      The organization unit. 
    ||| } },
    withOu(value):: self {
      resource+: {
        vault_pki_secret_backend_root_sign_intermediate+: { [terraformName]+: { ou: value } },
      },
    },
    '#withPermittedDnsDomains': { 'function': { help: |||
      List of domains for which certificates are allowed to be issued. 
    ||| } },
    withPermittedDnsDomains(value):: self {
      resource+: {
        vault_pki_secret_backend_root_sign_intermediate+: { [terraformName]+: { permitted_dns_domains: value } },
      },
    },
    '#withPermittedEmailAddresses': { 'function': { help: |||
      List of email addresses for which certificates are allowed to be issued. 
    ||| } },
    withPermittedEmailAddresses(value):: self {
      resource+: {
        vault_pki_secret_backend_root_sign_intermediate+: { [terraformName]+: { permitted_email_addresses: value } },
      },
    },
    '#withPermittedIpRanges': { 'function': { help: |||
      List of IP ranges for which certificates are allowed to be issued. 
    ||| } },
    withPermittedIpRanges(value):: self {
      resource+: {
        vault_pki_secret_backend_root_sign_intermediate+: { [terraformName]+: { permitted_ip_ranges: value } },
      },
    },
    '#withPermittedUriDomains': { 'function': { help: |||
      List of URI domains for which certificates are allowed to be issued. 
    ||| } },
    withPermittedUriDomains(value):: self {
      resource+: {
        vault_pki_secret_backend_root_sign_intermediate+: { [terraformName]+: { permitted_uri_domains: value } },
      },
    },
    '#withPostalCode': { 'function': { help: |||
      The postal code. 
    ||| } },
    withPostalCode(value):: self {
      resource+: {
        vault_pki_secret_backend_root_sign_intermediate+: { [terraformName]+: { postal_code: value } },
      },
    },
    '#withProvince': { 'function': { help: |||
      The province. 
    ||| } },
    withProvince(value):: self {
      resource+: {
        vault_pki_secret_backend_root_sign_intermediate+: { [terraformName]+: { province: value } },
      },
    },
    '#withRevoke': { 'function': { help: |||
      Revoke the certificate upon resource destruction. 
    ||| } },
    withRevoke(value):: self {
      resource+: {
        vault_pki_secret_backend_root_sign_intermediate+: { [terraformName]+: { revoke: value } },
      },
    },
    '#withSerialNumber': { 'function': { help: |||
      The certificate's serial number, hex formatted. 
    ||| } },
    withSerialNumber(value):: self {
      resource+: {
        vault_pki_secret_backend_root_sign_intermediate+: { [terraformName]+: { serial_number: value } },
      },
    },
    '#withSignatureBits': { 'function': { help: |||
      The number of bits to use in the signature algorithm. 
    ||| } },
    withSignatureBits(value):: self {
      resource+: {
        vault_pki_secret_backend_root_sign_intermediate+: { [terraformName]+: { signature_bits: value } },
      },
    },
    '#withSkid': { 'function': { help: |||
      Value for the Subject Key Identifier field
       (RFC 5280 Section 4.2.1.2). Specified as a string in hex format. 
    ||| } },
    withSkid(value):: self {
      resource+: {
        vault_pki_secret_backend_root_sign_intermediate+: { [terraformName]+: { skid: value } },
      },
    },
    '#withStreetAddress': { 'function': { help: |||
      The street address. 
    ||| } },
    withStreetAddress(value):: self {
      resource+: {
        vault_pki_secret_backend_root_sign_intermediate+: { [terraformName]+: { street_address: value } },
      },
    },
    '#withTtl': { 'function': { help: |||
      Time to live. 
    ||| } },
    withTtl(value):: self {
      resource+: {
        vault_pki_secret_backend_root_sign_intermediate+: { [terraformName]+: { ttl: value } },
      },
    },
    '#withUriSans': { 'function': { help: |||
      List of alternative URIs. 
    ||| } },
    withUriSans(value):: self {
      resource+: {
        vault_pki_secret_backend_root_sign_intermediate+: { [terraformName]+: { uri_sans: value } },
      },
    },
    '#withUseCsrValues': { 'function': { help: |||
      Preserve CSR values. 
    ||| } },
    withUseCsrValues(value):: self {
      resource+: {
        vault_pki_secret_backend_root_sign_intermediate+: { [terraformName]+: { use_csr_values: value } },
      },
    },
    '#withUsePss': { 'function': { help: |||
      Specifies whether or not to use PSS signatures
       over PKCS#1v1.5 signatures when a RSA-type issuer is used. 
    ||| } },
    withUsePss(value):: self {
      resource+: {
        vault_pki_secret_backend_root_sign_intermediate+: { [terraformName]+: { use_pss: value } },
      },
    },
  },
}
