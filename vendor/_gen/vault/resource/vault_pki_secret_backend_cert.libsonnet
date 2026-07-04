{
  local outerSelf = self,
  new(terraformName, backend, common_name, name):: self.functions(terraformName) {
    ref():: outerSelf.ref(terraformName),
    _type:: 'tf',
    resource+: {
      vault_pki_secret_backend_cert+: {
        [terraformName]+: {
          backend: backend,
          common_name: common_name,
          name: name,
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
    '#withCertMetadata':: { 'function': { help: |||
      A base 64 encoded value or an empty string to associate with the certificate's serial number. The role's no_store_metadata must be set to false, otherwise an error is returned when specified.
    ||| } },
    withCertMetadata(value):: self {
      resource+: {
        vault_pki_secret_backend_cert+: { [terraformName]+: { cert_metadata: value } },
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
    '#withPrivateKeyFormat':: { 'function': { help: |||
      The private key format.
    ||| } },
    withPrivateKeyFormat(value):: self {
      resource+: {
        vault_pki_secret_backend_cert+: { [terraformName]+: { private_key_format: value } },
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
  ref(terraformName):: {
    local refSelf = self,
    plain(suffix=''):: '${ vault_pki_secret_backend_cert.%s%s }' % [terraformName, suffix],
    fields:: {
      '#alt_names':: { 'function': { help: |||
        List of alternative names.
      ||| } },
      alt_names(suffix=''):: refSelf.plain('.alt_names%s' % suffix),
      '#auto_renew':: { 'function': { help: |||
        If enabled, a new certificate will be generated if the expiration is within min_seconds_remaining
      ||| } },
      auto_renew(suffix=''):: refSelf.plain('.auto_renew%s' % suffix),
      '#backend':: { 'function': { help: |||
        The PKI secret backend the resource belongs to.
      ||| } },
      backend(suffix=''):: refSelf.plain('.backend%s' % suffix),
      '#ca_chain':: { 'function': { help: |||
        The CA chain.
      ||| } },
      ca_chain(suffix=''):: refSelf.plain('.ca_chain%s' % suffix),
      '#cert_metadata':: { 'function': { help: |||
        A base 64 encoded value or an empty string to associate with the certificate's serial number. The role's no_store_metadata must be set to false, otherwise an error is returned when specified.
      ||| } },
      cert_metadata(suffix=''):: refSelf.plain('.cert_metadata%s' % suffix),
      '#certificate':: { 'function': { help: |||
        The certicate.
      ||| } },
      certificate(suffix=''):: refSelf.plain('.certificate%s' % suffix),
      '#common_name':: { 'function': { help: |||
        CN of the certificate to create.
      ||| } },
      common_name(suffix=''):: refSelf.plain('.common_name%s' % suffix),
      '#exclude_cn_from_sans':: { 'function': { help: |||
        Flag to exclude CN from SANs.
      ||| } },
      exclude_cn_from_sans(suffix=''):: refSelf.plain('.exclude_cn_from_sans%s' % suffix),
      '#expiration':: { 'function': { help: |||
        The certificate expiration as a Unix-style timestamp.
      ||| } },
      expiration(suffix=''):: refSelf.plain('.expiration%s' % suffix),
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
        The issuing CA.
      ||| } },
      issuing_ca(suffix=''):: refSelf.plain('.issuing_ca%s' % suffix),
      '#min_seconds_remaining':: { 'function': { help: |||
        Generate a new certificate when the expiration is within this number of seconds
      ||| } },
      min_seconds_remaining(suffix=''):: refSelf.plain('.min_seconds_remaining%s' % suffix),
      '#name':: { 'function': { help: |||
        Name of the role to create the certificate against.
      ||| } },
      name(suffix=''):: refSelf.plain('.name%s' % suffix),
      '#namespace':: { 'function': { help: |||
        Target namespace. (requires Enterprise)
      ||| } },
      namespace(suffix=''):: refSelf.plain('.namespace%s' % suffix),
      '#not_after':: { 'function': { help: |||
        Set the Not After field of the certificate with specified date value. The value format should be given in UTC format YYYY-MM-ddTHH:MM:SSZ. Supports the Y10K end date for IEEE 802.1AR-2018 standard devices, 9999-12-31T23:59:59Z.
      ||| } },
      not_after(suffix=''):: refSelf.plain('.not_after%s' % suffix),
      '#other_sans':: { 'function': { help: |||
        List of other SANs.
      ||| } },
      other_sans(suffix=''):: refSelf.plain('.other_sans%s' % suffix),
      '#private_key':: { 'function': { help: |||
        The private key.
      ||| } },
      private_key(suffix=''):: refSelf.plain('.private_key%s' % suffix),
      '#private_key_format':: { 'function': { help: |||
        The private key format.
      ||| } },
      private_key_format(suffix=''):: refSelf.plain('.private_key_format%s' % suffix),
      '#private_key_type':: { 'function': { help: |||
        The private key type.
      ||| } },
      private_key_type(suffix=''):: refSelf.plain('.private_key_type%s' % suffix),
      '#remove_roots_from_chain':: { 'function': { help: |||
        If true, the returned ca_chain field will not include any self-signed CA certificates. Useful if end-users already have the root CA in their trust store.
      ||| } },
      remove_roots_from_chain(suffix=''):: refSelf.plain('.remove_roots_from_chain%s' % suffix),
      '#renew_pending':: { 'function': { help: |||
        Initially false, and then set to true during refresh once the expiration is less than min_seconds_remaining in the future.
      ||| } },
      renew_pending(suffix=''):: refSelf.plain('.renew_pending%s' % suffix),
      '#revoke':: { 'function': { help: |||
        Revoke the certificate upon resource destruction.
      ||| } },
      revoke(suffix=''):: refSelf.plain('.revoke%s' % suffix),
      '#revoke_with_key':: { 'function': { help: |||
        Revoke the certificate with private key method upon resource destruction.
      ||| } },
      revoke_with_key(suffix=''):: refSelf.plain('.revoke_with_key%s' % suffix),
      '#serial_number':: { 'function': { help: |||
        The serial number.
      ||| } },
      serial_number(suffix=''):: refSelf.plain('.serial_number%s' % suffix),
      '#ttl':: { 'function': { help: |||
        Time to live.
      ||| } },
      ttl(suffix=''):: refSelf.plain('.ttl%s' % suffix),
      '#uri_sans':: { 'function': { help: |||
        List of alternative URIs.
      ||| } },
      uri_sans(suffix=''):: refSelf.plain('.uri_sans%s' % suffix),
      '#user_ids':: { 'function': { help: |||
        List of Subject User IDs.
      ||| } },
      user_ids(suffix=''):: refSelf.plain('.user_ids%s' % suffix),
    },
  },
}
