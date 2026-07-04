{
  local outerSelf = self,
  new(terraformName, backend, pem_bundle):: self.functions(terraformName) {
    ref():: outerSelf.ref(terraformName),
    _type:: 'tf',
    resource+: {
      vault_pki_secret_backend_config_ca+: {
        [terraformName]+: {
          backend: backend,
          pem_bundle: pem_bundle,
        },
      },
    },
  },
  functions(terraformName):: {
    withForEach(value):: self {
      resource+: {
        vault_pki_secret_backend_config_ca+: { [terraformName]+: { for_each: value } },
      },
    },
    withDependsOn(value):: self {
      resource+: {
        vault_pki_secret_backend_config_ca+: { [terraformName]+: { depends_on: value } },
      },
    },
    withCount(value):: self {
      resource+: {
        vault_pki_secret_backend_config_ca+: { [terraformName]+: { count: value } },
      },
    },
    withLifecycle(value):: self {
      resource+: {
        vault_pki_secret_backend_config_ca+: { [terraformName]+: { lifecycle: value } },
      },
    },
    withProvider(value):: self {
      resource+: {
        vault_pki_secret_backend_config_ca+: { [terraformName]+: { provider: value } },
      },
    },
    withProviders(value):: self {
      resource+: {
        vault_pki_secret_backend_config_ca+: { [terraformName]+: { providers: value } },
      },
    },
    '#backend':: { 'function': { help: |||
      The PKI secret backend the resource belongs to.
    ||| } },
    withBackend(value):: self {
      resource+: {
        vault_pki_secret_backend_config_ca+: { [terraformName]+: { backend: value } },
      },
    },
    withId(value):: self {
      resource+: {
        vault_pki_secret_backend_config_ca+: { [terraformName]+: { id: value } },
      },
    },
    '#namespace':: { 'function': { help: |||
      Target namespace. (requires Enterprise)
    ||| } },
    withNamespace(value):: self {
      resource+: {
        vault_pki_secret_backend_config_ca+: { [terraformName]+: { namespace: value } },
      },
    },
    '#pem_bundle':: { 'function': { help: |||
      The key and certificate PEM bundle.
    ||| } },
    withPemBundle(value):: self {
      resource+: {
        vault_pki_secret_backend_config_ca+: { [terraformName]+: { pem_bundle: value } },
      },
    },
  },
  ref(terraformName):: {
    local refSelf = self,
    plain(suffix=''):: '${ vault_pki_secret_backend_config_ca.%s%s }' % [terraformName, suffix],
    fields:: {
      '#backend':: { 'function': { help: |||
        The PKI secret backend the resource belongs to.
      ||| } },
      backend(suffix=''):: refSelf.plain('.backend%s' % suffix),
      id(suffix=''):: refSelf.plain('.id%s' % suffix),
      '#namespace':: { 'function': { help: |||
        Target namespace. (requires Enterprise)
      ||| } },
      namespace(suffix=''):: refSelf.plain('.namespace%s' % suffix),
      '#pem_bundle':: { 'function': { help: |||
        The key and certificate PEM bundle.
      ||| } },
      pem_bundle(suffix=''):: refSelf.plain('.pem_bundle%s' % suffix),
    },
  },
}
