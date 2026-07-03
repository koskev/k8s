{
  new(terraformName, backend, role):: {
    _type:: 'tf',
    data+: {
      vault_aws_access_credentials+: { [terraformName]+: {
        backend: backend,
        role: role,
      } },
    },
    '#withAccessKey':: { 'function': { help: |||
      AWS access key ID read from Vault. 
    ||| } },
    withAccessKey(value):: self {
      data+: {
        vault_aws_access_credentials+: { [terraformName]+: { access_key: value } },
      },
    },
    '#withBackend':: { 'function': { help: |||
      AWS Secret Backend to read credentials from. 
    ||| } },
    withBackend(value):: self {
      data+: {
        vault_aws_access_credentials+: { [terraformName]+: { backend: value } },
      },
    },
    withId(value):: self {
      data+: {
        vault_aws_access_credentials+: { [terraformName]+: { id: value } },
      },
    },
    '#withLeaseDuration':: { 'function': { help: |||
      Lease duration in seconds relative to the time in lease_start_time. 
    ||| } },
    withLeaseDuration(value):: self {
      data+: {
        vault_aws_access_credentials+: { [terraformName]+: { lease_duration: value } },
      },
    },
    '#withLeaseId':: { 'function': { help: |||
      Lease identifier assigned by vault. 
    ||| } },
    withLeaseId(value):: self {
      data+: {
        vault_aws_access_credentials+: { [terraformName]+: { lease_id: value } },
      },
    },
    '#withLeaseRenewable':: { 'function': { help: |||
      True if the duration of this lease can be extended through renewal. 
    ||| } },
    withLeaseRenewable(value):: self {
      data+: {
        vault_aws_access_credentials+: { [terraformName]+: { lease_renewable: value } },
      },
    },
    '#withLeaseStartTime':: { 'function': { help: |||
      Time at which the lease was read, using the clock of the system where Terraform was running 
    ||| } },
    withLeaseStartTime(value):: self {
      data+: {
        vault_aws_access_credentials+: { [terraformName]+: { lease_start_time: value } },
      },
    },
    '#withNamespace':: { 'function': { help: |||
      Target namespace. (requires Enterprise) 
    ||| } },
    withNamespace(value):: self {
      data+: {
        vault_aws_access_credentials+: { [terraformName]+: { namespace: value } },
      },
    },
    '#withRegion':: { 'function': { help: |||
      Region the read credentials belong to. 
    ||| } },
    withRegion(value):: self {
      data+: {
        vault_aws_access_credentials+: { [terraformName]+: { region: value } },
      },
    },
    '#withRole':: { 'function': { help: |||
      AWS Secret Role to read credentials from. 
    ||| } },
    withRole(value):: self {
      data+: {
        vault_aws_access_credentials+: { [terraformName]+: { role: value } },
      },
    },
    '#withRoleArn':: { 'function': { help: |||
      ARN to use if multiple are available in the role. Required if the role has multiple ARNs. 
    ||| } },
    withRoleArn(value):: self {
      data+: {
        vault_aws_access_credentials+: { [terraformName]+: { role_arn: value } },
      },
    },
    '#withSecretKey':: { 'function': { help: |||
      AWS secret key read from Vault. 
    ||| } },
    withSecretKey(value):: self {
      data+: {
        vault_aws_access_credentials+: { [terraformName]+: { secret_key: value } },
      },
    },
    '#withSecurityToken':: { 'function': { help: |||
      AWS security token read from Vault. (Only returned if type is 'sts'). 
    ||| } },
    withSecurityToken(value):: self {
      data+: {
        vault_aws_access_credentials+: { [terraformName]+: { security_token: value } },
      },
    },
    '#withTtl':: { 'function': { help: |||
      User specified Time-To-Live for the STS token. Uses the Role defined default_sts_ttl when not specified 
    ||| } },
    withTtl(value):: self {
      data+: {
        vault_aws_access_credentials+: { [terraformName]+: { ttl: value } },
      },
    },
    '#withType':: { 'function': { help: |||
      Type of credentials to read. Must be either 'creds' for Access Key and Secret Key, or 'sts' for STS. 
    ||| } },
    withType(value):: self {
      data+: {
        vault_aws_access_credentials+: { [terraformName]+: { type: value } },
      },
    },
  },
}
