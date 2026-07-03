{
  new(terraformName):: {
    _type:: 'tf',
    resource+: {
      vault_aws_auth_backend_login+: { [terraformName]+: {
      } },
    },
    '#withAccessor':: { 'function': { help: |||
      The accessor returned from Vault for this token. 
    ||| } },
    withAccessor(value):: self {
      resource+: {
        vault_aws_auth_backend_login+: { [terraformName]+: { accessor: value } },
      },
    },
    '#withAuthType':: { 'function': { help: |||
      The auth method used to generate this token. 
    ||| } },
    withAuthType(value):: self {
      resource+: {
        vault_aws_auth_backend_login+: { [terraformName]+: { auth_type: value } },
      },
    },
    '#withBackend':: { 'function': { help: |||
      AWS Auth Backend to read the token from. 
    ||| } },
    withBackend(value):: self {
      resource+: {
        vault_aws_auth_backend_login+: { [terraformName]+: { backend: value } },
      },
    },
    '#withClientToken':: { 'function': { help: |||
      The token returned by Vault. 
    ||| } },
    withClientToken(value):: self {
      resource+: {
        vault_aws_auth_backend_login+: { [terraformName]+: { client_token: value } },
      },
    },
    '#withIamHttpRequestMethod':: { 'function': { help: |||
      The HTTP method used in the signed request. 
    ||| } },
    withIamHttpRequestMethod(value):: self {
      resource+: {
        vault_aws_auth_backend_login+: { [terraformName]+: { iam_http_request_method: value } },
      },
    },
    '#withIamRequestBody':: { 'function': { help: |||
      The Base64-encoded body of the signed request. 
    ||| } },
    withIamRequestBody(value):: self {
      resource+: {
        vault_aws_auth_backend_login+: { [terraformName]+: { iam_request_body: value } },
      },
    },
    '#withIamRequestHeaders':: { 'function': { help: |||
      The Base64-encoded, JSON serialized representation of the sts:GetCallerIdentity HTTP request headers. 
    ||| } },
    withIamRequestHeaders(value):: self {
      resource+: {
        vault_aws_auth_backend_login+: { [terraformName]+: { iam_request_headers: value } },
      },
    },
    '#withIamRequestUrl':: { 'function': { help: |||
      The Base64-encoded HTTP URL used in the signed request. 
    ||| } },
    withIamRequestUrl(value):: self {
      resource+: {
        vault_aws_auth_backend_login+: { [terraformName]+: { iam_request_url: value } },
      },
    },
    withId(value):: self {
      resource+: {
        vault_aws_auth_backend_login+: { [terraformName]+: { id: value } },
      },
    },
    '#withIdentity':: { 'function': { help: |||
      Base64-encoded EC2 instance identity document to authenticate with. 
    ||| } },
    withIdentity(value):: self {
      resource+: {
        vault_aws_auth_backend_login+: { [terraformName]+: { identity: value } },
      },
    },
    '#withLeaseDuration':: { 'function': { help: |||
      Lease duration in seconds relative to the time in lease_start_time. 
    ||| } },
    withLeaseDuration(value):: self {
      resource+: {
        vault_aws_auth_backend_login+: { [terraformName]+: { lease_duration: value } },
      },
    },
    '#withLeaseStartTime':: { 'function': { help: |||
      Time at which the lease was read, using the clock of the system where Terraform was running 
    ||| } },
    withLeaseStartTime(value):: self {
      resource+: {
        vault_aws_auth_backend_login+: { [terraformName]+: { lease_start_time: value } },
      },
    },
    '#withMetadata':: { 'function': { help: |||
      The metadata reported by the Vault server. 
    ||| } },
    withMetadata(value):: self {
      resource+: {
        vault_aws_auth_backend_login+: { [terraformName]+: { metadata: value } },
      },
    },
    '#withNamespace':: { 'function': { help: |||
      Target namespace. (requires Enterprise) 
    ||| } },
    withNamespace(value):: self {
      resource+: {
        vault_aws_auth_backend_login+: { [terraformName]+: { namespace: value } },
      },
    },
    '#withNonce':: { 'function': { help: |||
      The nonce to be used for subsequent login requests. 
    ||| } },
    withNonce(value):: self {
      resource+: {
        vault_aws_auth_backend_login+: { [terraformName]+: { nonce: value } },
      },
    },
    '#withPkcs7':: { 'function': { help: |||
      PKCS7 signature of the identity document to authenticate with, with all newline characters removed. 
    ||| } },
    withPkcs7(value):: self {
      resource+: {
        vault_aws_auth_backend_login+: { [terraformName]+: { pkcs7: value } },
      },
    },
    '#withPolicies':: { 'function': { help: |||
      The policies assigned to this token. 
    ||| } },
    withPolicies(value):: self {
      resource+: {
        vault_aws_auth_backend_login+: { [terraformName]+: { policies: value } },
      },
    },
    '#withRenewable':: { 'function': { help: |||
      True if the duration of this lease can be extended through renewal. 
    ||| } },
    withRenewable(value):: self {
      resource+: {
        vault_aws_auth_backend_login+: { [terraformName]+: { renewable: value } },
      },
    },
    '#withRole':: { 'function': { help: |||
      AWS Auth Role to read the token from. 
    ||| } },
    withRole(value):: self {
      resource+: {
        vault_aws_auth_backend_login+: { [terraformName]+: { role: value } },
      },
    },
    '#withSignature':: { 'function': { help: |||
      Base64-encoded SHA256 RSA signature of the instance identtiy document to authenticate with. 
    ||| } },
    withSignature(value):: self {
      resource+: {
        vault_aws_auth_backend_login+: { [terraformName]+: { signature: value } },
      },
    },
  },
}
