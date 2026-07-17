{
  local outerSelf = self,
  new(terraformName, mount, name):: self.functions(terraformName) + {
    _type:: 'tf',
    ref():: outerSelf.ref(terraformName),
    data+: {
      vault_kv_secret_subkeys_v2+: { [terraformName]+: {
        mount: mount,
        name: name,
      } },
    },
  }
  ,
  functions(terraformName):: {
    withForEach(value):: self { data+: {
      vault_kv_secret_subkeys_v2+: { [terraformName]+: { for_each: value } },
    } },
    withDependsOn(value):: self { data+: {
      vault_kv_secret_subkeys_v2+: { [terraformName]+: { depends_on: value } },
    } },
    withCount(value):: self { data+: {
      vault_kv_secret_subkeys_v2+: { [terraformName]+: { count: value } },
    } },
    withLifecycle(value):: self { data+: {
      vault_kv_secret_subkeys_v2+: { [terraformName]+: { lifecycle: value } },
    } },
    withProvider(value):: self { data+: {
      vault_kv_secret_subkeys_v2+: { [terraformName]+: { provider: value } },
    } },
    withProviders(value):: self { data+: {
      vault_kv_secret_subkeys_v2+: { [terraformName]+: { providers: value } },
    } },
    addCustomData(name, value):: self { data+: {
      vault_kv_secret_subkeys_v2+: { [terraformName]+: { [name]: value } },
    } },
    '#withDepth':: { 'function': {
      help:
        |||
          Specifies the deepest nesting level to provide in the output.If non-zero, keys that reside at the specified depth value will be artificially treated as leaves and will thus be 'null' even if further underlying sub-keys exist.
        |||,
    } },
    withDepth(value):: self { data+: {
      vault_kv_secret_subkeys_v2+: { [terraformName]+: { depth: value } },
    } },
    withId(value):: self { data+: {
      vault_kv_secret_subkeys_v2+: { [terraformName]+: { id: value } },
    } },
    '#withMount':: { 'function': {
      help:
        |||
          Path where KV-V2 engine is mounted
        |||,
    } },
    withMount(value):: self { data+: {
      vault_kv_secret_subkeys_v2+: { [terraformName]+: { mount: value } },
    } },
    '#withName':: { 'function': {
      help:
        |||
          Full name of the secret. For a nested secret, the name is the nested path excluding the mount and data prefix. For example, for a secret at 'kvv2/data/foo/bar/baz', the name is 'foo/bar/baz'
        |||,
    } },
    withName(value):: self { data+: {
      vault_kv_secret_subkeys_v2+: { [terraformName]+: { name: value } },
    } },
    '#withNamespace':: { 'function': {
      help:
        |||
          Target namespace. (requires Enterprise)
        |||,
    } },
    withNamespace(value):: self { data+: {
      vault_kv_secret_subkeys_v2+: { [terraformName]+: { namespace: value } },
    } },
    '#withVersion':: { 'function': {
      help:
        |||
          Specifies the version to return. If not set the latest version is returned.
        |||,
    } },
    withVersion(value):: self { data+: {
      vault_kv_secret_subkeys_v2+: { [terraformName]+: { version: value } },
    } },

  }
  ,
  ref(terraformName):: {
    local refSelf = self,
    plain(suffix=''):: '${ data.vault_kv_secret_subkeys_v2.%s%s }' % [terraformName, suffix],
    fields:: {
      '#data':: { 'function': {
        help:
          |||
            Subkeys stored as a map of strings.
          |||,
      } },
      data(suffix=''):: refSelf.plain('.data%s' % suffix),
      '#data_json':: { 'function': {
        help:
          |||
            Subkeys for the KV-V2 secret read from Vault.
          |||,
      } },
      data_json(suffix=''):: refSelf.plain('.data_json%s' % suffix),
      '#depth':: { 'function': {
        help:
          |||
            Specifies the deepest nesting level to provide in the output.If non-zero, keys that reside at the specified depth value will be artificially treated as leaves and will thus be 'null' even if further underlying sub-keys exist.
          |||,
      } },
      depth(suffix=''):: refSelf.plain('.depth%s' % suffix),
      id(suffix=''):: refSelf.plain('.id%s' % suffix),
      '#mount':: { 'function': {
        help:
          |||
            Path where KV-V2 engine is mounted
          |||,
      } },
      mount(suffix=''):: refSelf.plain('.mount%s' % suffix),
      '#name':: { 'function': {
        help:
          |||
            Full name of the secret. For a nested secret, the name is the nested path excluding the mount and data prefix. For example, for a secret at 'kvv2/data/foo/bar/baz', the name is 'foo/bar/baz'
          |||,
      } },
      name(suffix=''):: refSelf.plain('.name%s' % suffix),
      '#namespace':: { 'function': {
        help:
          |||
            Target namespace. (requires Enterprise)
          |||,
      } },
      namespace(suffix=''):: refSelf.plain('.namespace%s' % suffix),
      '#path':: { 'function': {
        help:
          |||
            Full path where the generic secret will be written.
          |||,
      } },
      path(suffix=''):: refSelf.plain('.path%s' % suffix),
      '#version':: { 'function': {
        help:
          |||
            Specifies the version to return. If not set the latest version is returned.
          |||,
      } },
      version(suffix=''):: refSelf.plain('.version%s' % suffix),

    },

  },

}
