{
  '#new':: { 'function': { help: |||
    Use this resource to generate TLS certificates using Kubernetes. This is a *logical resource*, so it contributes only to the current Terraform state and does not persist any external managed resources. This resource enables automation of [X.509](https://www.itu.int/rec/T-REC-X.509) credential provisioning (including TLS/SSL certificates). It does this by creating a CertificateSigningRequest using the Kubernetes API, which generates a certificate from the Certificate Authority (CA) configured in the Kubernetes cluster. The CSR can be approved automatically by Terraform, or it can be approved by a custom controller running in Kubernetes. See [Kubernetes reference](https://kubernetes.io/docs/reference/access-authn-authz/certificate-signing-requests/) for all available options pertaining to CertificateSigningRequests.
  ||| } },
  local outerSelf = self,
  new(terraformName):: self.functions(terraformName) {
    ref():: outerSelf.ref(terraformName),
    _type:: 'tf',
    resource+: {
      kubernetes_certificate_signing_request_v1+: {
        [terraformName]+: {
        },
      },
    },
  },
  functions(terraformName):: {
    '#withAutoApprove':: { 'function': { help: |||
      Automatically approve the CertificateSigningRequest
    ||| } },
    withAutoApprove(value):: self {
      resource+: {
        kubernetes_certificate_signing_request_v1+: { [terraformName]+: { auto_approve: value } },
      },
    },
    withId(value):: self {
      resource+: {
        kubernetes_certificate_signing_request_v1+: { [terraformName]+: { id: value } },
      },
    },
  },
  ref(terraformName):: {
    local refSelf = self,
    plain(suffix=''):: '${ kubernetes_certificate_signing_request_v1.%s%s }' % [terraformName, suffix],
    fields:: {
      '#auto_approve':: { 'function': { help: |||
        Automatically approve the CertificateSigningRequest
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
      id(suffix=''):: refSelf.plain('.id%s' % suffix),
    },
  },
}
