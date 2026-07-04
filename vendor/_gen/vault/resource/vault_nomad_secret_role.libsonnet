{
  local outerSelf = self,
  new(terraformName, backend, role):: self.functions(terraformName) {
    ref():: outerSelf.ref(terraformName),
    _type:: 'tf',
    resource+: {
      vault_nomad_secret_role+: {
        [terraformName]+: {
          backend: backend,
          role: role,
        },
      },
    },
  },
  functions(terraformName):: {
    withForEach(value):: self {
      resource+: {
        vault_nomad_secret_role+: { [terraformName]+: { for_each: value } },
      },
    },
    withDependsOn(value):: self {
      resource+: {
        vault_nomad_secret_role+: { [terraformName]+: { depends_on: value } },
      },
    },
    withCount(value):: self {
      resource+: {
        vault_nomad_secret_role+: { [terraformName]+: { count: value } },
      },
    },
    withLifecycle(value):: self {
      resource+: {
        vault_nomad_secret_role+: { [terraformName]+: { lifecycle: value } },
      },
    },
    withProvider(value):: self {
      resource+: {
        vault_nomad_secret_role+: { [terraformName]+: { provider: value } },
      },
    },
    withProviders(value):: self {
      resource+: {
        vault_nomad_secret_role+: { [terraformName]+: { providers: value } },
      },
    },
    '#backend':: { 'function': { help: |||
      The mount path for the Nomad backend.
    ||| } },
    withBackend(value):: self {
      resource+: {
        vault_nomad_secret_role+: { [terraformName]+: { backend: value } },
      },
    },
    '#global':: { 'function': { help: |||
      Specifies if the token should be global.
    ||| } },
    withGlobal(value):: self {
      resource+: {
        vault_nomad_secret_role+: { [terraformName]+: { global: value } },
      },
    },
    withId(value):: self {
      resource+: {
        vault_nomad_secret_role+: { [terraformName]+: { id: value } },
      },
    },
    '#namespace':: { 'function': { help: |||
      Target namespace. (requires Enterprise)
    ||| } },
    withNamespace(value):: self {
      resource+: {
        vault_nomad_secret_role+: { [terraformName]+: { namespace: value } },
      },
    },
    '#policies':: { 'function': { help: |||
      Comma separated list of Nomad policies the token is going to be created against. These need to be created beforehand in Nomad.
    ||| } },
    withPolicies(value):: self {
      resource+: {
        vault_nomad_secret_role+: { [terraformName]+: { policies: value } },
      },
    },
    '#role':: { 'function': { help: |||
      Name of the role.
    ||| } },
    withRole(value):: self {
      resource+: {
        vault_nomad_secret_role+: { [terraformName]+: { role: value } },
      },
    },
    '#type':: { 'function': { help: |||
      Specifies the type of token to create when using this role. Valid values are "client" or "management".
    ||| } },
    withType(value):: self {
      resource+: {
        vault_nomad_secret_role+: { [terraformName]+: { type: value } },
      },
    },
  },
  ref(terraformName):: {
    local refSelf = self,
    plain(suffix=''):: '${ vault_nomad_secret_role.%s%s }' % [terraformName, suffix],
    fields:: {
      '#backend':: { 'function': { help: |||
        The mount path for the Nomad backend.
      ||| } },
      backend(suffix=''):: refSelf.plain('.backend%s' % suffix),
      '#global':: { 'function': { help: |||
        Specifies if the token should be global.
      ||| } },
      global(suffix=''):: refSelf.plain('.global%s' % suffix),
      id(suffix=''):: refSelf.plain('.id%s' % suffix),
      '#namespace':: { 'function': { help: |||
        Target namespace. (requires Enterprise)
      ||| } },
      namespace(suffix=''):: refSelf.plain('.namespace%s' % suffix),
      '#policies':: { 'function': { help: |||
        Comma separated list of Nomad policies the token is going to be created against. These need to be created beforehand in Nomad.
      ||| } },
      policies(suffix=''):: refSelf.plain('.policies%s' % suffix),
      '#role':: { 'function': { help: |||
        Name of the role.
      ||| } },
      role(suffix=''):: refSelf.plain('.role%s' % suffix),
      '#type':: { 'function': { help: |||
        Specifies the type of token to create when using this role. Valid values are "client" or "management".
      ||| } },
      type(suffix=''):: refSelf.plain('.type%s' % suffix),
    },
  },
}
