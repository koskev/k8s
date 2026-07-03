{
  new(terraformName, mount, name):: {
    _type:: 'tf',
    resource+: {
      vault_alicloud_secret_backend_role+: { [terraformName]+: {
        mount: mount,
        name: name,
      } },
    },
    '#withMaxTtl': { 'function': { help: |||
      The maximum allowed lifetime of credentials issued using this role. 
    ||| } },
    withMaxTtl(value):: self {
      resource+: {
        vault_alicloud_secret_backend_role+: { [terraformName]+: { max_ttl: value } },
      },
    },
    '#withMount': { 'function': { help: |||
      Path of the AliCloud Secret Backend the role belongs to. 
    ||| } },
    withMount(value):: self {
      resource+: {
        vault_alicloud_secret_backend_role+: { [terraformName]+: { mount: value } },
      },
    },
    '#withName': { 'function': { help: |||
      Name of the role. 
    ||| } },
    withName(value):: self {
      resource+: {
        vault_alicloud_secret_backend_role+: { [terraformName]+: { name: value } },
      },
    },
    '#withNamespace': { 'function': { help: |||
      Target namespace. (requires Enterprise) 
    ||| } },
    withNamespace(value):: self {
      resource+: {
        vault_alicloud_secret_backend_role+: { [terraformName]+: { namespace: value } },
      },
    },
    '#withRoleArn': { 'function': { help: |||
      ARN of the RAM role to assume. If provided, inline_policies and remote_policies should be blank. The trusted principal of the role must be configured to allow assumption by the access key and secret configured in the backend. 
    ||| } },
    withRoleArn(value):: self {
      resource+: {
        vault_alicloud_secret_backend_role+: { [terraformName]+: { role_arn: value } },
      },
    },
    '#withTtl': { 'function': { help: |||
      Duration in seconds after which the issued credentials should expire. Defaults to 0, in which case the value will fallback to the system/mount defaults. 
    ||| } },
    withTtl(value):: self {
      resource+: {
        vault_alicloud_secret_backend_role+: { [terraformName]+: { ttl: value } },
      },
    },
  },
}
