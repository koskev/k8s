{
  new(terraformName):: self.functions(terraformName) {
    _type:: 'tf',
    resource+: {
      kubernetes_certificate_signing_request+: {
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
