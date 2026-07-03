{
  new(terraformName, backend, common_name, type):: {
    _type:: 'tf',
    resource+: {
      vault_pki_secret_backend_root_cert+: { [terraformName]+: {
        backend: backend,
        common_name: common_name,
        type: type,
      } },
    },
    '#withAltNames': { 'function': { help: |||
      List of alternative names. 
    ||| } },
    withAltNames(value):: self {
      resource+: {
        vault_pki_secret_backend_root_cert+: { [terraformName]+: { alt_names: value } },
      },
    },
    '#withBackend': { 'function': { help: |||
      The PKI secret backend the resource belongs to. 
    ||| } },
    withBackend(value):: self {
      resource+: {
        vault_pki_secret_backend_root_cert+: { [terraformName]+: { backend: value } },
      },
    },
    '#withCertificate': { 'function': { help: |||
      The certificate. 
    ||| } },
    withCertificate(value):: self {
      resource+: {
        vault_pki_secret_backend_root_cert+: { [terraformName]+: { certificate: value } },
      },
    },
    '#withCommonName': { 'function': { help: |||
      CN of root to create. 
    ||| } },
    withCommonName(value):: self {
      resource+: {
        vault_pki_secret_backend_root_cert+: { [terraformName]+: { common_name: value } },
      },
    },
    '#withCountry': { 'function': { help: |||
      The country. 
    ||| } },
    withCountry(value):: self {
      resource+: {
        vault_pki_secret_backend_root_cert+: { [terraformName]+: { country: value } },
      },
    },
    '#withExcludeCnFromSans': { 'function': { help: |||
      Flag to exclude CN from SANs. 
    ||| } },
    withExcludeCnFromSans(value):: self {
      resource+: {
        vault_pki_secret_backend_root_cert+: { [terraformName]+: { exclude_cn_from_sans: value } },
      },
    },
    '#withExcludedDnsDomains': { 'function': { help: |||
      List of domains for which certificates are not allowed to be issued. 
    ||| } },
    withExcludedDnsDomains(value):: self {
      resource+: {
        vault_pki_secret_backend_root_cert+: { [terraformName]+: { excluded_dns_domains: value } },
      },
    },
    '#withExcludedEmailAddresses': { 'function': { help: |||
      List of email addresses for which certificates are not allowed to be issued. 
    ||| } },
    withExcludedEmailAddresses(value):: self {
      resource+: {
        vault_pki_secret_backend_root_cert+: { [terraformName]+: { excluded_email_addresses: value } },
      },
    },
    '#withExcludedIpRanges': { 'function': { help: |||
      List of IP ranges for which certificates are not allowed to be issued. 
    ||| } },
    withExcludedIpRanges(value):: self {
      resource+: {
        vault_pki_secret_backend_root_cert+: { [terraformName]+: { excluded_ip_ranges: value } },
      },
    },
    '#withExcludedUriDomains': { 'function': { help: |||
      List of URI domains for which certificates are not allowed to be issued. 
    ||| } },
    withExcludedUriDomains(value):: self {
      resource+: {
        vault_pki_secret_backend_root_cert+: { [terraformName]+: { excluded_uri_domains: value } },
      },
    },
    '#withFormat': { 'function': { help: |||
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
    '#withIpSans': { 'function': { help: |||
      List of alternative IPs. 
    ||| } },
    withIpSans(value):: self {
      resource+: {
        vault_pki_secret_backend_root_cert+: { [terraformName]+: { ip_sans: value } },
      },
    },
    '#withIssuerId': { 'function': { help: |||
      The ID of the generated issuer. 
    ||| } },
    withIssuerId(value):: self {
      resource+: {
        vault_pki_secret_backend_root_cert+: { [terraformName]+: { issuer_id: value } },
      },
    },
    '#withIssuerName': { 'function': { help: |||
      Provides a name to the specified issuer. The name must be unique across all issuers and not be the reserved value 'default'. 
    ||| } },
    withIssuerName(value):: self {
      resource+: {
        vault_pki_secret_backend_root_cert+: { [terraformName]+: { issuer_name: value } },
      },
    },
    '#withIssuingCa': { 'function': { help: |||
      The issuing CA. 
    ||| } },
    withIssuingCa(value):: self {
      resource+: {
        vault_pki_secret_backend_root_cert+: { [terraformName]+: { issuing_ca: value } },
      },
    },
    '#withKeyBits': { 'function': { help: |||
      The number of bits to use. 
    ||| } },
    withKeyBits(value):: self {
      resource+: {
        vault_pki_secret_backend_root_cert+: { [terraformName]+: { key_bits: value } },
      },
    },
    '#withKeyId': { 'function': { help: |||
      The ID of the generated key. 
    ||| } },
    withKeyId(value):: self {
      resource+: {
        vault_pki_secret_backend_root_cert+: { [terraformName]+: { key_id: value } },
      },
    },
    '#withKeyName': { 'function': { help: |||
      When a new key is created with this request, optionally specifies the name for this. 
    ||| } },
    withKeyName(value):: self {
      resource+: {
        vault_pki_secret_backend_root_cert+: { [terraformName]+: { key_name: value } },
      },
    },
    '#withKeyRef': { 'function': { help: |||
      Specifies the key to use for generating this request. 
    ||| } },
    withKeyRef(value):: self {
      resource+: {
        vault_pki_secret_backend_root_cert+: { [terraformName]+: { key_ref: value } },
      },
    },
    '#withKeyType': { 'function': { help: |||
      The desired key type. 
    ||| } },
    withKeyType(value):: self {
      resource+: {
        vault_pki_secret_backend_root_cert+: { [terraformName]+: { key_type: value } },
      },
    },
    '#withKeyUsage': { 'function': { help: |||
      Specify the allowed key usage constraint on issued certificates. 
    ||| } },
    withKeyUsage(value):: self {
      resource+: {
        vault_pki_secret_backend_root_cert+: { [terraformName]+: { key_usage: value } },
      },
    },
    '#withLocality': { 'function': { help: |||
      The locality. 
    ||| } },
    withLocality(value):: self {
      resource+: {
        vault_pki_secret_backend_root_cert+: { [terraformName]+: { locality: value } },
      },
    },
    '#withManagedKeyId': { 'function': { help: |||
      The ID of the previously configured managed key. 
    ||| } },
    withManagedKeyId(value):: self {
      resource+: {
        vault_pki_secret_backend_root_cert+: { [terraformName]+: { managed_key_id: value } },
      },
    },
    '#withManagedKeyName': { 'function': { help: |||
      The name of the previously configured managed key. 
    ||| } },
    withManagedKeyName(value):: self {
      resource+: {
        vault_pki_secret_backend_root_cert+: { [terraformName]+: { managed_key_name: value } },
      },
    },
    '#withMaxPathLength': { 'function': { help: |||
      The maximum path length to encode in the generated certificate. 
    ||| } },
    withMaxPathLength(value):: self {
      resource+: {
        vault_pki_secret_backend_root_cert+: { [terraformName]+: { max_path_length: value } },
      },
    },
    '#withNamespace': { 'function': { help: |||
      Target namespace. (requires Enterprise) 
    ||| } },
    withNamespace(value):: self {
      resource+: {
        vault_pki_secret_backend_root_cert+: { [terraformName]+: { namespace: value } },
      },
    },
    '#withNotAfter': { 'function': { help: |||
      Set the Not After field of the certificate with specified date value. The value format should be given in UTC format YYYY-MM-ddTHH:MM:SSZ. Supports the Y10K end date for IEEE 802.1AR-2018 standard devices, 9999-12-31T23:59:59Z. 
    ||| } },
    withNotAfter(value):: self {
      resource+: {
        vault_pki_secret_backend_root_cert+: { [terraformName]+: { not_after: value } },
      },
    },
    '#withNotBeforeDuration': { 'function': { help: |||
      Specifies the duration by which to backdate the NotBefore property. 
    ||| } },
    withNotBeforeDuration(value):: self {
      resource+: {
        vault_pki_secret_backend_root_cert+: { [terraformName]+: { not_before_duration: value } },
      },
    },
    '#withOrganization': { 'function': { help: |||
      The organization. 
    ||| } },
    withOrganization(value):: self {
      resource+: {
        vault_pki_secret_backend_root_cert+: { [terraformName]+: { organization: value } },
      },
    },
    '#withOtherSans': { 'function': { help: |||
      List of other SANs. 
    ||| } },
    withOtherSans(value):: self {
      resource+: {
        vault_pki_secret_backend_root_cert+: { [terraformName]+: { other_sans: value } },
      },
    },
    '#withOu': { 'function': { help: |||
      The organization unit. 
    ||| } },
    withOu(value):: self {
      resource+: {
        vault_pki_secret_backend_root_cert+: { [terraformName]+: { ou: value } },
      },
    },
    '#withPermittedDnsDomains': { 'function': { help: |||
      List of domains for which certificates are allowed to be issued. 
    ||| } },
    withPermittedDnsDomains(value):: self {
      resource+: {
        vault_pki_secret_backend_root_cert+: { [terraformName]+: { permitted_dns_domains: value } },
      },
    },
    '#withPermittedEmailAddresses': { 'function': { help: |||
      List of email addresses for which certificates are allowed to be issued. 
    ||| } },
    withPermittedEmailAddresses(value):: self {
      resource+: {
        vault_pki_secret_backend_root_cert+: { [terraformName]+: { permitted_email_addresses: value } },
      },
    },
    '#withPermittedIpRanges': { 'function': { help: |||
      List of IP ranges for which certificates are allowed to be issued. 
    ||| } },
    withPermittedIpRanges(value):: self {
      resource+: {
        vault_pki_secret_backend_root_cert+: { [terraformName]+: { permitted_ip_ranges: value } },
      },
    },
    '#withPermittedUriDomains': { 'function': { help: |||
      List of URI domains for which certificates are allowed to be issued. 
    ||| } },
    withPermittedUriDomains(value):: self {
      resource+: {
        vault_pki_secret_backend_root_cert+: { [terraformName]+: { permitted_uri_domains: value } },
      },
    },
    '#withPostalCode': { 'function': { help: |||
      The postal code. 
    ||| } },
    withPostalCode(value):: self {
      resource+: {
        vault_pki_secret_backend_root_cert+: { [terraformName]+: { postal_code: value } },
      },
    },
    '#withPrivateKeyFormat': { 'function': { help: |||
      The private key format. 
    ||| } },
    withPrivateKeyFormat(value):: self {
      resource+: {
        vault_pki_secret_backend_root_cert+: { [terraformName]+: { private_key_format: value } },
      },
    },
    '#withProvince': { 'function': { help: |||
      The province. 
    ||| } },
    withProvince(value):: self {
      resource+: {
        vault_pki_secret_backend_root_cert+: { [terraformName]+: { province: value } },
      },
    },
    '#withSerialNumber': { 'function': { help: |||
      The certificate's serial number, hex formatted. 
    ||| } },
    withSerialNumber(value):: self {
      resource+: {
        vault_pki_secret_backend_root_cert+: { [terraformName]+: { serial_number: value } },
      },
    },
    '#withSignatureBits': { 'function': { help: |||
      The number of bits to use in the signature algorithm. 
    ||| } },
    withSignatureBits(value):: self {
      resource+: {
        vault_pki_secret_backend_root_cert+: { [terraformName]+: { signature_bits: value } },
      },
    },
    '#withStreetAddress': { 'function': { help: |||
      The street address. 
    ||| } },
    withStreetAddress(value):: self {
      resource+: {
        vault_pki_secret_backend_root_cert+: { [terraformName]+: { street_address: value } },
      },
    },
    '#withTtl': { 'function': { help: |||
      Time to live. 
    ||| } },
    withTtl(value):: self {
      resource+: {
        vault_pki_secret_backend_root_cert+: { [terraformName]+: { ttl: value } },
      },
    },
    '#withType': { 'function': { help: |||
      Type of root to create. Must be either "existing", "exported", "internal" or "kms" 
    ||| } },
    withType(value):: self {
      resource+: {
        vault_pki_secret_backend_root_cert+: { [terraformName]+: { type: value } },
      },
    },
    '#withUriSans': { 'function': { help: |||
      List of alternative URIs. 
    ||| } },
    withUriSans(value):: self {
      resource+: {
        vault_pki_secret_backend_root_cert+: { [terraformName]+: { uri_sans: value } },
      },
    },
    '#withUsePss': { 'function': { help: |||
      Whether to use PSS signatures when using a RSA key-type issuer. 
    ||| } },
    withUsePss(value):: self {
      resource+: {
        vault_pki_secret_backend_root_cert+: { [terraformName]+: { use_pss: value } },
      },
    },
  },
}
