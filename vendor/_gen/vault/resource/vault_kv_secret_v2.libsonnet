{
  local outerSelf = self,
  new(terraformName, mount, name):: self.functions(terraformName) {
    ref():: outerSelf.ref(terraformName),
    _type:: 'tf',
    resource+: {
      vault_kv_secret_v2+: {
        [terraformName]+: {
          mount: mount,
          name: name,
        },
      },
    },
  },
  functions(terraformName):: {
    withForEach(value):: self {
      resource+: {
        vault_kv_secret_v2+: { [terraformName]+: { for_each: value } },
      },
    },
    withDependsOn(value):: self {
      resource+: {
        vault_kv_secret_v2+: { [terraformName]+: { depends_on: value } },
      },
    },
    withCount(value):: self {
      resource+: {
        vault_kv_secret_v2+: { [terraformName]+: { count: value } },
      },
    },
    withLifecycle(value):: self {
      resource+: {
        vault_kv_secret_v2+: { [terraformName]+: { lifecycle: value } },
      },
    },
    withProvider(value):: self {
      resource+: {
        vault_kv_secret_v2+: { [terraformName]+: { provider: value } },
      },
    },
    withProviders(value):: self {
      resource+: {
        vault_kv_secret_v2+: { [terraformName]+: { providers: value } },
      },
    },
    '#cas':: { 'function': { help: |||
      This flag is required if cas_required is set to true on either the secret or the engine's config. In order for a write to be successful, cas must be set to the current version of the secret.
    ||| } },
    withCas(value):: self {
      resource+: {
        vault_kv_secret_v2+: { [terraformName]+: { cas: value } },
      },
    },
    '#data_json':: { 'function': { help: |||
      JSON-encoded secret data to write.
    ||| } },
    withDataJson(value):: self {
      resource+: {
        vault_kv_secret_v2+: { [terraformName]+: { data_json: value } },
      },
    },
    '#data_json_wo':: { 'function': { help: |||
      Write-Only JSON-encoded secret data to write.
    ||| } },
    withDataJsonWo(value):: self {
      resource+: {
        vault_kv_secret_v2+: { [terraformName]+: { data_json_wo: value } },
      },
    },
    '#data_json_wo_version':: { 'function': { help: |||
      Version counter for write-only secret data.
    ||| } },
    withDataJsonWoVersion(value):: self {
      resource+: {
        vault_kv_secret_v2+: { [terraformName]+: { data_json_wo_version: value } },
      },
    },
    '#delete_all_versions':: { 'function': { help: |||
      If set to true, permanently deletes all versions for the specified key.
    ||| } },
    withDeleteAllVersions(value):: self {
      resource+: {
        vault_kv_secret_v2+: { [terraformName]+: { delete_all_versions: value } },
      },
    },
    '#disable_read':: { 'function': { help: |||
      If set to true, disables reading secret from Vault; note: drift won't be detected.
    ||| } },
    withDisableRead(value):: self {
      resource+: {
        vault_kv_secret_v2+: { [terraformName]+: { disable_read: value } },
      },
    },
    withId(value):: self {
      resource+: {
        vault_kv_secret_v2+: { [terraformName]+: { id: value } },
      },
    },
    '#mount':: { 'function': { help: |||
      Path where KV-V2 engine is mounted.
    ||| } },
    withMount(value):: self {
      resource+: {
        vault_kv_secret_v2+: { [terraformName]+: { mount: value } },
      },
    },
    '#name':: { 'function': { help: |||
      Full name of the secret. For a nested secret, the name is the nested path excluding the mount and data prefix. For example, for a secret at 'kvv2/data/foo/bar/baz', the name is 'foo/bar/baz'
    ||| } },
    withName(value):: self {
      resource+: {
        vault_kv_secret_v2+: { [terraformName]+: { name: value } },
      },
    },
    '#namespace':: { 'function': { help: |||
      Target namespace. (requires Enterprise)
    ||| } },
    withNamespace(value):: self {
      resource+: {
        vault_kv_secret_v2+: { [terraformName]+: { namespace: value } },
      },
    },
    '#options':: { 'function': { help: |||
      An object that holds option settings.
    ||| } },
    withOptions(value):: self {
      resource+: {
        vault_kv_secret_v2+: { [terraformName]+: { options: value } },
      },
    },
  },
  ref(terraformName):: {
    local refSelf = self,
    plain(suffix=''):: '${ vault_kv_secret_v2.%s%s }' % [terraformName, suffix],
    fields:: {
      '#cas':: { 'function': { help: |||
        This flag is required if cas_required is set to true on either the secret or the engine's config. In order for a write to be successful, cas must be set to the current version of the secret.
      ||| } },
      cas(suffix=''):: refSelf.plain('.cas%s' % suffix),
      '#data':: { 'function': { help: |||
        Map of strings read from Vault.
      ||| } },
      data(suffix=''):: refSelf.plain('.data%s' % suffix),
      '#data_json':: { 'function': { help: |||
        JSON-encoded secret data to write.
      ||| } },
      data_json(suffix=''):: refSelf.plain('.data_json%s' % suffix),
      '#data_json_wo':: { 'function': { help: |||
        Write-Only JSON-encoded secret data to write.
      ||| } },
      data_json_wo(suffix=''):: refSelf.plain('.data_json_wo%s' % suffix),
      '#data_json_wo_version':: { 'function': { help: |||
        Version counter for write-only secret data.
      ||| } },
      data_json_wo_version(suffix=''):: refSelf.plain('.data_json_wo_version%s' % suffix),
      '#delete_all_versions':: { 'function': { help: |||
        If set to true, permanently deletes all versions for the specified key.
      ||| } },
      delete_all_versions(suffix=''):: refSelf.plain('.delete_all_versions%s' % suffix),
      '#disable_read':: { 'function': { help: |||
        If set to true, disables reading secret from Vault; note: drift won't be detected.
      ||| } },
      disable_read(suffix=''):: refSelf.plain('.disable_read%s' % suffix),
      id(suffix=''):: refSelf.plain('.id%s' % suffix),
      '#metadata':: { 'function': { help: |||
        Metadata associated with this secret read from Vault.
      ||| } },
      metadata(suffix=''):: refSelf.plain('.metadata%s' % suffix),
      '#mount':: { 'function': { help: |||
        Path where KV-V2 engine is mounted.
      ||| } },
      mount(suffix=''):: refSelf.plain('.mount%s' % suffix),
      '#name':: { 'function': { help: |||
        Full name of the secret. For a nested secret, the name is the nested path excluding the mount and data prefix. For example, for a secret at 'kvv2/data/foo/bar/baz', the name is 'foo/bar/baz'
      ||| } },
      name(suffix=''):: refSelf.plain('.name%s' % suffix),
      '#namespace':: { 'function': { help: |||
        Target namespace. (requires Enterprise)
      ||| } },
      namespace(suffix=''):: refSelf.plain('.namespace%s' % suffix),
      '#options':: { 'function': { help: |||
        An object that holds option settings.
      ||| } },
      options(suffix=''):: refSelf.plain('.options%s' % suffix),
      '#path':: { 'function': { help: |||
        Full path where the KV-V2 secret will be written.
      ||| } },
      path(suffix=''):: refSelf.plain('.path%s' % suffix),
    },
  },
}
