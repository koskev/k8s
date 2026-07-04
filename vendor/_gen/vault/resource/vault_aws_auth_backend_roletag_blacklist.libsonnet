{
  local outerSelf = self,
  new(terraformName, backend):: self.functions(terraformName) {
    ref():: outerSelf.ref(terraformName),
    _type:: 'tf',
    resource+: {
      vault_aws_auth_backend_roletag_blacklist+: {
        [terraformName]+: {
          backend: backend,
        },
      },
    },
  },
  functions(terraformName):: {
    withForEach(value):: self {
      resource+: {
        vault_aws_auth_backend_roletag_blacklist+: { [terraformName]+: { for_each: value } },
      },
    },
    withDependsOn(value):: self {
      resource+: {
        vault_aws_auth_backend_roletag_blacklist+: { [terraformName]+: { depends_on: value } },
      },
    },
    withCount(value):: self {
      resource+: {
        vault_aws_auth_backend_roletag_blacklist+: { [terraformName]+: { count: value } },
      },
    },
    withLifecycle(value):: self {
      resource+: {
        vault_aws_auth_backend_roletag_blacklist+: { [terraformName]+: { lifecycle: value } },
      },
    },
    withProvider(value):: self {
      resource+: {
        vault_aws_auth_backend_roletag_blacklist+: { [terraformName]+: { provider: value } },
      },
    },
    withProviders(value):: self {
      resource+: {
        vault_aws_auth_backend_roletag_blacklist+: { [terraformName]+: { providers: value } },
      },
    },
    '#backend':: { 'function': { help: |||
      Unique name of the auth backend to configure.
    ||| } },
    withBackend(value):: self {
      resource+: {
        vault_aws_auth_backend_roletag_blacklist+: { [terraformName]+: { backend: value } },
      },
    },
    '#disable_periodic_tidy':: { 'function': { help: |||
      If true, disables the periodic tidying of the roletag blacklist entries.
    ||| } },
    withDisablePeriodicTidy(value):: self {
      resource+: {
        vault_aws_auth_backend_roletag_blacklist+: { [terraformName]+: { disable_periodic_tidy: value } },
      },
    },
    withId(value):: self {
      resource+: {
        vault_aws_auth_backend_roletag_blacklist+: { [terraformName]+: { id: value } },
      },
    },
    '#namespace':: { 'function': { help: |||
      Target namespace. (requires Enterprise)
    ||| } },
    withNamespace(value):: self {
      resource+: {
        vault_aws_auth_backend_roletag_blacklist+: { [terraformName]+: { namespace: value } },
      },
    },
    '#safety_buffer':: { 'function': { help: |||
      The amount of extra time that must have passed beyond the roletag expiration, before it's removed from backend storage.
    ||| } },
    withSafetyBuffer(value):: self {
      resource+: {
        vault_aws_auth_backend_roletag_blacklist+: { [terraformName]+: { safety_buffer: value } },
      },
    },
  },
  ref(terraformName):: {
    local refSelf = self,
    plain(suffix=''):: '${ vault_aws_auth_backend_roletag_blacklist.%s%s }' % [terraformName, suffix],
    fields:: {
      '#backend':: { 'function': { help: |||
        Unique name of the auth backend to configure.
      ||| } },
      backend(suffix=''):: refSelf.plain('.backend%s' % suffix),
      '#disable_periodic_tidy':: { 'function': { help: |||
        If true, disables the periodic tidying of the roletag blacklist entries.
      ||| } },
      disable_periodic_tidy(suffix=''):: refSelf.plain('.disable_periodic_tidy%s' % suffix),
      id(suffix=''):: refSelf.plain('.id%s' % suffix),
      '#namespace':: { 'function': { help: |||
        Target namespace. (requires Enterprise)
      ||| } },
      namespace(suffix=''):: refSelf.plain('.namespace%s' % suffix),
      '#safety_buffer':: { 'function': { help: |||
        The amount of extra time that must have passed beyond the roletag expiration, before it's removed from backend storage.
      ||| } },
      safety_buffer(suffix=''):: refSelf.plain('.safety_buffer%s' % suffix),
    },
  },
}
