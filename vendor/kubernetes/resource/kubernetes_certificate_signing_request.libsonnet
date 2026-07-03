{
  new(terraformName):: {
    _type:: 'tf',
    resource+: {
      kubernetes_certificate_signing_request+: { [terraformName]+: {
      } },
    },
    withId(value):: self {
      resource+: {
        kubernetes_certificate_signing_request+: { [terraformName]+: { id: value } },
      },
    },
    withCertificate(value):: self {
      resource+: {
        kubernetes_certificate_signing_request+: { [terraformName]+: { certificate: value } },
      },
    },
    withAutoApprove(value):: self {
      resource+: {
        kubernetes_certificate_signing_request+: { [terraformName]+: { auto_approve: value } },
      },
    },
  },
}
