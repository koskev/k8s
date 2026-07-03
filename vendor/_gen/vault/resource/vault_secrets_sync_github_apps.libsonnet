{
  new(terraformName, app_id, name, private_key):: {
    _type:: 'tf',
    resource+: {
      vault_secrets_sync_github_apps+: { [terraformName]+: {
        app_id: app_id,
        name: name,
        private_key: private_key,
      } },
    },
    '#withAppId':: { 'function': { help: |||
      The GitHub application ID. 
    ||| } },
    withAppId(value):: self {
      resource+: {
        vault_secrets_sync_github_apps+: { [terraformName]+: { app_id: value } },
      },
    },
    '#withFingerprint':: { 'function': { help: |||
      A fingerprint of a private key. 
    ||| } },
    withFingerprint(value):: self {
      resource+: {
        vault_secrets_sync_github_apps+: { [terraformName]+: { fingerprint: value } },
      },
    },
    withId(value):: self {
      resource+: {
        vault_secrets_sync_github_apps+: { [terraformName]+: { id: value } },
      },
    },
    '#withName':: { 'function': { help: |||
      The user-defined name of the GitHub App configuration. 
    ||| } },
    withName(value):: self {
      resource+: {
        vault_secrets_sync_github_apps+: { [terraformName]+: { name: value } },
      },
    },
    '#withNamespace':: { 'function': { help: |||
      Target namespace. (requires Enterprise) 
    ||| } },
    withNamespace(value):: self {
      resource+: {
        vault_secrets_sync_github_apps+: { [terraformName]+: { namespace: value } },
      },
    },
    '#withPrivateKey':: { 'function': { help: |||
      The content of a PEM formatted private key generated on GitHub for the app. 
    ||| } },
    withPrivateKey(value):: self {
      resource+: {
        vault_secrets_sync_github_apps+: { [terraformName]+: { private_key: value } },
      },
    },
  },
}
