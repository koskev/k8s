{
  new(terraformName, aws_public_cert, cert_name):: self.functions(terraformName) {
    _type:: 'tf',
    resource+: {
      vault_aws_auth_backend_cert+: {
        [terraformName]+: {
          aws_public_cert: aws_public_cert,
          cert_name: cert_name,
        },
      },
    },
  },
  functions(terraformName):: {
    '#withAwsPublicCert':: { 'function': { help: |||
      Base64 encoded AWS Public key required to verify PKCS7 signature of the EC2 instance metadata. 
    ||| } },
    withAwsPublicCert(value):: self {
      resource+: {
        vault_aws_auth_backend_cert+: { [terraformName]+: { aws_public_cert: value } },
      },
    },
    '#withBackend':: { 'function': { help: |||
      Unique name of the auth backend to configure. 
    ||| } },
    withBackend(value):: self {
      resource+: {
        vault_aws_auth_backend_cert+: { [terraformName]+: { backend: value } },
      },
    },
    '#withCertName':: { 'function': { help: |||
      Name of the certificate to configure. 
    ||| } },
    withCertName(value):: self {
      resource+: {
        vault_aws_auth_backend_cert+: { [terraformName]+: { cert_name: value } },
      },
    },
    withId(value):: self {
      resource+: {
        vault_aws_auth_backend_cert+: { [terraformName]+: { id: value } },
      },
    },
    '#withNamespace':: { 'function': { help: |||
      Target namespace. (requires Enterprise) 
    ||| } },
    withNamespace(value):: self {
      resource+: {
        vault_aws_auth_backend_cert+: { [terraformName]+: { namespace: value } },
      },
    },
    '#withType':: { 'function': { help: |||
      The type of document that can be verified using the certificate. Must be either "pkcs7" or "identity". 
    ||| } },
    withType(value):: self {
      resource+: {
        vault_aws_auth_backend_cert+: { [terraformName]+: { type: value } },
      },
    },
  },
  ref(terraformName):: {
    local refSelf = self,
    plain(suffix=''):: '${ vault_aws_auth_backend_cert.%s%s }' % [terraformName, suffix],
    fields:: {
      '#aws_public_cert':: { 'function': { help: |||
        Base64 encoded AWS Public key required to verify PKCS7 signature of the EC2 instance metadata. 
      ||| } },
      aws_public_cert(suffix=''):: refSelf.plain('.aws_public_cert%s' % suffix),
      '#backend':: { 'function': { help: |||
        Unique name of the auth backend to configure. 
      ||| } },
      backend(suffix=''):: refSelf.plain('.backend%s' % suffix),
      '#cert_name':: { 'function': { help: |||
        Name of the certificate to configure. 
      ||| } },
      cert_name(suffix=''):: refSelf.plain('.cert_name%s' % suffix),
      id(suffix=''):: refSelf.plain('.id%s' % suffix),
      '#namespace':: { 'function': { help: |||
        Target namespace. (requires Enterprise) 
      ||| } },
      namespace(suffix=''):: refSelf.plain('.namespace%s' % suffix),
      '#type':: { 'function': { help: |||
        The type of document that can be verified using the certificate. Must be either "pkcs7" or "identity". 
      ||| } },
      type(suffix=''):: refSelf.plain('.type%s' % suffix),
    },
  },
}
