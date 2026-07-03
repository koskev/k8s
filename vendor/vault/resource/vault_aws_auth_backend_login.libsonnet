{
  new(terraformName):: {
    _type:: 'tf',
    resource+: {
      vault_aws_auth_backend_login+: { [terraformName]+: {
      } },
    },
    withIamHttpRequestMethod(value):: self {
      resource+: {
        vault_aws_auth_backend_login+: { [terraformName]+: { iam_http_request_method: value } },
      },
    },
    withBackend(value):: self {
      resource+: {
        vault_aws_auth_backend_login+: { [terraformName]+: { backend: value } },
      },
    },
    withId(value):: self {
      resource+: {
        vault_aws_auth_backend_login+: { [terraformName]+: { id: value } },
      },
    },
    withIamRequestHeaders(value):: self {
      resource+: {
        vault_aws_auth_backend_login+: { [terraformName]+: { iam_request_headers: value } },
      },
    },
    withNamespace(value):: self {
      resource+: {
        vault_aws_auth_backend_login+: { [terraformName]+: { namespace: value } },
      },
    },
    withAccessor(value):: self {
      resource+: {
        vault_aws_auth_backend_login+: { [terraformName]+: { accessor: value } },
      },
    },
    withIamRequestBody(value):: self {
      resource+: {
        vault_aws_auth_backend_login+: { [terraformName]+: { iam_request_body: value } },
      },
    },
    withIdentity(value):: self {
      resource+: {
        vault_aws_auth_backend_login+: { [terraformName]+: { identity: value } },
      },
    },
    withLeaseStartTime(value):: self {
      resource+: {
        vault_aws_auth_backend_login+: { [terraformName]+: { lease_start_time: value } },
      },
    },
    withPolicies(value):: self {
      resource+: {
        vault_aws_auth_backend_login+: { [terraformName]+: { policies: value } },
      },
    },
    withRenewable(value):: self {
      resource+: {
        vault_aws_auth_backend_login+: { [terraformName]+: { renewable: value } },
      },
    },
    withMetadata(value):: self {
      resource+: {
        vault_aws_auth_backend_login+: { [terraformName]+: { metadata: value } },
      },
    },
    withNonce(value):: self {
      resource+: {
        vault_aws_auth_backend_login+: { [terraformName]+: { nonce: value } },
      },
    },
    withRole(value):: self {
      resource+: {
        vault_aws_auth_backend_login+: { [terraformName]+: { role: value } },
      },
    },
    withLeaseDuration(value):: self {
      resource+: {
        vault_aws_auth_backend_login+: { [terraformName]+: { lease_duration: value } },
      },
    },
    withPkcs7(value):: self {
      resource+: {
        vault_aws_auth_backend_login+: { [terraformName]+: { pkcs7: value } },
      },
    },
    withClientToken(value):: self {
      resource+: {
        vault_aws_auth_backend_login+: { [terraformName]+: { client_token: value } },
      },
    },
    withSignature(value):: self {
      resource+: {
        vault_aws_auth_backend_login+: { [terraformName]+: { signature: value } },
      },
    },
    withIamRequestUrl(value):: self {
      resource+: {
        vault_aws_auth_backend_login+: { [terraformName]+: { iam_request_url: value } },
      },
    },
    withAuthType(value):: self {
      resource+: {
        vault_aws_auth_backend_login+: { [terraformName]+: { auth_type: value } },
      },
    },
  },
}
