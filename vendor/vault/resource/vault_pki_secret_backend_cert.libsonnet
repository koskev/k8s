{
  new(terraformName, backend, name, common_name):: {
    _type:: 'tf',
    resource+: {
      vault_pki_secret_backend_cert+: { [terraformName]+: {
        backend: backend,
        name: name,
        common_name: common_name,
      } },
    },
    withPrivateKey(value):: self {
      resource+: {
        vault_pki_secret_backend_cert+: { [terraformName]+: { private_key: value } },
      },
    },
    withIssuerRef(value):: self {
      resource+: {
        vault_pki_secret_backend_cert+: { [terraformName]+: { issuer_ref: value } },
      },
    },
    withExpiration(value):: self {
      resource+: {
        vault_pki_secret_backend_cert+: { [terraformName]+: { expiration: value } },
      },
    },
    withAltNames(value):: self {
      resource+: {
        vault_pki_secret_backend_cert+: { [terraformName]+: { alt_names: value } },
      },
    },
    withAutoRenew(value):: self {
      resource+: {
        vault_pki_secret_backend_cert+: { [terraformName]+: { auto_renew: value } },
      },
    },
    withRevokeWithKey(value):: self {
      resource+: {
        vault_pki_secret_backend_cert+: { [terraformName]+: { revoke_with_key: value } },
      },
    },
    withNotAfter(value):: self {
      resource+: {
        vault_pki_secret_backend_cert+: { [terraformName]+: { not_after: value } },
      },
    },
    withExcludeCnFromSans(value):: self {
      resource+: {
        vault_pki_secret_backend_cert+: { [terraformName]+: { exclude_cn_from_sans: value } },
      },
    },
    withFormat(value):: self {
      resource+: {
        vault_pki_secret_backend_cert+: { [terraformName]+: { format: value } },
      },
    },
    withIpSans(value):: self {
      resource+: {
        vault_pki_secret_backend_cert+: { [terraformName]+: { ip_sans: value } },
      },
    },
    withIssuingCa(value):: self {
      resource+: {
        vault_pki_secret_backend_cert+: { [terraformName]+: { issuing_ca: value } },
      },
    },
    withCertificate(value):: self {
      resource+: {
        vault_pki_secret_backend_cert+: { [terraformName]+: { certificate: value } },
      },
    },
    withRevoke(value):: self {
      resource+: {
        vault_pki_secret_backend_cert+: { [terraformName]+: { revoke: value } },
      },
    },
    withCaChain(value):: self {
      resource+: {
        vault_pki_secret_backend_cert+: { [terraformName]+: { ca_chain: value } },
      },
    },
    withPrivateKeyFormat(value):: self {
      resource+: {
        vault_pki_secret_backend_cert+: { [terraformName]+: { private_key_format: value } },
      },
    },
    withBackend(value):: self {
      resource+: {
        vault_pki_secret_backend_cert+: { [terraformName]+: { backend: value } },
      },
    },
    withRemoveRootsFromChain(value):: self {
      resource+: {
        vault_pki_secret_backend_cert+: { [terraformName]+: { remove_roots_from_chain: value } },
      },
    },
    withMinSecondsRemaining(value):: self {
      resource+: {
        vault_pki_secret_backend_cert+: { [terraformName]+: { min_seconds_remaining: value } },
      },
    },
    withCertMetadata(value):: self {
      resource+: {
        vault_pki_secret_backend_cert+: { [terraformName]+: { cert_metadata: value } },
      },
    },
    withSerialNumber(value):: self {
      resource+: {
        vault_pki_secret_backend_cert+: { [terraformName]+: { serial_number: value } },
      },
    },
    withUriSans(value):: self {
      resource+: {
        vault_pki_secret_backend_cert+: { [terraformName]+: { uri_sans: value } },
      },
    },
    withOtherSans(value):: self {
      resource+: {
        vault_pki_secret_backend_cert+: { [terraformName]+: { other_sans: value } },
      },
    },
    withTtl(value):: self {
      resource+: {
        vault_pki_secret_backend_cert+: { [terraformName]+: { ttl: value } },
      },
    },
    withName(value):: self {
      resource+: {
        vault_pki_secret_backend_cert+: { [terraformName]+: { name: value } },
      },
    },
    withUserIds(value):: self {
      resource+: {
        vault_pki_secret_backend_cert+: { [terraformName]+: { user_ids: value } },
      },
    },
    withNamespace(value):: self {
      resource+: {
        vault_pki_secret_backend_cert+: { [terraformName]+: { namespace: value } },
      },
    },
    withPrivateKeyType(value):: self {
      resource+: {
        vault_pki_secret_backend_cert+: { [terraformName]+: { private_key_type: value } },
      },
    },
    withCommonName(value):: self {
      resource+: {
        vault_pki_secret_backend_cert+: { [terraformName]+: { common_name: value } },
      },
    },
    withRenewPending(value):: self {
      resource+: {
        vault_pki_secret_backend_cert+: { [terraformName]+: { renew_pending: value } },
      },
    },
    withId(value):: self {
      resource+: {
        vault_pki_secret_backend_cert+: { [terraformName]+: { id: value } },
      },
    },
  },
}
