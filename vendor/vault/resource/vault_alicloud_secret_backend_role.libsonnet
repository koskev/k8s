{
  new(terraformName, name, mount):: {
    _type:: 'tf',
    resource+: {
      vault_alicloud_secret_backend_role+: { [terraformName]+: {
        name: name,
        mount: mount,
      } },
    },
    withName(value):: self {
      resource+: {
        vault_alicloud_secret_backend_role+: { [terraformName]+: { name: value } },
      },
    },
    withMount(value):: self {
      resource+: {
        vault_alicloud_secret_backend_role+: { [terraformName]+: { mount: value } },
      },
    },
    withRoleArn(value):: self {
      resource+: {
        vault_alicloud_secret_backend_role+: { [terraformName]+: { role_arn: value } },
      },
    },
    withMaxTtl(value):: self {
      resource+: {
        vault_alicloud_secret_backend_role+: { [terraformName]+: { max_ttl: value } },
      },
    },
    withNamespace(value):: self {
      resource+: {
        vault_alicloud_secret_backend_role+: { [terraformName]+: { namespace: value } },
      },
    },
    withTtl(value):: self {
      resource+: {
        vault_alicloud_secret_backend_role+: { [terraformName]+: { ttl: value } },
      },
    },
  },
}
