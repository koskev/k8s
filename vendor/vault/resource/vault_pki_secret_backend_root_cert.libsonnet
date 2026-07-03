{
  new(terraformName, common_name, backend, type):: {
    _type:: 'tf',
    resource+: {
      vault_pki_secret_backend_root_cert+: { [terraformName]+: {
        common_name: common_name,
        backend: backend,
        type: type,
      } },
    },
    withPermittedEmailAddresses(value):: self {
      resource+: {
        vault_pki_secret_backend_root_cert+: { [terraformName]+: { permitted_email_addresses: value } },
      },
    },
    withCertificate(value):: self {
      resource+: {
        vault_pki_secret_backend_root_cert+: { [terraformName]+: { certificate: value } },
      },
    },
    withNotBeforeDuration(value):: self {
      resource+: {
        vault_pki_secret_backend_root_cert+: { [terraformName]+: { not_before_duration: value } },
      },
    },
    withCommonName(value):: self {
      resource+: {
        vault_pki_secret_backend_root_cert+: { [terraformName]+: { common_name: value } },
      },
    },
    withCountry(value):: self {
      resource+: {
        vault_pki_secret_backend_root_cert+: { [terraformName]+: { country: value } },
      },
    },
    withPermittedUriDomains(value):: self {
      resource+: {
        vault_pki_secret_backend_root_cert+: { [terraformName]+: { permitted_uri_domains: value } },
      },
    },
    withId(value):: self {
      resource+: {
        vault_pki_secret_backend_root_cert+: { [terraformName]+: { id: value } },
      },
    },
    withTtl(value):: self {
      resource+: {
        vault_pki_secret_backend_root_cert+: { [terraformName]+: { ttl: value } },
      },
    },
    withUriSans(value):: self {
      resource+: {
        vault_pki_secret_backend_root_cert+: { [terraformName]+: { uri_sans: value } },
      },
    },
    withUsePss(value):: self {
      resource+: {
        vault_pki_secret_backend_root_cert+: { [terraformName]+: { use_pss: value } },
      },
    },
    withSignatureBits(value):: self {
      resource+: {
        vault_pki_secret_backend_root_cert+: { [terraformName]+: { signature_bits: value } },
      },
    },
    withStreetAddress(value):: self {
      resource+: {
        vault_pki_secret_backend_root_cert+: { [terraformName]+: { street_address: value } },
      },
    },
    withOrganization(value):: self {
      resource+: {
        vault_pki_secret_backend_root_cert+: { [terraformName]+: { organization: value } },
      },
    },
    withMaxPathLength(value):: self {
      resource+: {
        vault_pki_secret_backend_root_cert+: { [terraformName]+: { max_path_length: value } },
      },
    },
    withPrivateKeyFormat(value):: self {
      resource+: {
        vault_pki_secret_backend_root_cert+: { [terraformName]+: { private_key_format: value } },
      },
    },
    withPermittedIpRanges(value):: self {
      resource+: {
        vault_pki_secret_backend_root_cert+: { [terraformName]+: { permitted_ip_ranges: value } },
      },
    },
    withExcludedEmailAddresses(value):: self {
      resource+: {
        vault_pki_secret_backend_root_cert+: { [terraformName]+: { excluded_email_addresses: value } },
      },
    },
    withExcludedDnsDomains(value):: self {
      resource+: {
        vault_pki_secret_backend_root_cert+: { [terraformName]+: { excluded_dns_domains: value } },
      },
    },
    withExcludeCnFromSans(value):: self {
      resource+: {
        vault_pki_secret_backend_root_cert+: { [terraformName]+: { exclude_cn_from_sans: value } },
      },
    },
    withKeyType(value):: self {
      resource+: {
        vault_pki_secret_backend_root_cert+: { [terraformName]+: { key_type: value } },
      },
    },
    withIssuerId(value):: self {
      resource+: {
        vault_pki_secret_backend_root_cert+: { [terraformName]+: { issuer_id: value } },
      },
    },
    withKeyRef(value):: self {
      resource+: {
        vault_pki_secret_backend_root_cert+: { [terraformName]+: { key_ref: value } },
      },
    },
    withIssuerName(value):: self {
      resource+: {
        vault_pki_secret_backend_root_cert+: { [terraformName]+: { issuer_name: value } },
      },
    },
    withOtherSans(value):: self {
      resource+: {
        vault_pki_secret_backend_root_cert+: { [terraformName]+: { other_sans: value } },
      },
    },
    withKeyName(value):: self {
      resource+: {
        vault_pki_secret_backend_root_cert+: { [terraformName]+: { key_name: value } },
      },
    },
    withNotAfter(value):: self {
      resource+: {
        vault_pki_secret_backend_root_cert+: { [terraformName]+: { not_after: value } },
      },
    },
    withLocality(value):: self {
      resource+: {
        vault_pki_secret_backend_root_cert+: { [terraformName]+: { locality: value } },
      },
    },
    withBackend(value):: self {
      resource+: {
        vault_pki_secret_backend_root_cert+: { [terraformName]+: { backend: value } },
      },
    },
    withManagedKeyName(value):: self {
      resource+: {
        vault_pki_secret_backend_root_cert+: { [terraformName]+: { managed_key_name: value } },
      },
    },
    withFormat(value):: self {
      resource+: {
        vault_pki_secret_backend_root_cert+: { [terraformName]+: { format: value } },
      },
    },
    withNamespace(value):: self {
      resource+: {
        vault_pki_secret_backend_root_cert+: { [terraformName]+: { namespace: value } },
      },
    },
    withKeyUsage(value):: self {
      resource+: {
        vault_pki_secret_backend_root_cert+: { [terraformName]+: { key_usage: value } },
      },
    },
    withSerialNumber(value):: self {
      resource+: {
        vault_pki_secret_backend_root_cert+: { [terraformName]+: { serial_number: value } },
      },
    },
    withPostalCode(value):: self {
      resource+: {
        vault_pki_secret_backend_root_cert+: { [terraformName]+: { postal_code: value } },
      },
    },
    withIssuingCa(value):: self {
      resource+: {
        vault_pki_secret_backend_root_cert+: { [terraformName]+: { issuing_ca: value } },
      },
    },
    withManagedKeyId(value):: self {
      resource+: {
        vault_pki_secret_backend_root_cert+: { [terraformName]+: { managed_key_id: value } },
      },
    },
    withType(value):: self {
      resource+: {
        vault_pki_secret_backend_root_cert+: { [terraformName]+: { type: value } },
      },
    },
    withKeyBits(value):: self {
      resource+: {
        vault_pki_secret_backend_root_cert+: { [terraformName]+: { key_bits: value } },
      },
    },
    withKeyId(value):: self {
      resource+: {
        vault_pki_secret_backend_root_cert+: { [terraformName]+: { key_id: value } },
      },
    },
    withProvince(value):: self {
      resource+: {
        vault_pki_secret_backend_root_cert+: { [terraformName]+: { province: value } },
      },
    },
    withAltNames(value):: self {
      resource+: {
        vault_pki_secret_backend_root_cert+: { [terraformName]+: { alt_names: value } },
      },
    },
    withOu(value):: self {
      resource+: {
        vault_pki_secret_backend_root_cert+: { [terraformName]+: { ou: value } },
      },
    },
    withExcludedUriDomains(value):: self {
      resource+: {
        vault_pki_secret_backend_root_cert+: { [terraformName]+: { excluded_uri_domains: value } },
      },
    },
    withIpSans(value):: self {
      resource+: {
        vault_pki_secret_backend_root_cert+: { [terraformName]+: { ip_sans: value } },
      },
    },
    withPermittedDnsDomains(value):: self {
      resource+: {
        vault_pki_secret_backend_root_cert+: { [terraformName]+: { permitted_dns_domains: value } },
      },
    },
    withExcludedIpRanges(value):: self {
      resource+: {
        vault_pki_secret_backend_root_cert+: { [terraformName]+: { excluded_ip_ranges: value } },
      },
    },
  },
}
