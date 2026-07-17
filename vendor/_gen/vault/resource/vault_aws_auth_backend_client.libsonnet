{
  local outerSelf = self,
  new(terraformName):: self.functions(terraformName) + {
    _type:: 'tf',
    ref():: outerSelf.ref(terraformName),
    resource+: {
      vault_aws_auth_backend_client+: { [terraformName]+: {
      } },
    },
  }
  ,
  functions(terraformName):: {
    withForEach(value):: self { resource+: {
      vault_aws_auth_backend_client+: { [terraformName]+: { for_each: value } },
    } },
    withDependsOn(value):: self { resource+: {
      vault_aws_auth_backend_client+: { [terraformName]+: { depends_on: value } },
    } },
    withCount(value):: self { resource+: {
      vault_aws_auth_backend_client+: { [terraformName]+: { count: value } },
    } },
    withLifecycle(value):: self { resource+: {
      vault_aws_auth_backend_client+: { [terraformName]+: { lifecycle: value } },
    } },
    withProvider(value):: self { resource+: {
      vault_aws_auth_backend_client+: { [terraformName]+: { provider: value } },
    } },
    withProviders(value):: self { resource+: {
      vault_aws_auth_backend_client+: { [terraformName]+: { providers: value } },
    } },
    addCustomData(name, value):: self { resource+: {
      vault_aws_auth_backend_client+: { [terraformName]+: { [name]: value } },
    } },
    '#withAccessKey':: { 'function': {
      help:
        |||
          AWS Access key with permissions to query AWS APIs.
        |||,
    } },
    withAccessKey(value):: self { resource+: {
      vault_aws_auth_backend_client+: { [terraformName]+: { access_key: value } },
    } },
    '#withAllowedStsHeaderValues':: { 'function': {
      help:
        |||
          List of additional headers that are allowed to be in STS request headers.
        |||,
    } },
    withAllowedStsHeaderValues(value):: self { resource+: {
      vault_aws_auth_backend_client+: { [terraformName]+: { allowed_sts_header_values: value } },
    } },
    '#withBackend':: { 'function': {
      help:
        |||
          Unique name of the auth backend to configure.
        |||,
    } },
    withBackend(value):: self { resource+: {
      vault_aws_auth_backend_client+: { [terraformName]+: { backend: value } },
    } },
    '#withDisableAutomatedRotation':: { 'function': {
      help:
        |||
          Stops rotation of the root credential until set to false.
        |||,
    } },
    withDisableAutomatedRotation(value):: self { resource+: {
      vault_aws_auth_backend_client+: { [terraformName]+: { disable_automated_rotation: value } },
    } },
    '#withEc2Endpoint':: { 'function': {
      help:
        |||
          URL to override the default generated endpoint for making AWS EC2 API calls.
        |||,
    } },
    withEc2Endpoint(value):: self { resource+: {
      vault_aws_auth_backend_client+: { [terraformName]+: { ec2_endpoint: value } },
    } },
    '#withIamEndpoint':: { 'function': {
      help:
        |||
          URL to override the default generated endpoint for making AWS IAM API calls.
        |||,
    } },
    withIamEndpoint(value):: self { resource+: {
      vault_aws_auth_backend_client+: { [terraformName]+: { iam_endpoint: value } },
    } },
    '#withIamServerIdHeaderValue':: { 'function': {
      help:
        |||
          The value to require in the X-Vault-AWS-IAM-Server-ID header as part of GetCallerIdentity requests that are used in the iam auth method.
        |||,
    } },
    withIamServerIdHeaderValue(value):: self { resource+: {
      vault_aws_auth_backend_client+: { [terraformName]+: { iam_server_id_header_value: value } },
    } },
    withId(value):: self { resource+: {
      vault_aws_auth_backend_client+: { [terraformName]+: { id: value } },
    } },
    '#withIdentityTokenAudience':: { 'function': {
      help:
        |||
          The audience claim value.
        |||,
    } },
    withIdentityTokenAudience(value):: self { resource+: {
      vault_aws_auth_backend_client+: { [terraformName]+: { identity_token_audience: value } },
    } },
    '#withIdentityTokenTtl':: { 'function': {
      help:
        |||
          The TTL of generated identity tokens in seconds.
        |||,
    } },
    withIdentityTokenTtl(value):: self { resource+: {
      vault_aws_auth_backend_client+: { [terraformName]+: { identity_token_ttl: value } },
    } },
    '#withMaxRetries':: { 'function': {
      help:
        |||
          Number of max retries the client should use for recoverable errors.
        |||,
    } },
    withMaxRetries(value):: self { resource+: {
      vault_aws_auth_backend_client+: { [terraformName]+: { max_retries: value } },
    } },
    '#withNamespace':: { 'function': {
      help:
        |||
          Target namespace. (requires Enterprise)
        |||,
    } },
    withNamespace(value):: self { resource+: {
      vault_aws_auth_backend_client+: { [terraformName]+: { namespace: value } },
    } },
    '#withRoleArn':: { 'function': {
      help:
        |||
          Role ARN to assume for plugin identity token federation.
        |||,
    } },
    withRoleArn(value):: self { resource+: {
      vault_aws_auth_backend_client+: { [terraformName]+: { role_arn: value } },
    } },
    '#withRotationPeriod':: { 'function': {
      help:
        |||
          The period of time in seconds between each rotation of the root credential. Cannot be used with rotation_schedule.
        |||,
    } },
    withRotationPeriod(value):: self { resource+: {
      vault_aws_auth_backend_client+: { [terraformName]+: { rotation_period: value } },
    } },
    '#withRotationSchedule':: { 'function': {
      help:
        |||
          The cron-style schedule for the root credential to be rotated on. Cannot be used with rotation_period.
        |||,
    } },
    withRotationSchedule(value):: self { resource+: {
      vault_aws_auth_backend_client+: { [terraformName]+: { rotation_schedule: value } },
    } },
    '#withRotationWindow':: { 'function': {
      help:
        |||
          The maximum amount of time in seconds Vault is allowed to complete a rotation once a scheduled rotation is triggered. Can only be used with rotation_schedule.
        |||,
    } },
    withRotationWindow(value):: self { resource+: {
      vault_aws_auth_backend_client+: { [terraformName]+: { rotation_window: value } },
    } },
    '#withSecretKey':: { 'function': {
      help:
        |||
          AWS Secret key with permissions to query AWS APIs.
        |||,
    } },
    withSecretKey(value):: self { resource+: {
      vault_aws_auth_backend_client+: { [terraformName]+: { secret_key: value } },
    } },
    '#withSecretKeyWo':: { 'function': {
      help:
        |||
          Write-only AWS Secret key with permissions to query AWS APIs. This field is recommended over secret_key for enhanced security.
        |||,
    } },
    withSecretKeyWo(value):: self { resource+: {
      vault_aws_auth_backend_client+: { [terraformName]+: { secret_key_wo: value } },
    } },
    '#withSecretKeyWoVersion':: { 'function': {
      help:
        |||
          Version counter for write-only secret_key field. Increment this value to force update of the secret.
        |||,
    } },
    withSecretKeyWoVersion(value):: self { resource+: {
      vault_aws_auth_backend_client+: { [terraformName]+: { secret_key_wo_version: value } },
    } },
    '#withStsEndpoint':: { 'function': {
      help:
        |||
          URL to override the default generated endpoint for making AWS STS API calls.
        |||,
    } },
    withStsEndpoint(value):: self { resource+: {
      vault_aws_auth_backend_client+: { [terraformName]+: { sts_endpoint: value } },
    } },
    '#withStsRegion':: { 'function': {
      help:
        |||
          Region to override the default region for making AWS STS API calls.
        |||,
    } },
    withStsRegion(value):: self { resource+: {
      vault_aws_auth_backend_client+: { [terraformName]+: { sts_region: value } },
    } },
    '#withUseStsRegionFromClient':: { 'function': {
      help:
        |||
          If set, will override sts_region and use the region from the client request's header
        |||,
    } },
    withUseStsRegionFromClient(value):: self { resource+: {
      vault_aws_auth_backend_client+: { [terraformName]+: { use_sts_region_from_client: value } },
    } },

  }
  ,
  ref(terraformName):: {
    local refSelf = self,
    plain(suffix=''):: '${ vault_aws_auth_backend_client.%s%s }' % [terraformName, suffix],
    fields:: {
      '#access_key':: { 'function': {
        help:
          |||
            AWS Access key with permissions to query AWS APIs.
          |||,
      } },
      access_key(suffix=''):: refSelf.plain('.access_key%s' % suffix),
      '#allowed_sts_header_values':: { 'function': {
        help:
          |||
            List of additional headers that are allowed to be in STS request headers.
          |||,
      } },
      allowed_sts_header_values(suffix=''):: refSelf.plain('.allowed_sts_header_values%s' % suffix),
      '#backend':: { 'function': {
        help:
          |||
            Unique name of the auth backend to configure.
          |||,
      } },
      backend(suffix=''):: refSelf.plain('.backend%s' % suffix),
      '#disable_automated_rotation':: { 'function': {
        help:
          |||
            Stops rotation of the root credential until set to false.
          |||,
      } },
      disable_automated_rotation(suffix=''):: refSelf.plain('.disable_automated_rotation%s' % suffix),
      '#ec2_endpoint':: { 'function': {
        help:
          |||
            URL to override the default generated endpoint for making AWS EC2 API calls.
          |||,
      } },
      ec2_endpoint(suffix=''):: refSelf.plain('.ec2_endpoint%s' % suffix),
      '#iam_endpoint':: { 'function': {
        help:
          |||
            URL to override the default generated endpoint for making AWS IAM API calls.
          |||,
      } },
      iam_endpoint(suffix=''):: refSelf.plain('.iam_endpoint%s' % suffix),
      '#iam_server_id_header_value':: { 'function': {
        help:
          |||
            The value to require in the X-Vault-AWS-IAM-Server-ID header as part of GetCallerIdentity requests that are used in the iam auth method.
          |||,
      } },
      iam_server_id_header_value(suffix=''):: refSelf.plain('.iam_server_id_header_value%s' % suffix),
      id(suffix=''):: refSelf.plain('.id%s' % suffix),
      '#identity_token_audience':: { 'function': {
        help:
          |||
            The audience claim value.
          |||,
      } },
      identity_token_audience(suffix=''):: refSelf.plain('.identity_token_audience%s' % suffix),
      '#identity_token_ttl':: { 'function': {
        help:
          |||
            The TTL of generated identity tokens in seconds.
          |||,
      } },
      identity_token_ttl(suffix=''):: refSelf.plain('.identity_token_ttl%s' % suffix),
      '#max_retries':: { 'function': {
        help:
          |||
            Number of max retries the client should use for recoverable errors.
          |||,
      } },
      max_retries(suffix=''):: refSelf.plain('.max_retries%s' % suffix),
      '#namespace':: { 'function': {
        help:
          |||
            Target namespace. (requires Enterprise)
          |||,
      } },
      namespace(suffix=''):: refSelf.plain('.namespace%s' % suffix),
      '#role_arn':: { 'function': {
        help:
          |||
            Role ARN to assume for plugin identity token federation.
          |||,
      } },
      role_arn(suffix=''):: refSelf.plain('.role_arn%s' % suffix),
      '#rotation_period':: { 'function': {
        help:
          |||
            The period of time in seconds between each rotation of the root credential. Cannot be used with rotation_schedule.
          |||,
      } },
      rotation_period(suffix=''):: refSelf.plain('.rotation_period%s' % suffix),
      '#rotation_schedule':: { 'function': {
        help:
          |||
            The cron-style schedule for the root credential to be rotated on. Cannot be used with rotation_period.
          |||,
      } },
      rotation_schedule(suffix=''):: refSelf.plain('.rotation_schedule%s' % suffix),
      '#rotation_window':: { 'function': {
        help:
          |||
            The maximum amount of time in seconds Vault is allowed to complete a rotation once a scheduled rotation is triggered. Can only be used with rotation_schedule.
          |||,
      } },
      rotation_window(suffix=''):: refSelf.plain('.rotation_window%s' % suffix),
      '#secret_key':: { 'function': {
        help:
          |||
            AWS Secret key with permissions to query AWS APIs.
          |||,
      } },
      secret_key(suffix=''):: refSelf.plain('.secret_key%s' % suffix),
      '#secret_key_wo':: { 'function': {
        help:
          |||
            Write-only AWS Secret key with permissions to query AWS APIs. This field is recommended over secret_key for enhanced security.
          |||,
      } },
      secret_key_wo(suffix=''):: refSelf.plain('.secret_key_wo%s' % suffix),
      '#secret_key_wo_version':: { 'function': {
        help:
          |||
            Version counter for write-only secret_key field. Increment this value to force update of the secret.
          |||,
      } },
      secret_key_wo_version(suffix=''):: refSelf.plain('.secret_key_wo_version%s' % suffix),
      '#sts_endpoint':: { 'function': {
        help:
          |||
            URL to override the default generated endpoint for making AWS STS API calls.
          |||,
      } },
      sts_endpoint(suffix=''):: refSelf.plain('.sts_endpoint%s' % suffix),
      '#sts_region':: { 'function': {
        help:
          |||
            Region to override the default region for making AWS STS API calls.
          |||,
      } },
      sts_region(suffix=''):: refSelf.plain('.sts_region%s' % suffix),
      '#use_sts_region_from_client':: { 'function': {
        help:
          |||
            If set, will override sts_region and use the region from the client request's header
          |||,
      } },
      use_sts_region_from_client(suffix=''):: refSelf.plain('.use_sts_region_from_client%s' % suffix),

    },

  },

}
