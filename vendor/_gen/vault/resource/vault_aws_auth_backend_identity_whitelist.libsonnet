{
  local outerSelf = self,
  new(terraformName):: self.functions(terraformName) {
    ref():: outerSelf.ref(terraformName),
    _type:: 'tf',
    resource+: {
      vault_aws_auth_backend_identity_whitelist+: {
        [terraformName]+: {
        },
      },
    },
  },
  functions(terraformName):: {
    '#withBackend':: { 'function': { help: |||
      Unique name of the auth backend to configure.
    ||| } },
    withBackend(value):: self {
      resource+: {
        vault_aws_auth_backend_identity_whitelist+: { [terraformName]+: { backend: value } },
      },
    },
    '#withDisablePeriodicTidy':: { 'function': { help: |||
      If true, disables the periodic tidying of the identiy whitelist entries.
    ||| } },
    withDisablePeriodicTidy(value):: self {
      resource+: {
        vault_aws_auth_backend_identity_whitelist+: { [terraformName]+: { disable_periodic_tidy: value } },
      },
    },
    withId(value):: self {
      resource+: {
        vault_aws_auth_backend_identity_whitelist+: { [terraformName]+: { id: value } },
      },
    },
    '#withNamespace':: { 'function': { help: |||
      Target namespace. (requires Enterprise)
    ||| } },
    withNamespace(value):: self {
      resource+: {
        vault_aws_auth_backend_identity_whitelist+: { [terraformName]+: { namespace: value } },
      },
    },
    '#withSafetyBuffer':: { 'function': { help: |||
      The amount of extra time that must have passed beyond the roletag expiration, before it's removed from backend storage.
    ||| } },
    withSafetyBuffer(value):: self {
      resource+: {
        vault_aws_auth_backend_identity_whitelist+: { [terraformName]+: { safety_buffer: value } },
      },
    },
  },
  ref(terraformName):: {
    local refSelf = self,
    plain(suffix=''):: '${ vault_aws_auth_backend_identity_whitelist.%s%s }' % [terraformName, suffix],
    fields:: {
      '#backend':: { 'function': { help: |||
        Unique name of the auth backend to configure.
      ||| } },
      backend(suffix=''):: refSelf.plain('.backend%s' % suffix),
      '#disable_periodic_tidy':: { 'function': { help: |||
        If true, disables the periodic tidying of the identiy whitelist entries.
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
