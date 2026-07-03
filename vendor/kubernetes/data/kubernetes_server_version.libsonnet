{
  new(terraformName):: {
    _type:: 'tf',
    data+: {
      kubernetes_server_version+: { [terraformName]+: {
      } },
    },
    withMajor(value):: self {
      data+: {
        kubernetes_server_version+: { [terraformName]+: { major: value } },
      },
    },
    withId(value):: self {
      data+: {
        kubernetes_server_version+: { [terraformName]+: { id: value } },
      },
    },
    withMinor(value):: self {
      data+: {
        kubernetes_server_version+: { [terraformName]+: { minor: value } },
      },
    },
    withPlatform(value):: self {
      data+: {
        kubernetes_server_version+: { [terraformName]+: { platform: value } },
      },
    },
    withBuildDate(value):: self {
      data+: {
        kubernetes_server_version+: { [terraformName]+: { build_date: value } },
      },
    },
    withCompiler(value):: self {
      data+: {
        kubernetes_server_version+: { [terraformName]+: { compiler: value } },
      },
    },
    withGitCommit(value):: self {
      data+: {
        kubernetes_server_version+: { [terraformName]+: { git_commit: value } },
      },
    },
    withGitTreeState(value):: self {
      data+: {
        kubernetes_server_version+: { [terraformName]+: { git_tree_state: value } },
      },
    },
    withGitVersion(value):: self {
      data+: {
        kubernetes_server_version+: { [terraformName]+: { git_version: value } },
      },
    },
    withVersion(value):: self {
      data+: {
        kubernetes_server_version+: { [terraformName]+: { version: value } },
      },
    },
    withGoVersion(value):: self {
      data+: {
        kubernetes_server_version+: { [terraformName]+: { go_version: value } },
      },
    },
  },
}
