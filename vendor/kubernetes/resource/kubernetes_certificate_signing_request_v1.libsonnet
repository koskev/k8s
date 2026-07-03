{
  new(terraformName):: {
    _type:: 'tf',
    resource+: {
      kubernetes_certificate_signing_request_v1+: { [terraformName]+: {
      } },
    },
    withAutoApprove(value):: self {
      resource+: {
        kubernetes_certificate_signing_request_v1+: { [terraformName]+: { auto_approve: value } },
      },
    },
    withCertificate(value):: self {
      resource+: {
        kubernetes_certificate_signing_request_v1+: { [terraformName]+: { certificate: value } },
      },
    },
    withId(value):: self {
      resource+: {
        kubernetes_certificate_signing_request_v1+: { [terraformName]+: { id: value } },
      },
    },
  },
}
