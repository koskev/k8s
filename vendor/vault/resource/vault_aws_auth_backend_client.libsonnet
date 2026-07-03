{
  new(terraformName):: {
    _type:: 'tf',
    resource+: {
      vault_aws_auth_backend_client+: { [terraformName]+: {
      } },
    },
    withIdentityTokenAudience(value):: self {
      resource+: {
        vault_aws_auth_backend_client+: { [terraformName]+: { identity_token_audience: value } },
      },
    },
    withId(value):: self {
      resource+: {
        vault_aws_auth_backend_client+: { [terraformName]+: { id: value } },
      },
    },
    withUseStsRegionFromClient(value):: self {
      resource+: {
        vault_aws_auth_backend_client+: { [terraformName]+: { use_sts_region_from_client: value } },
      },
    },
    withRoleArn(value):: self {
      resource+: {
        vault_aws_auth_backend_client+: { [terraformName]+: { role_arn: value } },
      },
    },
    withRotationSchedule(value):: self {
      resource+: {
        vault_aws_auth_backend_client+: { [terraformName]+: { rotation_schedule: value } },
      },
    },
    withSecretKey(value):: self {
      resource+: {
        vault_aws_auth_backend_client+: { [terraformName]+: { secret_key: value } },
      },
    },
    withAccessKey(value):: self {
      resource+: {
        vault_aws_auth_backend_client+: { [terraformName]+: { access_key: value } },
      },
    },
    withRotationPeriod(value):: self {
      resource+: {
        vault_aws_auth_backend_client+: { [terraformName]+: { rotation_period: value } },
      },
    },
    withIamEndpoint(value):: self {
      resource+: {
        vault_aws_auth_backend_client+: { [terraformName]+: { iam_endpoint: value } },
      },
    },
    withIamServerIdHeaderValue(value):: self {
      resource+: {
        vault_aws_auth_backend_client+: { [terraformName]+: { iam_server_id_header_value: value } },
      },
    },
    withStsRegion(value):: self {
      resource+: {
        vault_aws_auth_backend_client+: { [terraformName]+: { sts_region: value } },
      },
    },
    withDisableAutomatedRotation(value):: self {
      resource+: {
        vault_aws_auth_backend_client+: { [terraformName]+: { disable_automated_rotation: value } },
      },
    },
    withIdentityTokenTtl(value):: self {
      resource+: {
        vault_aws_auth_backend_client+: { [terraformName]+: { identity_token_ttl: value } },
      },
    },
    withBackend(value):: self {
      resource+: {
        vault_aws_auth_backend_client+: { [terraformName]+: { backend: value } },
      },
    },
    withMaxRetries(value):: self {
      resource+: {
        vault_aws_auth_backend_client+: { [terraformName]+: { max_retries: value } },
      },
    },
    withAllowedStsHeaderValues(value):: self {
      resource+: {
        vault_aws_auth_backend_client+: { [terraformName]+: { allowed_sts_header_values: value } },
      },
    },
    withNamespace(value):: self {
      resource+: {
        vault_aws_auth_backend_client+: { [terraformName]+: { namespace: value } },
      },
    },
    withRotationWindow(value):: self {
      resource+: {
        vault_aws_auth_backend_client+: { [terraformName]+: { rotation_window: value } },
      },
    },
    withSecretKeyWo(value):: self {
      resource+: {
        vault_aws_auth_backend_client+: { [terraformName]+: { secret_key_wo: value } },
      },
    },
    withEc2Endpoint(value):: self {
      resource+: {
        vault_aws_auth_backend_client+: { [terraformName]+: { ec2_endpoint: value } },
      },
    },
    withSecretKeyWoVersion(value):: self {
      resource+: {
        vault_aws_auth_backend_client+: { [terraformName]+: { secret_key_wo_version: value } },
      },
    },
    withStsEndpoint(value):: self {
      resource+: {
        vault_aws_auth_backend_client+: { [terraformName]+: { sts_endpoint: value } },
      },
    },
  },
}
