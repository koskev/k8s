{
  local outerSelf = self,
  new(terraformName, mount):: self.functions(terraformName) + {
    _type:: 'tf',
    ref():: outerSelf.ref(terraformName),
    data+: {
      vault_kv_secrets_list_v2+: { [terraformName]+: {
        mount: mount,
      } },
    },
  }
  ,
  functions(terraformName):: {
    withForEach(value):: self { data+: {
      vault_kv_secrets_list_v2+: { [terraformName]+: { for_each: value } },
    } },
    withDependsOn(value):: self { data+: {
      vault_kv_secrets_list_v2+: { [terraformName]+: { depends_on: value } },
    } },
    withCount(value):: self { data+: {
      vault_kv_secrets_list_v2+: { [terraformName]+: { count: value } },
    } },
    withLifecycle(value):: self { data+: {
      vault_kv_secrets_list_v2+: { [terraformName]+: { lifecycle: value } },
    } },
    withProvider(value):: self { data+: {
      vault_kv_secrets_list_v2+: { [terraformName]+: { provider: value } },
    } },
    withProviders(value):: self { data+: {
      vault_kv_secrets_list_v2+: { [terraformName]+: { providers: value } },
    } },
    addCustomData(name, value):: self { data+: {
      vault_kv_secrets_list_v2+: { [terraformName]+: { [name]: value } },
    } },
    withId(value):: self { data+: {
      vault_kv_secrets_list_v2+: { [terraformName]+: { id: value } },
    } },
    '#withMount':: { 'function': {
      help:
        |||
          Path where KV-V2 engine is mounted
        |||,
    } },
    withMount(value):: self { data+: {
      vault_kv_secrets_list_v2+: { [terraformName]+: { mount: value } },
    } },
    '#withName':: { 'function': {
      help:
        |||
          Full named path of the secret. For a nested secret, the name is the nested path excluding the mount and data prefix. For example, for a secret at 'kvv2/data/foo/bar/baz', the name is 'foo/bar/baz'
        |||,
    } },
    withName(value):: self { data+: {
      vault_kv_secrets_list_v2+: { [terraformName]+: { name: value } },
    } },
    '#withNamespace':: { 'function': {
      help:
        |||
          Target namespace. (requires Enterprise)
        |||,
    } },
    withNamespace(value):: self { data+: {
      vault_kv_secrets_list_v2+: { [terraformName]+: { namespace: value } },
    } },

  }
  ,
  ref(terraformName):: {
    local refSelf = self,
    plain(suffix=''):: '${ data.vault_kv_secrets_list_v2.%s%s }' % [terraformName, suffix],
    fields:: {
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
            Full named path of the secret. For a nested secret, the name is the nested path excluding the mount and data prefix. For example, for a secret at 'kvv2/data/foo/bar/baz', the name is 'foo/bar/baz'
          |||,
      } },
      name(suffix=''):: refSelf.plain('.name%s' % suffix),
      '#names':: { 'function': {
        help:
          |||
            List of all secret names.
          |||,
      } },
      names(suffix=''):: refSelf.plain('.names%s' % suffix),
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
            Full path where the KV-V2 secrets are listed.
          |||,
      } },
      path(suffix=''):: refSelf.plain('.path%s' % suffix),

    },

  },

}
