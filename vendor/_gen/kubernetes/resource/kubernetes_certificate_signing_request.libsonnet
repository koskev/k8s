{
  '#new':: { 'function': { help: |||
    Use this resource to generate TLS certificates using Kubernetes. This is a *logical resource*, so it contributes only to the current Terraform state and does not persist any external managed resources. This resource enables automation of [X.509](https://www.itu.int/rec/T-REC-X.509) credential provisioning (including TLS/SSL certificates). It does this by creating a CertificateSigningRequest using the Kubernetes API, which generates a certificate from the Certificate Authority (CA) configured in the Kubernetes cluster. The CSR can be approved automatically by Terraform, or it can be approved by a custom controller running in Kubernetes. See [Kubernetes reference](https://kubernetes.io/docs/reference/access-authn-authz/certificate-signing-requests/) for all available options pertaining to CertificateSigningRequests.
  ||| } },
  local outerSelf = self,
  new(terraformName):: self.functions(terraformName) {
    ref():: outerSelf.ref(terraformName),
    _type:: 'tf',
    resource+: {
      kubernetes_certificate_signing_request+: {
        [terraformName]+: {
        },
      },
    },
  },
  functions(terraformName):: {
    withForEach(value):: self {
      resource+: {
        kubernetes_certificate_signing_request+: { [terraformName]+: { for_each: value } },
      },
    },
    withDependsOn(value):: self {
      resource+: {
        kubernetes_certificate_signing_request+: { [terraformName]+: { depends_on: value } },
      },
    },
    withCount(value):: self {
      resource+: {
        kubernetes_certificate_signing_request+: { [terraformName]+: { count: value } },
      },
    },
    withLifecycle(value):: self {
      resource+: {
        kubernetes_certificate_signing_request+: { [terraformName]+: { lifecycle: value } },
      },
    },
    withProvider(value):: self {
      resource+: {
        kubernetes_certificate_signing_request+: { [terraformName]+: { provider: value } },
      },
    },
    withProviders(value):: self {
      resource+: {
        kubernetes_certificate_signing_request+: { [terraformName]+: { providers: value } },
      },
    },
    '#auto_approve':: { 'function': { help: |||
      Automatically approve the CertificateSigningRequest
    ||| } },
    withAutoApprove(value):: self {
      resource+: {
        kubernetes_certificate_signing_request+: { [terraformName]+: { auto_approve: value } },
      },
    },
    withId(value):: self {
      resource+: {
        kubernetes_certificate_signing_request+: { [terraformName]+: { id: value } },
      },
    },
  },
  ref(terraformName):: {
    local refSelf = self,
    plain(suffix=''):: '${ kubernetes_certificate_signing_request.%s%s }' % [terraformName, suffix],
    fields:: {
      '#auto_approve':: { 'function': { help: |||
        Automatically approve the CertificateSigningRequest
      ||| } },
      auto_approve(suffix=''):: refSelf.plain('.auto_approve%s' % suffix),
      '#certificate':: { 'function': { help: |||
        If request was approved, the controller will place the issued certificate here.
      ||| } },
      certificate(suffix=''):: refSelf.plain('.certificate%s' % suffix),
      id(suffix=''):: refSelf.plain('.id%s' % suffix),
    },
  },
}
