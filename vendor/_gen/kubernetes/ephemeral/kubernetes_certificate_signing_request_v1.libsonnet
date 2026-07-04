{
  '#new':: { 'function': { help: |||
    TokenRequest requests a token for a given service account.
  ||| } },
  local outerSelf = self,
  new(terraformName):: self.functions(terraformName) {
    ref():: outerSelf.ref(terraformName),
    _type:: 'tf',
    ephemeral+: {
      kubernetes_certificate_signing_request_v1+: {
        [terraformName]+: {
        },
      },
    },
  },
  functions(terraformName):: {
    '#withAutoApprove':: { 'function': { help: |||
      Automatically approve the Certificate Signing Request
    ||| } },
    withAutoApprove(value):: self {
      ephemeral+: {
        kubernetes_certificate_signing_request_v1+: { [terraformName]+: { auto_approve: value } },
      },
    },
    '#withCertificate':: { 'function': { help: |||
      certificate is populated with an issued certificate by the signer after an Approved condition is present. This field is set via the /status subresource. Once populated, this field is immutable.

      If the certificate signing request is denied, a condition of type "Denied" is added and this field remains empty. If the signer cannot issue the certificate, a condition of type "Failed" is added and this field remains empty.

      Validation requirements:
       1. certificate must contain one or more PEM blocks.
       2. All PEM blocks must have the "CERTIFICATE" label, contain no headers, and the encoded data
        must be a BER-encoded ASN.1 Certificate structure as described in section 4 of RFC5280.
       3. Non-PEM content may appear before or after the "CERTIFICATE" PEM blocks and is unvalidated,
        to allow for explanatory text as described in section 5.2 of RFC7468.

      If more than one PEM block is present, and the definition of the requested spec.signerName does not indicate otherwise, the first block is the issued certificate, and subsequent blocks should be treated as intermediate certificates and presented in TLS handshakes.

      The certificate is encoded in PEM format.

      When serialized as JSON or YAML, the data is additionally base64-encoded, so it consists of:

          base64(
    ||| } },
    withCertificate(value):: self {
      ephemeral+: {
        kubernetes_certificate_signing_request_v1+: { [terraformName]+: { certificate: value } },
      },
    },
  },
  ref(terraformName):: {
    local refSelf = self,
    plain(suffix=''):: '${ kubernetes_certificate_signing_request_v1.%s%s }' % [terraformName, suffix],
    fields:: {
      '#auto_approve':: { 'function': { help: |||
        Automatically approve the Certificate Signing Request
      ||| } },
      auto_approve(suffix=''):: refSelf.plain('.auto_approve%s' % suffix),
      '#certificate':: { 'function': { help: |||
        certificate is populated with an issued certificate by the signer after an Approved condition is present. This field is set via the /status subresource. Once populated, this field is immutable.

        If the certificate signing request is denied, a condition of type "Denied" is added and this field remains empty. If the signer cannot issue the certificate, a condition of type "Failed" is added and this field remains empty.

        Validation requirements:
         1. certificate must contain one or more PEM blocks.
         2. All PEM blocks must have the "CERTIFICATE" label, contain no headers, and the encoded data
          must be a BER-encoded ASN.1 Certificate structure as described in section 4 of RFC5280.
         3. Non-PEM content may appear before or after the "CERTIFICATE" PEM blocks and is unvalidated,
          to allow for explanatory text as described in section 5.2 of RFC7468.

        If more than one PEM block is present, and the definition of the requested spec.signerName does not indicate otherwise, the first block is the issued certificate, and subsequent blocks should be treated as intermediate certificates and presented in TLS handshakes.

        The certificate is encoded in PEM format.

        When serialized as JSON or YAML, the data is additionally base64-encoded, so it consists of:

            base64(
      ||| } },
      certificate(suffix=''):: refSelf.plain('.certificate%s' % suffix),
    },
  },
}
