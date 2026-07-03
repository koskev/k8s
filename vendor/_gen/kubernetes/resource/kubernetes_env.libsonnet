{
  new(terraformName, api_version, kind):: {
    _type:: 'tf',
    resource+: {
      kubernetes_env+: { [terraformName]+: {
        api_version: api_version,
        kind: kind,
      } },
    },
    '#withApiVersion':: { 'function': { help: |||
      Resource API version 
    ||| } },
    withApiVersion(value):: self {
      resource+: {
        kubernetes_env+: { [terraformName]+: { api_version: value } },
      },
    },
    '#withContainer':: { 'function': { help: |||
      Name of the container for which we are updating the environment variables. 
    ||| } },
    withContainer(value):: self {
      resource+: {
        kubernetes_env+: { [terraformName]+: { container: value } },
      },
    },
    '#withFieldManager':: { 'function': { help: |||
      Set the name of the field manager for the specified environment variables. 
    ||| } },
    withFieldManager(value):: self {
      resource+: {
        kubernetes_env+: { [terraformName]+: { field_manager: value } },
      },
    },
    '#withForce':: { 'function': { help: |||
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
    '#withInitContainer':: { 'function': { help: |||
      Name of the initContainer for which we are updating the environment variables. 
    ||| } },
    withInitContainer(value):: self {
      resource+: {
        kubernetes_env+: { [terraformName]+: { init_container: value } },
      },
    },
    '#withKind':: { 'function': { help: |||
      Resource Kind 
    ||| } },
    withKind(value):: self {
      resource+: {
        kubernetes_env+: { [terraformName]+: { kind: value } },
      },
    },
  },
}
