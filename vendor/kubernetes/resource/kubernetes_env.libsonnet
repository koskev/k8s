{
  new(terraformName, api_version, kind):: {
    _type:: 'tf',
    resource+: {
      kubernetes_env+: { [terraformName]+: {
        api_version: api_version,
        kind: kind,
      } },
    },
    withApiVersion(value):: self {
      resource+: {
        kubernetes_env+: { [terraformName]+: { api_version: value } },
      },
    },
    withFieldManager(value):: self {
      resource+: {
        kubernetes_env+: { [terraformName]+: { field_manager: value } },
      },
    },
    withId(value):: self {
      resource+: {
        kubernetes_env+: { [terraformName]+: { id: value } },
      },
    },
    withInitContainer(value):: self {
      resource+: {
        kubernetes_env+: { [terraformName]+: { init_container: value } },
      },
    },
    withContainer(value):: self {
      resource+: {
        kubernetes_env+: { [terraformName]+: { container: value } },
      },
    },
    withForce(value):: self {
      resource+: {
        kubernetes_env+: { [terraformName]+: { force: value } },
      },
    },
    withKind(value):: self {
      resource+: {
        kubernetes_env+: { [terraformName]+: { kind: value } },
      },
    },
  },
}
