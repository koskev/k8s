{
  local outerSelf = self,
  new(terraformName):: self.functions(terraformName) {
    ref():: outerSelf.ref(terraformName),
    _type:: 'tf',
    resource+: {
      vault_aws_auth_backend_login+: {
        [terraformName]+: {
        },
      },
    },
  },
  functions(terraformName):: {
    withForEach(value):: self {
      resource+: {
        vault_aws_auth_backend_login+: { [terraformName]+: { for_each: value } },
      },
    },
    withDependsOn(value):: self {
      resource+: {
        vault_aws_auth_backend_login+: { [terraformName]+: { depends_on: value } },
      },
    },
    withCount(value):: self {
      resource+: {
        vault_aws_auth_backend_login+: { [terraformName]+: { count: value } },
      },
    },
    withLifecycle(value):: self {
      resource+: {
        vault_aws_auth_backend_login+: { [terraformName]+: { lifecycle: value } },
      },
    },
    withProvider(value):: self {
      resource+: {
        vault_aws_auth_backend_login+: { [terraformName]+: { provider: value } },
      },
    },
    withProviders(value):: self {
      resource+: {
        vault_aws_auth_backend_login+: { [terraformName]+: { providers: value } },
      },
    },
    '#backend':: { 'function': { help: |||
      AWS Auth Backend to read the token from.
    ||| } },
    withBackend(value):: self {
      resource+: {
        vault_aws_auth_backend_login+: { [terraformName]+: { backend: value } },
      },
    },
    '#iam_http_request_method':: { 'function': { help: |||
      The HTTP method used in the signed request.
    ||| } },
    withIamHttpRequestMethod(value):: self {
      resource+: {
        vault_aws_auth_backend_login+: { [terraformName]+: { iam_http_request_method: value } },
      },
    },
    '#iam_request_body':: { 'function': { help: |||
      The Base64-encoded body of the signed request.
    ||| } },
    withIamRequestBody(value):: self {
      resource+: {
        vault_aws_auth_backend_login+: { [terraformName]+: { iam_request_body: value } },
      },
    },
    '#iam_request_headers':: { 'function': { help: |||
      The Base64-encoded, JSON serialized representation of the sts:GetCallerIdentity HTTP request headers.
    ||| } },
    withIamRequestHeaders(value):: self {
      resource+: {
        vault_aws_auth_backend_login+: { [terraformName]+: { iam_request_headers: value } },
      },
    },
    '#iam_request_url':: { 'function': { help: |||
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
    '#identity':: { 'function': { help: |||
      Base64-encoded EC2 instance identity document to authenticate with.
    ||| } },
    withIdentity(value):: self {
      resource+: {
        vault_aws_auth_backend_login+: { [terraformName]+: { identity: value } },
      },
    },
    '#namespace':: { 'function': { help: |||
      Target namespace. (requires Enterprise)
    ||| } },
    withNamespace(value):: self {
      resource+: {
        vault_aws_auth_backend_login+: { [terraformName]+: { namespace: value } },
      },
    },
    '#nonce':: { 'function': { help: |||
      The nonce to be used for subsequent login requests.
    ||| } },
    withNonce(value):: self {
      resource+: {
        vault_aws_auth_backend_login+: { [terraformName]+: { nonce: value } },
      },
    },
    '#pkcs7':: { 'function': { help: |||
      PKCS7 signature of the identity document to authenticate with, with all newline characters removed.
    ||| } },
    withPkcs7(value):: self {
      resource+: {
        vault_aws_auth_backend_login+: { [terraformName]+: { pkcs7: value } },
      },
    },
    '#role':: { 'function': { help: |||
      AWS Auth Role to read the token from.
    ||| } },
    withRole(value):: self {
      resource+: {
        vault_aws_auth_backend_login+: { [terraformName]+: { role: value } },
      },
    },
    '#signature':: { 'function': { help: |||
      Base64-encoded SHA256 RSA signature of the instance identtiy document to authenticate with.
    ||| } },
    withSignature(value):: self {
      resource+: {
        vault_aws_auth_backend_login+: { [terraformName]+: { signature: value } },
      },
    },
  },
  ref(terraformName):: {
    local refSelf = self,
    plain(suffix=''):: '${ vault_aws_auth_backend_login.%s%s }' % [terraformName, suffix],
    fields:: {
      '#accessor':: { 'function': { help: |||
        The accessor returned from Vault for this token.
      ||| } },
      accessor(suffix=''):: refSelf.plain('.accessor%s' % suffix),
      '#auth_type':: { 'function': { help: |||
        The auth method used to generate this token.
      ||| } },
      auth_type(suffix=''):: refSelf.plain('.auth_type%s' % suffix),
      '#backend':: { 'function': { help: |||
        AWS Auth Backend to read the token from.
      ||| } },
      backend(suffix=''):: refSelf.plain('.backend%s' % suffix),
      '#client_token':: { 'function': { help: |||
        The token returned by Vault.
      ||| } },
      client_token(suffix=''):: refSelf.plain('.client_token%s' % suffix),
      '#iam_http_request_method':: { 'function': { help: |||
        The HTTP method used in the signed request.
      ||| } },
      iam_http_request_method(suffix=''):: refSelf.plain('.iam_http_request_method%s' % suffix),
      '#iam_request_body':: { 'function': { help: |||
        The Base64-encoded body of the signed request.
      ||| } },
      iam_request_body(suffix=''):: refSelf.plain('.iam_request_body%s' % suffix),
      '#iam_request_headers':: { 'function': { help: |||
        The Base64-encoded, JSON serialized representation of the sts:GetCallerIdentity HTTP request headers.
      ||| } },
      iam_request_headers(suffix=''):: refSelf.plain('.iam_request_headers%s' % suffix),
      '#iam_request_url':: { 'function': { help: |||
        The Base64-encoded HTTP URL used in the signed request.
      ||| } },
      iam_request_url(suffix=''):: refSelf.plain('.iam_request_url%s' % suffix),
      id(suffix=''):: refSelf.plain('.id%s' % suffix),
      '#identity':: { 'function': { help: |||
        Base64-encoded EC2 instance identity document to authenticate with.
      ||| } },
      identity(suffix=''):: refSelf.plain('.identity%s' % suffix),
      '#lease_duration':: { 'function': { help: |||
        Lease duration in seconds relative to the time in lease_start_time.
      ||| } },
      lease_duration(suffix=''):: refSelf.plain('.lease_duration%s' % suffix),
      '#lease_start_time':: { 'function': { help: |||
        Time at which the lease was read, using the clock of the system where Terraform was running
      ||| } },
      lease_start_time(suffix=''):: refSelf.plain('.lease_start_time%s' % suffix),
      '#metadata':: { 'function': { help: |||
        The metadata reported by the Vault server.
      ||| } },
      metadata(suffix=''):: refSelf.plain('.metadata%s' % suffix),
      '#namespace':: { 'function': { help: |||
        Target namespace. (requires Enterprise)
      ||| } },
      namespace(suffix=''):: refSelf.plain('.namespace%s' % suffix),
      '#nonce':: { 'function': { help: |||
        The nonce to be used for subsequent login requests.
      ||| } },
      nonce(suffix=''):: refSelf.plain('.nonce%s' % suffix),
      '#pkcs7':: { 'function': { help: |||
        PKCS7 signature of the identity document to authenticate with, with all newline characters removed.
      ||| } },
      pkcs7(suffix=''):: refSelf.plain('.pkcs7%s' % suffix),
      '#policies':: { 'function': { help: |||
        The policies assigned to this token.
      ||| } },
      policies(suffix=''):: refSelf.plain('.policies%s' % suffix),
      '#renewable':: { 'function': { help: |||
        True if the duration of this lease can be extended through renewal.
      ||| } },
      renewable(suffix=''):: refSelf.plain('.renewable%s' % suffix),
      '#role':: { 'function': { help: |||
        AWS Auth Role to read the token from.
      ||| } },
      role(suffix=''):: refSelf.plain('.role%s' % suffix),
      '#signature':: { 'function': { help: |||
        Base64-encoded SHA256 RSA signature of the instance identtiy document to authenticate with.
      ||| } },
      signature(suffix=''):: refSelf.plain('.signature%s' % suffix),
    },
  },
}
