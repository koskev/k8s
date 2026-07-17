{
  local outerSelf = self,
  new(terraformName, backend):: self.functions(terraformName) + {
    _type:: 'tf',
    ref():: outerSelf.ref(terraformName),
    resource+: {
      vault_pki_secret_backend_config_issuers+: { [terraformName]+: {
        backend: backend,
      } },
    },
  }
  ,
  functions(terraformName):: {
    withForEach(value):: self { resource+: {
      vault_pki_secret_backend_config_issuers+: { [terraformName]+: { for_each: value } },
    } },
    withDependsOn(value):: self { resource+: {
      vault_pki_secret_backend_config_issuers+: { [terraformName]+: { depends_on: value } },
    } },
    withCount(value):: self { resource+: {
      vault_pki_secret_backend_config_issuers+: { [terraformName]+: { count: value } },
    } },
    withLifecycle(value):: self { resource+: {
      vault_pki_secret_backend_config_issuers+: { [terraformName]+: { lifecycle: value } },
    } },
    withProvider(value):: self { resource+: {
      vault_pki_secret_backend_config_issuers+: { [terraformName]+: { provider: value } },
    } },
    withProviders(value):: self { resource+: {
      vault_pki_secret_backend_config_issuers+: { [terraformName]+: { providers: value } },
    } },
    addCustomData(name, value):: self { resource+: {
      vault_pki_secret_backend_config_issuers+: { [terraformName]+: { [name]: value } },
    } },
    '#withBackend':: { 'function': {
      help:
        |||
          Full path where PKI backend is mounted.
        |||,
    } },
    withBackend(value):: self { resource+: {
      vault_pki_secret_backend_config_issuers+: { [terraformName]+: { backend: value } },
    } },
    '#withDefault':: { 'function': {
      help:
        |||
          Specifies the default issuer by ID.
        |||,
    } },
    withDefault(value):: self { resource+: {
      vault_pki_secret_backend_config_issuers+: { [terraformName]+: { default: value } },
    } },
    '#withDefaultFollowsLatestIssuer':: { 'function': {
      help:
        |||
          Specifies whether a root creation or an issuer import operation updates the default issuer to the newly added issuer.
        |||,
    } },
    withDefaultFollowsLatestIssuer(value):: self { resource+: {
      vault_pki_secret_backend_config_issuers+: { [terraformName]+: { default_follows_latest_issuer: value } },
    } },
    withId(value):: self { resource+: {
      vault_pki_secret_backend_config_issuers+: { [terraformName]+: { id: value } },
    } },
    '#withNamespace':: { 'function': {
      help:
        |||
          Target namespace. (requires Enterprise)
        |||,
    } },
    withNamespace(value):: self { resource+: {
      vault_pki_secret_backend_config_issuers+: { [terraformName]+: { namespace: value } },
    } },

  }
  ,
  ref(terraformName):: {
    local refSelf = self,
    plain(suffix=''):: '${ vault_pki_secret_backend_config_issuers.%s%s }' % [terraformName, suffix],
    fields:: {
      '#backend':: { 'function': {
        help:
          |||
            Full path where PKI backend is mounted.
          |||,
      } },
      backend(suffix=''):: refSelf.plain('.backend%s' % suffix),
      '#default':: { 'function': {
        help:
          |||
            Specifies the default issuer by ID.
          |||,
      } },
      default(suffix=''):: refSelf.plain('.default%s' % suffix),
      '#default_follows_latest_issuer':: { 'function': {
        help:
          |||
            Specifies whether a root creation or an issuer import operation updates the default issuer to the newly added issuer.
          |||,
      } },
      default_follows_latest_issuer(suffix=''):: refSelf.plain('.default_follows_latest_issuer%s' % suffix),
      id(suffix=''):: refSelf.plain('.id%s' % suffix),
      '#namespace':: { 'function': {
        help:
          |||
            Target namespace. (requires Enterprise)
          |||,
      } },
      namespace(suffix=''):: refSelf.plain('.namespace%s' % suffix),

    },

  },

}
