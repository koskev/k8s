{
  new(terraformName, type, backend, common_name):: {
    _type:: 'tf',
    resource+: {
      vault_pki_secret_backend_intermediate_cert_request+: { [terraformName]+: {
        type: type,
        backend: backend,
        common_name: common_name,
      } },
    },
    withKeyUsage(value):: self {
      resource+: {
        vault_pki_secret_backend_intermediate_cert_request+: { [terraformName]+: { key_usage: value } },
      },
    },
    withFormat(value):: self {
      resource+: {
        vault_pki_secret_backend_intermediate_cert_request+: { [terraformName]+: { format: value } },
      },
    },
    withKeyName(value):: self {
      resource+: {
        vault_pki_secret_backend_intermediate_cert_request+: { [terraformName]+: { key_name: value } },
      },
    },
    withType(value):: self {
      resource+: {
        vault_pki_secret_backend_intermediate_cert_request+: { [terraformName]+: { type: value } },
      },
    },
    withUriSans(value):: self {
      resource+: {
        vault_pki_secret_backend_intermediate_cert_request+: { [terraformName]+: { uri_sans: value } },
      },
    },
    withKeyType(value):: self {
      resource+: {
        vault_pki_secret_backend_intermediate_cert_request+: { [terraformName]+: { key_type: value } },
      },
    },
    withSignatureBits(value):: self {
      resource+: {
        vault_pki_secret_backend_intermediate_cert_request+: { [terraformName]+: { signature_bits: value } },
      },
    },
    withLocality(value):: self {
      resource+: {
        vault_pki_secret_backend_intermediate_cert_request+: { [terraformName]+: { locality: value } },
      },
    },
    withPrivateKeyType(value):: self {
      resource+: {
        vault_pki_secret_backend_intermediate_cert_request+: { [terraformName]+: { private_key_type: value } },
      },
    },
    withSerialNumber(value):: self {
      resource+: {
        vault_pki_secret_backend_intermediate_cert_request+: { [terraformName]+: { serial_number: value } },
      },
    },
    withCsr(value):: self {
      resource+: {
        vault_pki_secret_backend_intermediate_cert_request+: { [terraformName]+: { csr: value } },
      },
    },
    withAltNames(value):: self {
      resource+: {
        vault_pki_secret_backend_intermediate_cert_request+: { [terraformName]+: { alt_names: value } },
      },
    },
    withOtherSans(value):: self {
      resource+: {
        vault_pki_secret_backend_intermediate_cert_request+: { [terraformName]+: { other_sans: value } },
      },
    },
    withManagedKeyId(value):: self {
      resource+: {
        vault_pki_secret_backend_intermediate_cert_request+: { [terraformName]+: { managed_key_id: value } },
      },
    },
    withKeyId(value):: self {
      resource+: {
        vault_pki_secret_backend_intermediate_cert_request+: { [terraformName]+: { key_id: value } },
      },
    },
    withOrganization(value):: self {
      resource+: {
        vault_pki_secret_backend_intermediate_cert_request+: { [terraformName]+: { organization: value } },
      },
    },
    withBackend(value):: self {
      resource+: {
        vault_pki_secret_backend_intermediate_cert_request+: { [terraformName]+: { backend: value } },
      },
    },
    withId(value):: self {
      resource+: {
        vault_pki_secret_backend_intermediate_cert_request+: { [terraformName]+: { id: value } },
      },
    },
    withKeyRef(value):: self {
      resource+: {
        vault_pki_secret_backend_intermediate_cert_request+: { [terraformName]+: { key_ref: value } },
      },
    },
    withPostalCode(value):: self {
      resource+: {
        vault_pki_secret_backend_intermediate_cert_request+: { [terraformName]+: { postal_code: value } },
      },
    },
    withOu(value):: self {
      resource+: {
        vault_pki_secret_backend_intermediate_cert_request+: { [terraformName]+: { ou: value } },
      },
    },
    withCountry(value):: self {
      resource+: {
        vault_pki_secret_backend_intermediate_cert_request+: { [terraformName]+: { country: value } },
      },
    },
    withAddBasicConstraints(value):: self {
      resource+: {
        vault_pki_secret_backend_intermediate_cert_request+: { [terraformName]+: { add_basic_constraints: value } },
      },
    },
    withNamespace(value):: self {
      resource+: {
        vault_pki_secret_backend_intermediate_cert_request+: { [terraformName]+: { namespace: value } },
      },
    },
    withPrivateKey(value):: self {
      resource+: {
        vault_pki_secret_backend_intermediate_cert_request+: { [terraformName]+: { private_key: value } },
      },
    },
    withPrivateKeyFormat(value):: self {
      resource+: {
        vault_pki_secret_backend_intermediate_cert_request+: { [terraformName]+: { private_key_format: value } },
      },
    },
    withStreetAddress(value):: self {
      resource+: {
        vault_pki_secret_backend_intermediate_cert_request+: { [terraformName]+: { street_address: value } },
      },
    },
    withExcludeCnFromSans(value):: self {
      resource+: {
        vault_pki_secret_backend_intermediate_cert_request+: { [terraformName]+: { exclude_cn_from_sans: value } },
      },
    },
    withIpSans(value):: self {
      resource+: {
        vault_pki_secret_backend_intermediate_cert_request+: { [terraformName]+: { ip_sans: value } },
      },
    },
    withKeyBits(value):: self {
      resource+: {
        vault_pki_secret_backend_intermediate_cert_request+: { [terraformName]+: { key_bits: value } },
      },
    },
    withProvince(value):: self {
      resource+: {
        vault_pki_secret_backend_intermediate_cert_request+: { [terraformName]+: { province: value } },
      },
    },
    withCommonName(value):: self {
      resource+: {
        vault_pki_secret_backend_intermediate_cert_request+: { [terraformName]+: { common_name: value } },
      },
    },
    withManagedKeyName(value):: self {
      resource+: {
        vault_pki_secret_backend_intermediate_cert_request+: { [terraformName]+: { managed_key_name: value } },
      },
    },
  },
}
