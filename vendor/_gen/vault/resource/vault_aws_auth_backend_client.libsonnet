{
  new(terraformName):: {
    _type:: 'tf',
    resource+: {
      vault_aws_auth_backend_client+: { [terraformName]+: {
      } },
    },
    '#withAccessKey':: { 'function': { help: |||
      AWS Access key with permissions to query AWS APIs. 
    ||| } },
    withAccessKey(value):: self {
      resource+: {
        vault_aws_auth_backend_client+: { [terraformName]+: { access_key: value } },
      },
    },
    '#withAllowedStsHeaderValues':: { 'function': { help: |||
      List of additional headers that are allowed to be in STS request headers. 
    ||| } },
    withAllowedStsHeaderValues(value):: self {
      resource+: {
        vault_aws_auth_backend_client+: { [terraformName]+: { allowed_sts_header_values: value } },
      },
    },
    '#withBackend':: { 'function': { help: |||
      Unique name of the auth backend to configure. 
    ||| } },
    withBackend(value):: self {
      resource+: {
        vault_aws_auth_backend_client+: { [terraformName]+: { backend: value } },
      },
    },
    '#withDisableAutomatedRotation':: { 'function': { help: |||
      Stops rotation of the root credential until set to false. 
    ||| } },
    withDisableAutomatedRotation(value):: self {
      resource+: {
        vault_aws_auth_backend_client+: { [terraformName]+: { disable_automated_rotation: value } },
      },
    },
    '#withEc2Endpoint':: { 'function': { help: |||
      URL to override the default generated endpoint for making AWS EC2 API calls. 
    ||| } },
    withEc2Endpoint(value):: self {
      resource+: {
        vault_aws_auth_backend_client+: { [terraformName]+: { ec2_endpoint: value } },
      },
    },
    '#withIamEndpoint':: { 'function': { help: |||
      URL to override the default generated endpoint for making AWS IAM API calls. 
    ||| } },
    withIamEndpoint(value):: self {
      resource+: {
        vault_aws_auth_backend_client+: { [terraformName]+: { iam_endpoint: value } },
      },
    },
    '#withIamServerIdHeaderValue':: { 'function': { help: |||
      The value to require in the X-Vault-AWS-IAM-Server-ID header as part of GetCallerIdentity requests that are used in the iam auth method. 
    ||| } },
    withIamServerIdHeaderValue(value):: self {
      resource+: {
        vault_aws_auth_backend_client+: { [terraformName]+: { iam_server_id_header_value: value } },
      },
    },
    withId(value):: self {
      resource+: {
        vault_aws_auth_backend_client+: { [terraformName]+: { id: value } },
      },
    },
    '#withIdentityTokenAudience':: { 'function': { help: |||
      The audience claim value. 
    ||| } },
    withIdentityTokenAudience(value):: self {
      resource+: {
        vault_aws_auth_backend_client+: { [terraformName]+: { identity_token_audience: value } },
      },
    },
    '#withIdentityTokenTtl':: { 'function': { help: |||
      The TTL of generated identity tokens in seconds. 
    ||| } },
    withIdentityTokenTtl(value):: self {
      resource+: {
        vault_aws_auth_backend_client+: { [terraformName]+: { identity_token_ttl: value } },
      },
    },
    '#withMaxRetries':: { 'function': { help: |||
      Number of max retries the client should use for recoverable errors. 
    ||| } },
    withMaxRetries(value):: self {
      resource+: {
        vault_aws_auth_backend_client+: { [terraformName]+: { max_retries: value } },
      },
    },
    '#withNamespace':: { 'function': { help: |||
      Target namespace. (requires Enterprise) 
    ||| } },
    withNamespace(value):: self {
      resource+: {
        vault_aws_auth_backend_client+: { [terraformName]+: { namespace: value } },
      },
    },
    '#withRoleArn':: { 'function': { help: |||
      Role ARN to assume for plugin identity token federation. 
    ||| } },
    withRoleArn(value):: self {
      resource+: {
        vault_aws_auth_backend_client+: { [terraformName]+: { role_arn: value } },
      },
    },
    '#withRotationPeriod':: { 'function': { help: |||
      The period of time in seconds between each rotation of the root credential. Cannot be used with rotation_schedule. 
    ||| } },
    withRotationPeriod(value):: self {
      resource+: {
        vault_aws_auth_backend_client+: { [terraformName]+: { rotation_period: value } },
      },
    },
    '#withRotationSchedule':: { 'function': { help: |||
      The cron-style schedule for the root credential to be rotated on. Cannot be used with rotation_period. 
    ||| } },
    withRotationSchedule(value):: self {
      resource+: {
        vault_aws_auth_backend_client+: { [terraformName]+: { rotation_schedule: value } },
      },
    },
    '#withRotationWindow':: { 'function': { help: |||
      The maximum amount of time in seconds Vault is allowed to complete a rotation once a scheduled rotation is triggered. Can only be used with rotation_schedule. 
    ||| } },
    withRotationWindow(value):: self {
      resource+: {
        vault_aws_auth_backend_client+: { [terraformName]+: { rotation_window: value } },
      },
    },
    '#withSecretKey':: { 'function': { help: |||
      AWS Secret key with permissions to query AWS APIs. 
    ||| } },
    withSecretKey(value):: self {
      resource+: {
        vault_aws_auth_backend_client+: { [terraformName]+: { secret_key: value } },
      },
    },
    '#withSecretKeyWo':: { 'function': { help: |||
      Write-only AWS Secret key with permissions to query AWS APIs. This field is recommended over secret_key for enhanced security. 
    ||| } },
    withSecretKeyWo(value):: self {
      resource+: {
        vault_aws_auth_backend_client+: { [terraformName]+: { secret_key_wo: value } },
      },
    },
    '#withSecretKeyWoVersion':: { 'function': { help: |||
      Version counter for write-only secret_key field. Increment this value to force update of the secret. 
    ||| } },
    withSecretKeyWoVersion(value):: self {
      resource+: {
        vault_aws_auth_backend_client+: { [terraformName]+: { secret_key_wo_version: value } },
      },
    },
    '#withStsEndpoint':: { 'function': { help: |||
      URL to override the default generated endpoint for making AWS STS API calls. 
    ||| } },
    withStsEndpoint(value):: self {
      resource+: {
        vault_aws_auth_backend_client+: { [terraformName]+: { sts_endpoint: value } },
      },
    },
    '#withStsRegion':: { 'function': { help: |||
      Region to override the default region for making AWS STS API calls. 
    ||| } },
    withStsRegion(value):: self {
      resource+: {
        vault_aws_auth_backend_client+: { [terraformName]+: { sts_region: value } },
      },
    },
    '#withUseStsRegionFromClient':: { 'function': { help: |||
      If set, will override sts_region and use the region from the client request's header 
    ||| } },
    withUseStsRegionFromClient(value):: self {
      resource+: {
        vault_aws_auth_backend_client+: { [terraformName]+: { use_sts_region_from_client: value } },
      },
    },
  },
}
