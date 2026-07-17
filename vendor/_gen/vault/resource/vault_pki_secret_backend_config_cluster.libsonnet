{
  local outerSelf = self,
  new(terraformName, backend):: self.functions(terraformName) + {
    _type:: 'tf',
    ref():: outerSelf.ref(terraformName),
    resource+: {
      vault_pki_secret_backend_config_cluster+: { [terraformName]+: {
        backend: backend,
      } },
    },
  }
  ,
  functions(terraformName):: {
    withForEach(value):: self { resource+: {
      vault_pki_secret_backend_config_cluster+: { [terraformName]+: { for_each: value } },
    } },
    withDependsOn(value):: self { resource+: {
      vault_pki_secret_backend_config_cluster+: { [terraformName]+: { depends_on: value } },
    } },
    withCount(value):: self { resource+: {
      vault_pki_secret_backend_config_cluster+: { [terraformName]+: { count: value } },
    } },
    withLifecycle(value):: self { resource+: {
      vault_pki_secret_backend_config_cluster+: { [terraformName]+: { lifecycle: value } },
    } },
    withProvider(value):: self { resource+: {
      vault_pki_secret_backend_config_cluster+: { [terraformName]+: { provider: value } },
    } },
    withProviders(value):: self { resource+: {
      vault_pki_secret_backend_config_cluster+: { [terraformName]+: { providers: value } },
    } },
    addCustomData(name, value):: self { resource+: {
      vault_pki_secret_backend_config_cluster+: { [terraformName]+: { [name]: value } },
    } },
    '#withAiaPath':: { 'function': {
      help:
        |||
          Path to the cluster's AIA distribution point.
        |||,
    } },
    withAiaPath(value):: self { resource+: {
      vault_pki_secret_backend_config_cluster+: { [terraformName]+: { aia_path: value } },
    } },
    '#withBackend':: { 'function': {
      help:
        |||
          Full path where PKI backend is mounted.
        |||,
    } },
    withBackend(value):: self { resource+: {
      vault_pki_secret_backend_config_cluster+: { [terraformName]+: { backend: value } },
    } },
    withId(value):: self { resource+: {
      vault_pki_secret_backend_config_cluster+: { [terraformName]+: { id: value } },
    } },
    '#withNamespace':: { 'function': {
      help:
        |||
          Target namespace. (requires Enterprise)
        |||,
    } },
    withNamespace(value):: self { resource+: {
      vault_pki_secret_backend_config_cluster+: { [terraformName]+: { namespace: value } },
    } },
    '#withPath':: { 'function': {
      help:
        |||
          Path to the cluster's API mount path.
        |||,
    } },
    withPath(value):: self { resource+: {
      vault_pki_secret_backend_config_cluster+: { [terraformName]+: { path: value } },
    } },

  }
  ,
  ref(terraformName):: {
    local refSelf = self,
    plain(suffix=''):: '${ vault_pki_secret_backend_config_cluster.%s%s }' % [terraformName, suffix],
    fields:: {
      '#aia_path':: { 'function': {
        help:
          |||
            Path to the cluster's AIA distribution point.
          |||,
      } },
      aia_path(suffix=''):: refSelf.plain('.aia_path%s' % suffix),
      '#backend':: { 'function': {
        help:
          |||
            Full path where PKI backend is mounted.
          |||,
      } },
      backend(suffix=''):: refSelf.plain('.backend%s' % suffix),
      id(suffix=''):: refSelf.plain('.id%s' % suffix),
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
            Path to the cluster's API mount path.
          |||,
      } },
      path(suffix=''):: refSelf.plain('.path%s' % suffix),

    },

  },

}
