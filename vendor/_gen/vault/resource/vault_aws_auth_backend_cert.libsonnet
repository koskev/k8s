{
  new(terraformName, aws_public_cert, cert_name):: {
    _type:: 'tf',
    resource+: {
      vault_aws_auth_backend_cert+: { [terraformName]+: {
        aws_public_cert: aws_public_cert,
        cert_name: cert_name,
      } },
    },
    '#withAwsPublicCert': { 'function': { help: |||
      Base64 encoded AWS Public key required to verify PKCS7 signature of the EC2 instance metadata. 
    ||| } },
    withAwsPublicCert(value):: self {
      resource+: {
        vault_aws_auth_backend_cert+: { [terraformName]+: { aws_public_cert: value } },
      },
    },
    '#withBackend': { 'function': { help: |||
      Unique name of the auth backend to configure. 
    ||| } },
    withBackend(value):: self {
      resource+: {
        vault_aws_auth_backend_cert+: { [terraformName]+: { backend: value } },
      },
    },
    '#withCertName': { 'function': { help: |||
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
    '#withNamespace': { 'function': { help: |||
      Target namespace. (requires Enterprise) 
    ||| } },
    withNamespace(value):: self {
      resource+: {
        vault_aws_auth_backend_cert+: { [terraformName]+: { namespace: value } },
      },
    },
    '#withType': { 'function': { help: |||
      The type of document that can be verified using the certificate. Must be either "pkcs7" or "identity". 
    ||| } },
    withType(value):: self {
      resource+: {
        vault_aws_auth_backend_cert+: { [terraformName]+: { type: value } },
      },
    },
  },
}
