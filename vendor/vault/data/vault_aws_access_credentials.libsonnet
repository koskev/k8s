{
  new(terraformName, role, backend):: {
    _type:: 'tf',
    data+: {
      vault_aws_access_credentials+: { [terraformName]+: {
        role: role,
        backend: backend,
      } },
    },
    withTtl(value):: self {
      data+: {
        vault_aws_access_credentials+: { [terraformName]+: { ttl: value } },
      },
    },
    withAccessKey(value):: self {
      data+: {
        vault_aws_access_credentials+: { [terraformName]+: { access_key: value } },
      },
    },
    withId(value):: self {
      data+: {
        vault_aws_access_credentials+: { [terraformName]+: { id: value } },
      },
    },
    withRole(value):: self {
      data+: {
        vault_aws_access_credentials+: { [terraformName]+: { role: value } },
      },
    },
    withLeaseId(value):: self {
      data+: {
        vault_aws_access_credentials+: { [terraformName]+: { lease_id: value } },
      },
    },
    withLeaseDuration(value):: self {
      data+: {
        vault_aws_access_credentials+: { [terraformName]+: { lease_duration: value } },
      },
    },
    withSecretKey(value):: self {
      data+: {
        vault_aws_access_credentials+: { [terraformName]+: { secret_key: value } },
      },
    },
    withBackend(value):: self {
      data+: {
        vault_aws_access_credentials+: { [terraformName]+: { backend: value } },
      },
    },
    withLeaseStartTime(value):: self {
      data+: {
        vault_aws_access_credentials+: { [terraformName]+: { lease_start_time: value } },
      },
    },
    withRegion(value):: self {
      data+: {
        vault_aws_access_credentials+: { [terraformName]+: { region: value } },
      },
    },
    withLeaseRenewable(value):: self {
      data+: {
        vault_aws_access_credentials+: { [terraformName]+: { lease_renewable: value } },
      },
    },
    withType(value):: self {
      data+: {
        vault_aws_access_credentials+: { [terraformName]+: { type: value } },
      },
    },
    withRoleArn(value):: self {
      data+: {
        vault_aws_access_credentials+: { [terraformName]+: { role_arn: value } },
      },
    },
    withSecurityToken(value):: self {
      data+: {
        vault_aws_access_credentials+: { [terraformName]+: { security_token: value } },
      },
    },
    withNamespace(value):: self {
      data+: {
        vault_aws_access_credentials+: { [terraformName]+: { namespace: value } },
      },
    },
  },
}
