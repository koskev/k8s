{
  local outerSelf = self,
  new(terraformName, app_id, name, private_key):: self.functions(terraformName) {
    ref():: outerSelf.ref(terraformName),
    _type:: 'tf',
    resource+: {
      vault_secrets_sync_github_apps+: {
        [terraformName]+: {
          app_id: app_id,
          name: name,
          private_key: private_key,
        },
      },
    },
  },
  functions(terraformName):: {
    withForEach(value):: self {
      resource+: {
        vault_secrets_sync_github_apps+: { [terraformName]+: { for_each: value } },
      },
    },
    withDependsOn(value):: self {
      resource+: {
        vault_secrets_sync_github_apps+: { [terraformName]+: { depends_on: value } },
      },
    },
    withCount(value):: self {
      resource+: {
        vault_secrets_sync_github_apps+: { [terraformName]+: { count: value } },
      },
    },
    withLifecycle(value):: self {
      resource+: {
        vault_secrets_sync_github_apps+: { [terraformName]+: { lifecycle: value } },
      },
    },
    withProvider(value):: self {
      resource+: {
        vault_secrets_sync_github_apps+: { [terraformName]+: { provider: value } },
      },
    },
    withProviders(value):: self {
      resource+: {
        vault_secrets_sync_github_apps+: { [terraformName]+: { providers: value } },
      },
    },
    '#app_id':: { 'function': { help: |||
      The GitHub application ID.
    ||| } },
    withAppId(value):: self {
      resource+: {
        vault_secrets_sync_github_apps+: { [terraformName]+: { app_id: value } },
      },
    },
    withId(value):: self {
      resource+: {
        vault_secrets_sync_github_apps+: { [terraformName]+: { id: value } },
      },
    },
    '#name':: { 'function': { help: |||
      The user-defined name of the GitHub App configuration.
    ||| } },
    withName(value):: self {
      resource+: {
        vault_secrets_sync_github_apps+: { [terraformName]+: { name: value } },
      },
    },
    '#namespace':: { 'function': { help: |||
      Target namespace. (requires Enterprise)
    ||| } },
    withNamespace(value):: self {
      resource+: {
        vault_secrets_sync_github_apps+: { [terraformName]+: { namespace: value } },
      },
    },
    '#private_key':: { 'function': { help: |||
      The content of a PEM formatted private key generated on GitHub for the app.
    ||| } },
    withPrivateKey(value):: self {
      resource+: {
        vault_secrets_sync_github_apps+: { [terraformName]+: { private_key: value } },
      },
    },
  },
  ref(terraformName):: {
    local refSelf = self,
    plain(suffix=''):: '${ vault_secrets_sync_github_apps.%s%s }' % [terraformName, suffix],
    fields:: {
      '#app_id':: { 'function': { help: |||
        The GitHub application ID.
      ||| } },
      app_id(suffix=''):: refSelf.plain('.app_id%s' % suffix),
      '#fingerprint':: { 'function': { help: |||
        A fingerprint of a private key.
      ||| } },
      fingerprint(suffix=''):: refSelf.plain('.fingerprint%s' % suffix),
      id(suffix=''):: refSelf.plain('.id%s' % suffix),
      '#name':: { 'function': { help: |||
        The user-defined name of the GitHub App configuration.
      ||| } },
      name(suffix=''):: refSelf.plain('.name%s' % suffix),
      '#namespace':: { 'function': { help: |||
        Target namespace. (requires Enterprise)
      ||| } },
      namespace(suffix=''):: refSelf.plain('.namespace%s' % suffix),
      '#private_key':: { 'function': { help: |||
        The content of a PEM formatted private key generated on GitHub for the app.
      ||| } },
      private_key(suffix=''):: refSelf.plain('.private_key%s' % suffix),
    },
  },
}
