{
  new(terraformName, access_key, mount, secret_key_wo, secret_key_wo_version):: {
    _type:: 'tf',
    resource+: {
      vault_alicloud_secret_backend+: { [terraformName]+: {
        access_key: access_key,
        mount: mount,
        secret_key_wo: secret_key_wo,
        secret_key_wo_version: secret_key_wo_version,
      } },
    },
    '#withAccessKey':: { 'function': { help: |||
      The AliCloud Access Key ID to use when generating new credentials. 
    ||| } },
    withAccessKey(value):: self {
      resource+: {
        vault_alicloud_secret_backend+: { [terraformName]+: { access_key: value } },
      },
    },
    '#withMount':: { 'function': { help: |||
      Path of the AliCloud secrets engine mount. Must match the `path` of a `vault_mount` resource with `type = "alicloud"`. Use `vault_mount.alicloud.path` here. 
    ||| } },
    withMount(value):: self {
      resource+: {
        vault_alicloud_secret_backend+: { [terraformName]+: { mount: value } },
      },
    },
    '#withNamespace':: { 'function': { help: |||
      Target namespace. (requires Enterprise) 
    ||| } },
    withNamespace(value):: self {
      resource+: {
        vault_alicloud_secret_backend+: { [terraformName]+: { namespace: value } },
      },
    },
    '#withSecretKeyWo':: { 'function': { help: |||
      Write-only AliCloud Secret Access Key. This value will never be read back from Vault. 
    ||| } },
    withSecretKeyWo(value):: self {
      resource+: {
        vault_alicloud_secret_backend+: { [terraformName]+: { secret_key_wo: value } },
      },
    },
    '#withSecretKeyWoVersion':: { 'function': { help: |||
      A version counter for the write-only `secret_key_wo` field. Incrementing this value will trigger an update to the secret key in Vault. 
    ||| } },
    withSecretKeyWoVersion(value):: self {
      resource+: {
        vault_alicloud_secret_backend+: { [terraformName]+: { secret_key_wo_version: value } },
      },
    },
  },
}
