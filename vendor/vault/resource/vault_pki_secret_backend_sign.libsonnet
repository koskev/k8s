{
  new(terraformName, common_name, backend, name, csr):: {
    _type:: 'tf',
    resource+: {
      vault_pki_secret_backend_sign+: { [terraformName]+: {
        common_name: common_name,
        backend: backend,
        name: name,
        csr: csr,
      } },
    },
    withIpSans(value):: self {
      resource+: {
        vault_pki_secret_backend_sign+: { [terraformName]+: { ip_sans: value } },
      },
    },
    withExcludeCnFromSans(value):: self {
      resource+: {
        vault_pki_secret_backend_sign+: { [terraformName]+: { exclude_cn_from_sans: value } },
      },
    },
    withExpiration(value):: self {
      resource+: {
        vault_pki_secret_backend_sign+: { [terraformName]+: { expiration: value } },
      },
    },
    withFormat(value):: self {
      resource+: {
        vault_pki_secret_backend_sign+: { [terraformName]+: { format: value } },
      },
    },
    withCommonName(value):: self {
      resource+: {
        vault_pki_secret_backend_sign+: { [terraformName]+: { common_name: value } },
      },
    },
    withId(value):: self {
      resource+: {
        vault_pki_secret_backend_sign+: { [terraformName]+: { id: value } },
      },
    },
    withAltNames(value):: self {
      resource+: {
        vault_pki_secret_backend_sign+: { [terraformName]+: { alt_names: value } },
      },
    },
    withIssuingCa(value):: self {
      resource+: {
        vault_pki_secret_backend_sign+: { [terraformName]+: { issuing_ca: value } },
      },
    },
    withAutoRenew(value):: self {
      resource+: {
        vault_pki_secret_backend_sign+: { [terraformName]+: { auto_renew: value } },
      },
    },
    withMinSecondsRemaining(value):: self {
      resource+: {
        vault_pki_secret_backend_sign+: { [terraformName]+: { min_seconds_remaining: value } },
      },
    },
    withCaChain(value):: self {
      resource+: {
        vault_pki_secret_backend_sign+: { [terraformName]+: { ca_chain: value } },
      },
    },
    withNamespace(value):: self {
      resource+: {
        vault_pki_secret_backend_sign+: { [terraformName]+: { namespace: value } },
      },
    },
    withNotAfter(value):: self {
      resource+: {
        vault_pki_secret_backend_sign+: { [terraformName]+: { not_after: value } },
      },
    },
    withIssuerRef(value):: self {
      resource+: {
        vault_pki_secret_backend_sign+: { [terraformName]+: { issuer_ref: value } },
      },
    },
    withOtherSans(value):: self {
      resource+: {
        vault_pki_secret_backend_sign+: { [terraformName]+: { other_sans: value } },
      },
    },
    withRenewPending(value):: self {
      resource+: {
        vault_pki_secret_backend_sign+: { [terraformName]+: { renew_pending: value } },
      },
    },
    withCertificate(value):: self {
      resource+: {
        vault_pki_secret_backend_sign+: { [terraformName]+: { certificate: value } },
      },
    },
    withSerialNumber(value):: self {
      resource+: {
        vault_pki_secret_backend_sign+: { [terraformName]+: { serial_number: value } },
      },
    },
    withTtl(value):: self {
      resource+: {
        vault_pki_secret_backend_sign+: { [terraformName]+: { ttl: value } },
      },
    },
    withCertMetadata(value):: self {
      resource+: {
        vault_pki_secret_backend_sign+: { [terraformName]+: { cert_metadata: value } },
      },
    },
    withBackend(value):: self {
      resource+: {
        vault_pki_secret_backend_sign+: { [terraformName]+: { backend: value } },
      },
    },
    withName(value):: self {
      resource+: {
        vault_pki_secret_backend_sign+: { [terraformName]+: { name: value } },
      },
    },
    withUriSans(value):: self {
      resource+: {
        vault_pki_secret_backend_sign+: { [terraformName]+: { uri_sans: value } },
      },
    },
    withCsr(value):: self {
      resource+: {
        vault_pki_secret_backend_sign+: { [terraformName]+: { csr: value } },
      },
    },
    withRemoveRootsFromChain(value):: self {
      resource+: {
        vault_pki_secret_backend_sign+: { [terraformName]+: { remove_roots_from_chain: value } },
      },
    },
  },
}
