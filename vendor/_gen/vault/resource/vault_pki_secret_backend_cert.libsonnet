{
  new(terraformName, backend, common_name, name):: {
    _type:: 'tf',
    resource+: {
      vault_pki_secret_backend_cert+: { [terraformName]+: {
        backend: backend,
        common_name: common_name,
        name: name,
      } },
    },
    '#withAltNames':: { 'function': { help: |||
      List of alternative names. 
    ||| } },
    withAltNames(value):: self {
      resource+: {
        vault_pki_secret_backend_cert+: { [terraformName]+: { alt_names: value } },
      },
    },
    '#withAutoRenew':: { 'function': { help: |||
      If enabled, a new certificate will be generated if the expiration is within min_seconds_remaining 
    ||| } },
    withAutoRenew(value):: self {
      resource+: {
        vault_pki_secret_backend_cert+: { [terraformName]+: { auto_renew: value } },
      },
    },
    '#withBackend':: { 'function': { help: |||
      The PKI secret backend the resource belongs to. 
    ||| } },
    withBackend(value):: self {
      resource+: {
        vault_pki_secret_backend_cert+: { [terraformName]+: { backend: value } },
      },
    },
    '#withCaChain':: { 'function': { help: |||
      The CA chain. 
    ||| } },
    withCaChain(value):: self {
      resource+: {
        vault_pki_secret_backend_cert+: { [terraformName]+: { ca_chain: value } },
      },
    },
    '#withCertMetadata':: { 'function': { help: |||
      A base 64 encoded value or an empty string to associate with the certificate's serial number. The role's no_store_metadata must be set to false, otherwise an error is returned when specified. 
    ||| } },
    withCertMetadata(value):: self {
      resource+: {
        vault_pki_secret_backend_cert+: { [terraformName]+: { cert_metadata: value } },
      },
    },
    '#withCertificate':: { 'function': { help: |||
      The certicate. 
    ||| } },
    withCertificate(value):: self {
      resource+: {
        vault_pki_secret_backend_cert+: { [terraformName]+: { certificate: value } },
      },
    },
    '#withCommonName':: { 'function': { help: |||
      CN of the certificate to create. 
    ||| } },
    withCommonName(value):: self {
      resource+: {
        vault_pki_secret_backend_cert+: { [terraformName]+: { common_name: value } },
      },
    },
    '#withExcludeCnFromSans':: { 'function': { help: |||
      Flag to exclude CN from SANs. 
    ||| } },
    withExcludeCnFromSans(value):: self {
      resource+: {
        vault_pki_secret_backend_cert+: { [terraformName]+: { exclude_cn_from_sans: value } },
      },
    },
    '#withExpiration':: { 'function': { help: |||
      The certificate expiration as a Unix-style timestamp. 
    ||| } },
    withExpiration(value):: self {
      resource+: {
        vault_pki_secret_backend_cert+: { [terraformName]+: { expiration: value } },
      },
    },
    '#withFormat':: { 'function': { help: |||
      The format of data. 
    ||| } },
    withFormat(value):: self {
      resource+: {
        vault_pki_secret_backend_cert+: { [terraformName]+: { format: value } },
      },
    },
    withId(value):: self {
      resource+: {
        vault_pki_secret_backend_cert+: { [terraformName]+: { id: value } },
      },
    },
    '#withIpSans':: { 'function': { help: |||
      List of alternative IPs. 
    ||| } },
    withIpSans(value):: self {
      resource+: {
        vault_pki_secret_backend_cert+: { [terraformName]+: { ip_sans: value } },
      },
    },
    '#withIssuerRef':: { 'function': { help: |||
      Specifies the default issuer of this request. 
    ||| } },
    withIssuerRef(value):: self {
      resource+: {
        vault_pki_secret_backend_cert+: { [terraformName]+: { issuer_ref: value } },
      },
    },
    '#withIssuingCa':: { 'function': { help: |||
      The issuing CA. 
    ||| } },
    withIssuingCa(value):: self {
      resource+: {
        vault_pki_secret_backend_cert+: { [terraformName]+: { issuing_ca: value } },
      },
    },
    '#withMinSecondsRemaining':: { 'function': { help: |||
      Generate a new certificate when the expiration is within this number of seconds 
    ||| } },
    withMinSecondsRemaining(value):: self {
      resource+: {
        vault_pki_secret_backend_cert+: { [terraformName]+: { min_seconds_remaining: value } },
      },
    },
    '#withName':: { 'function': { help: |||
      Name of the role to create the certificate against. 
    ||| } },
    withName(value):: self {
      resource+: {
        vault_pki_secret_backend_cert+: { [terraformName]+: { name: value } },
      },
    },
    '#withNamespace':: { 'function': { help: |||
      Target namespace. (requires Enterprise) 
    ||| } },
    withNamespace(value):: self {
      resource+: {
        vault_pki_secret_backend_cert+: { [terraformName]+: { namespace: value } },
      },
    },
    '#withNotAfter':: { 'function': { help: |||
      Set the Not After field of the certificate with specified date value. The value format should be given in UTC format YYYY-MM-ddTHH:MM:SSZ. Supports the Y10K end date for IEEE 802.1AR-2018 standard devices, 9999-12-31T23:59:59Z. 
    ||| } },
    withNotAfter(value):: self {
      resource+: {
        vault_pki_secret_backend_cert+: { [terraformName]+: { not_after: value } },
      },
    },
    '#withOtherSans':: { 'function': { help: |||
      List of other SANs. 
    ||| } },
    withOtherSans(value):: self {
      resource+: {
        vault_pki_secret_backend_cert+: { [terraformName]+: { other_sans: value } },
      },
    },
    '#withPrivateKey':: { 'function': { help: |||
      The private key. 
    ||| } },
    withPrivateKey(value):: self {
      resource+: {
        vault_pki_secret_backend_cert+: { [terraformName]+: { private_key: value } },
      },
    },
    '#withPrivateKeyFormat':: { 'function': { help: |||
      The private key format. 
    ||| } },
    withPrivateKeyFormat(value):: self {
      resource+: {
        vault_pki_secret_backend_cert+: { [terraformName]+: { private_key_format: value } },
      },
    },
    '#withPrivateKeyType':: { 'function': { help: |||
      The private key type. 
    ||| } },
    withPrivateKeyType(value):: self {
      resource+: {
        vault_pki_secret_backend_cert+: { [terraformName]+: { private_key_type: value } },
      },
    },
    '#withRemoveRootsFromChain':: { 'function': { help: |||
      If true, the returned ca_chain field will not include any self-signed CA certificates. Useful if end-users already have the root CA in their trust store. 
    ||| } },
    withRemoveRootsFromChain(value):: self {
      resource+: {
        vault_pki_secret_backend_cert+: { [terraformName]+: { remove_roots_from_chain: value } },
      },
    },
    '#withRenewPending':: { 'function': { help: |||
      Initially false, and then set to true during refresh once the expiration is less than min_seconds_remaining in the future. 
    ||| } },
    withRenewPending(value):: self {
      resource+: {
        vault_pki_secret_backend_cert+: { [terraformName]+: { renew_pending: value } },
      },
    },
    '#withRevoke':: { 'function': { help: |||
      Revoke the certificate upon resource destruction. 
    ||| } },
    withRevoke(value):: self {
      resource+: {
        vault_pki_secret_backend_cert+: { [terraformName]+: { revoke: value } },
      },
    },
    '#withRevokeWithKey':: { 'function': { help: |||
      Revoke the certificate with private key method upon resource destruction. 
    ||| } },
    withRevokeWithKey(value):: self {
      resource+: {
        vault_pki_secret_backend_cert+: { [terraformName]+: { revoke_with_key: value } },
      },
    },
    '#withSerialNumber':: { 'function': { help: |||
      The serial number. 
    ||| } },
    withSerialNumber(value):: self {
      resource+: {
        vault_pki_secret_backend_cert+: { [terraformName]+: { serial_number: value } },
      },
    },
    '#withTtl':: { 'function': { help: |||
      Time to live. 
    ||| } },
    withTtl(value):: self {
      resource+: {
        vault_pki_secret_backend_cert+: { [terraformName]+: { ttl: value } },
      },
    },
    '#withUriSans':: { 'function': { help: |||
      List of alternative URIs. 
    ||| } },
    withUriSans(value):: self {
      resource+: {
        vault_pki_secret_backend_cert+: { [terraformName]+: { uri_sans: value } },
      },
    },
    '#withUserIds':: { 'function': { help: |||
      List of Subject User IDs. 
    ||| } },
    withUserIds(value):: self {
      resource+: {
        vault_pki_secret_backend_cert+: { [terraformName]+: { user_ids: value } },
      },
    },
  },
}
