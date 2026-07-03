{
  new(terraformName, name, private_key, app_id):: {
    _type:: 'tf',
    resource+: {
      vault_secrets_sync_github_apps+: { [terraformName]+: {
        name: name,
        private_key: private_key,
        app_id: app_id,
      } },
    },
    withFingerprint(value):: self {
      resource+: {
        vault_secrets_sync_github_apps+: { [terraformName]+: { fingerprint: value } },
      },
    },
    withName(value):: self {
      resource+: {
        vault_secrets_sync_github_apps+: { [terraformName]+: { name: value } },
      },
    },
    withPrivateKey(value):: self {
      resource+: {
        vault_secrets_sync_github_apps+: { [terraformName]+: { private_key: value } },
      },
    },
    withId(value):: self {
      resource+: {
        vault_secrets_sync_github_apps+: { [terraformName]+: { id: value } },
      },
    },
    withAppId(value):: self {
      resource+: {
        vault_secrets_sync_github_apps+: { [terraformName]+: { app_id: value } },
      },
    },
    withNamespace(value):: self {
      resource+: {
        vault_secrets_sync_github_apps+: { [terraformName]+: { namespace: value } },
      },
    },
  },
}
