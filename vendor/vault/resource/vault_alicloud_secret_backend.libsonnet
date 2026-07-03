{
  new(terraformName, secret_key_wo_version, access_key, mount, secret_key_wo):: {
    _type:: 'tf',
    resource+: {
      vault_alicloud_secret_backend+: { [terraformName]+: {
        secret_key_wo_version: secret_key_wo_version,
        access_key: access_key,
        mount: mount,
        secret_key_wo: secret_key_wo,
      } },
    },
    withSecretKeyWoVersion(value):: self {
      resource+: {
        vault_alicloud_secret_backend+: { [terraformName]+: { secret_key_wo_version: value } },
      },
    },
    withAccessKey(value):: self {
      resource+: {
        vault_alicloud_secret_backend+: { [terraformName]+: { access_key: value } },
      },
    },
    withNamespace(value):: self {
      resource+: {
        vault_alicloud_secret_backend+: { [terraformName]+: { namespace: value } },
      },
    },
    withMount(value):: self {
      resource+: {
        vault_alicloud_secret_backend+: { [terraformName]+: { mount: value } },
      },
    },
    withSecretKeyWo(value):: self {
      resource+: {
        vault_alicloud_secret_backend+: { [terraformName]+: { secret_key_wo: value } },
      },
    },
  },
}
