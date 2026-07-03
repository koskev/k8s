{
  new(terraformName, csr, backend, common_name):: {
    _type:: 'tf',
    resource+: {
      vault_pki_secret_backend_root_sign_intermediate+: { [terraformName]+: {
        csr: csr,
        backend: backend,
        common_name: common_name,
      } },
    },
    withAltNames(value):: self {
      resource+: {
        vault_pki_secret_backend_root_sign_intermediate+: { [terraformName]+: { alt_names: value } },
      },
    },
    withStreetAddress(value):: self {
      resource+: {
        vault_pki_secret_backend_root_sign_intermediate+: { [terraformName]+: { street_address: value } },
      },
    },
    withIssuingCa(value):: self {
      resource+: {
        vault_pki_secret_backend_root_sign_intermediate+: { [terraformName]+: { issuing_ca: value } },
      },
    },
    withIpSans(value):: self {
      resource+: {
        vault_pki_secret_backend_root_sign_intermediate+: { [terraformName]+: { ip_sans: value } },
      },
    },
    withCountry(value):: self {
      resource+: {
        vault_pki_secret_backend_root_sign_intermediate+: { [terraformName]+: { country: value } },
      },
    },
    withLocality(value):: self {
      resource+: {
        vault_pki_secret_backend_root_sign_intermediate+: { [terraformName]+: { locality: value } },
      },
    },
    withCsr(value):: self {
      resource+: {
        vault_pki_secret_backend_root_sign_intermediate+: { [terraformName]+: { csr: value } },
      },
    },
    withBackend(value):: self {
      resource+: {
        vault_pki_secret_backend_root_sign_intermediate+: { [terraformName]+: { backend: value } },
      },
    },
    withOtherSans(value):: self {
      resource+: {
        vault_pki_secret_backend_root_sign_intermediate+: { [terraformName]+: { other_sans: value } },
      },
    },
    withProvince(value):: self {
      resource+: {
        vault_pki_secret_backend_root_sign_intermediate+: { [terraformName]+: { province: value } },
      },
    },
    withExcludedDnsDomains(value):: self {
      resource+: {
        vault_pki_secret_backend_root_sign_intermediate+: { [terraformName]+: { excluded_dns_domains: value } },
      },
    },
    withExcludedEmailAddresses(value):: self {
      resource+: {
        vault_pki_secret_backend_root_sign_intermediate+: { [terraformName]+: { excluded_email_addresses: value } },
      },
    },
    withId(value):: self {
      resource+: {
        vault_pki_secret_backend_root_sign_intermediate+: { [terraformName]+: { id: value } },
      },
    },
    withPermittedUriDomains(value):: self {
      resource+: {
        vault_pki_secret_backend_root_sign_intermediate+: { [terraformName]+: { permitted_uri_domains: value } },
      },
    },
    withUseCsrValues(value):: self {
      resource+: {
        vault_pki_secret_backend_root_sign_intermediate+: { [terraformName]+: { use_csr_values: value } },
      },
    },
    withIssuerRef(value):: self {
      resource+: {
        vault_pki_secret_backend_root_sign_intermediate+: { [terraformName]+: { issuer_ref: value } },
      },
    },
    withSkid(value):: self {
      resource+: {
        vault_pki_secret_backend_root_sign_intermediate+: { [terraformName]+: { skid: value } },
      },
    },
    withCommonName(value):: self {
      resource+: {
        vault_pki_secret_backend_root_sign_intermediate+: { [terraformName]+: { common_name: value } },
      },
    },
    withSignatureBits(value):: self {
      resource+: {
        vault_pki_secret_backend_root_sign_intermediate+: { [terraformName]+: { signature_bits: value } },
      },
    },
    withMaxPathLength(value):: self {
      resource+: {
        vault_pki_secret_backend_root_sign_intermediate+: { [terraformName]+: { max_path_length: value } },
      },
    },
    withUsePss(value):: self {
      resource+: {
        vault_pki_secret_backend_root_sign_intermediate+: { [terraformName]+: { use_pss: value } },
      },
    },
    withPermittedIpRanges(value):: self {
      resource+: {
        vault_pki_secret_backend_root_sign_intermediate+: { [terraformName]+: { permitted_ip_ranges: value } },
      },
    },
    withPermittedEmailAddresses(value):: self {
      resource+: {
        vault_pki_secret_backend_root_sign_intermediate+: { [terraformName]+: { permitted_email_addresses: value } },
      },
    },
    withRevoke(value):: self {
      resource+: {
        vault_pki_secret_backend_root_sign_intermediate+: { [terraformName]+: { revoke: value } },
      },
    },
    withTtl(value):: self {
      resource+: {
        vault_pki_secret_backend_root_sign_intermediate+: { [terraformName]+: { ttl: value } },
      },
    },
    withCertificate(value):: self {
      resource+: {
        vault_pki_secret_backend_root_sign_intermediate+: { [terraformName]+: { certificate: value } },
      },
    },
    withCaChain(value):: self {
      resource+: {
        vault_pki_secret_backend_root_sign_intermediate+: { [terraformName]+: { ca_chain: value } },
      },
    },
    withNotBeforeDuration(value):: self {
      resource+: {
        vault_pki_secret_backend_root_sign_intermediate+: { [terraformName]+: { not_before_duration: value } },
      },
    },
    withExcludedIpRanges(value):: self {
      resource+: {
        vault_pki_secret_backend_root_sign_intermediate+: { [terraformName]+: { excluded_ip_ranges: value } },
      },
    },
    withCertificateBundle(value):: self {
      resource+: {
        vault_pki_secret_backend_root_sign_intermediate+: { [terraformName]+: { certificate_bundle: value } },
      },
    },
    withExcludedUriDomains(value):: self {
      resource+: {
        vault_pki_secret_backend_root_sign_intermediate+: { [terraformName]+: { excluded_uri_domains: value } },
      },
    },
    withUriSans(value):: self {
      resource+: {
        vault_pki_secret_backend_root_sign_intermediate+: { [terraformName]+: { uri_sans: value } },
      },
    },
    withOrganization(value):: self {
      resource+: {
        vault_pki_secret_backend_root_sign_intermediate+: { [terraformName]+: { organization: value } },
      },
    },
    withExcludeCnFromSans(value):: self {
      resource+: {
        vault_pki_secret_backend_root_sign_intermediate+: { [terraformName]+: { exclude_cn_from_sans: value } },
      },
    },
    withFormat(value):: self {
      resource+: {
        vault_pki_secret_backend_root_sign_intermediate+: { [terraformName]+: { format: value } },
      },
    },
    withKeyUsage(value):: self {
      resource+: {
        vault_pki_secret_backend_root_sign_intermediate+: { [terraformName]+: { key_usage: value } },
      },
    },
    withNamespace(value):: self {
      resource+: {
        vault_pki_secret_backend_root_sign_intermediate+: { [terraformName]+: { namespace: value } },
      },
    },
    withNotAfter(value):: self {
      resource+: {
        vault_pki_secret_backend_root_sign_intermediate+: { [terraformName]+: { not_after: value } },
      },
    },
    withPermittedDnsDomains(value):: self {
      resource+: {
        vault_pki_secret_backend_root_sign_intermediate+: { [terraformName]+: { permitted_dns_domains: value } },
      },
    },
    withSerialNumber(value):: self {
      resource+: {
        vault_pki_secret_backend_root_sign_intermediate+: { [terraformName]+: { serial_number: value } },
      },
    },
    withPostalCode(value):: self {
      resource+: {
        vault_pki_secret_backend_root_sign_intermediate+: { [terraformName]+: { postal_code: value } },
      },
    },
    withOu(value):: self {
      resource+: {
        vault_pki_secret_backend_root_sign_intermediate+: { [terraformName]+: { ou: value } },
      },
    },
  },
}
