{
  new(terraformName):: {
    _type:: 'tf',
    resource+: {
      kubernetes_certificate_signing_request+: { [terraformName]+: {
      } },
    },
    '#withAutoApprove': { 'function': { help: |||
      Automatically approve the CertificateSigningRequest 
    ||| } },
    withAutoApprove(value):: self {
      resource+: {
        kubernetes_certificate_signing_request+: { [terraformName]+: { auto_approve: value } },
      },
    },
    '#withCertificate': { 'function': { help: |||
      If request was approved, the controller will place the issued certificate here. 
    ||| } },
    withCertificate(value):: self {
      resource+: {
        kubernetes_certificate_signing_request+: { [terraformName]+: { certificate: value } },
      },
    },
    withId(value):: self {
      resource+: {
        kubernetes_certificate_signing_request+: { [terraformName]+: { id: value } },
      },
    },
  },
}
