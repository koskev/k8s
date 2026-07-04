{
  '#new':: { 'function': { help: |||
    This resource provides a way to manage environment variables in resources that were created outside of Terraform. This resource provides functionality similar to the `kubectl set env` command.
  ||| } },
  local outerSelf = self,
  new(terraformName, api_version, kind):: self.functions(terraformName) {
    ref():: outerSelf.ref(terraformName),
    _type:: 'tf',
    resource+: {
      kubernetes_env+: {
        [terraformName]+: {
          api_version: api_version,
          kind: kind,
        },
      },
    },
  },
  functions(terraformName):: {
    withForEach(value):: self {
      resource+: {
        kubernetes_env+: { [terraformName]+: { for_each: value } },
      },
    },
    withDependsOn(value):: self {
      resource+: {
        kubernetes_env+: { [terraformName]+: { depends_on: value } },
      },
    },
    withCount(value):: self {
      resource+: {
        kubernetes_env+: { [terraformName]+: { count: value } },
      },
    },
    withLifecycle(value):: self {
      resource+: {
        kubernetes_env+: { [terraformName]+: { lifecycle: value } },
      },
    },
    withProvider(value):: self {
      resource+: {
        kubernetes_env+: { [terraformName]+: { provider: value } },
      },
    },
    withProviders(value):: self {
      resource+: {
        kubernetes_env+: { [terraformName]+: { providers: value } },
      },
    },
    '#api_version':: { 'function': { help: |||
      Resource API version
    ||| } },
    withApiVersion(value):: self {
      resource+: {
        kubernetes_env+: { [terraformName]+: { api_version: value } },
      },
    },
    '#container':: { 'function': { help: |||
      Name of the container for which we are updating the environment variables.
    ||| } },
    withContainer(value):: self {
      resource+: {
        kubernetes_env+: { [terraformName]+: { container: value } },
      },
    },
    '#field_manager':: { 'function': { help: |||
      Set the name of the field manager for the specified environment variables.
    ||| } },
    withFieldManager(value):: self {
      resource+: {
        kubernetes_env+: { [terraformName]+: { field_manager: value } },
      },
    },
    '#force':: { 'function': { help: |||
      Force overwriting environments that were created or edited outside of Terraform.
    ||| } },
    withForce(value):: self {
      resource+: {
        kubernetes_env+: { [terraformName]+: { force: value } },
      },
    },
    withId(value):: self {
      resource+: {
        kubernetes_env+: { [terraformName]+: { id: value } },
      },
    },
    '#init_container':: { 'function': { help: |||
      Name of the initContainer for which we are updating the environment variables.
    ||| } },
    withInitContainer(value):: self {
      resource+: {
        kubernetes_env+: { [terraformName]+: { init_container: value } },
      },
    },
    '#kind':: { 'function': { help: |||
      Resource Kind
    ||| } },
    withKind(value):: self {
      resource+: {
        kubernetes_env+: { [terraformName]+: { kind: value } },
      },
    },
  },
  ref(terraformName):: {
    local refSelf = self,
    plain(suffix=''):: '${ kubernetes_env.%s%s }' % [terraformName, suffix],
    fields:: {
      '#api_version':: { 'function': { help: |||
        Resource API version
      ||| } },
      api_version(suffix=''):: refSelf.plain('.api_version%s' % suffix),
      '#container':: { 'function': { help: |||
        Name of the container for which we are updating the environment variables.
      ||| } },
      container(suffix=''):: refSelf.plain('.container%s' % suffix),
      '#field_manager':: { 'function': { help: |||
        Set the name of the field manager for the specified environment variables.
      ||| } },
      field_manager(suffix=''):: refSelf.plain('.field_manager%s' % suffix),
      '#force':: { 'function': { help: |||
        Force overwriting environments that were created or edited outside of Terraform.
      ||| } },
      force(suffix=''):: refSelf.plain('.force%s' % suffix),
      id(suffix=''):: refSelf.plain('.id%s' % suffix),
      '#init_container':: { 'function': { help: |||
        Name of the initContainer for which we are updating the environment variables.
      ||| } },
      init_container(suffix=''):: refSelf.plain('.init_container%s' % suffix),
      '#kind':: { 'function': { help: |||
        Resource Kind
      ||| } },
      kind(suffix=''):: refSelf.plain('.kind%s' % suffix),
    },
  },
}
