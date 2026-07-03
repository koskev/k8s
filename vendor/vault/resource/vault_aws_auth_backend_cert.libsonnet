{
  new(terraformName, cert_name, aws_public_cert):: {
    _type:: 'tf',
    resource+: {
      vault_aws_auth_backend_cert+: { [terraformName]+: {
        cert_name: cert_name,
        aws_public_cert: aws_public_cert,
      } },
    },
    withId(value):: self {
      resource+: {
        vault_aws_auth_backend_cert+: { [terraformName]+: { id: value } },
      },
    },
    withNamespace(value):: self {
      resource+: {
        vault_aws_auth_backend_cert+: { [terraformName]+: { namespace: value } },
      },
    },
    withType(value):: self {
      resource+: {
        vault_aws_auth_backend_cert+: { [terraformName]+: { type: value } },
      },
    },
    withBackend(value):: self {
      resource+: {
        vault_aws_auth_backend_cert+: { [terraformName]+: { backend: value } },
      },
    },
    withCertName(value):: self {
      resource+: {
        vault_aws_auth_backend_cert+: { [terraformName]+: { cert_name: value } },
      },
    },
    withAwsPublicCert(value):: self {
      resource+: {
        vault_aws_auth_backend_cert+: { [terraformName]+: { aws_public_cert: value } },
      },
    },
  },
}
