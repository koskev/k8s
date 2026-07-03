{
  new(terraformName):: {
    _type:: 'tf',
    data+: {
      kubernetes_server_version+: { [terraformName]+: {
      } },
    },
    '#withBuildDate': { 'function': { help: |||
      Kubernetes server build date 
    ||| } },
    withBuildDate(value):: self {
      data+: {
        kubernetes_server_version+: { [terraformName]+: { build_date: value } },
      },
    },
    '#withCompiler': { 'function': { help: |||
      Compiler used to build Kubernetes 
    ||| } },
    withCompiler(value):: self {
      data+: {
        kubernetes_server_version+: { [terraformName]+: { compiler: value } },
      },
    },
    '#withGitCommit': { 'function': { help: |||
      Git commit SHA 
    ||| } },
    withGitCommit(value):: self {
      data+: {
        kubernetes_server_version+: { [terraformName]+: { git_commit: value } },
      },
    },
    '#withGitTreeState': { 'function': { help: |||
      Git commit tree state 
    ||| } },
    withGitTreeState(value):: self {
      data+: {
        kubernetes_server_version+: { [terraformName]+: { git_tree_state: value } },
      },
    },
    '#withGitVersion': { 'function': { help: |||
      Composite version and git commit sha 
    ||| } },
    withGitVersion(value):: self {
      data+: {
        kubernetes_server_version+: { [terraformName]+: { git_version: value } },
      },
    },
    '#withGoVersion': { 'function': { help: |||
      Go compiler version 
    ||| } },
    withGoVersion(value):: self {
      data+: {
        kubernetes_server_version+: { [terraformName]+: { go_version: value } },
      },
    },
    withId(value):: self {
      data+: {
        kubernetes_server_version+: { [terraformName]+: { id: value } },
      },
    },
    '#withMajor': { 'function': { help: |||
      Major Kubernetes version 
    ||| } },
    withMajor(value):: self {
      data+: {
        kubernetes_server_version+: { [terraformName]+: { major: value } },
      },
    },
    '#withMinor': { 'function': { help: |||
      Minor Kubernetes version 
    ||| } },
    withMinor(value):: self {
      data+: {
        kubernetes_server_version+: { [terraformName]+: { minor: value } },
      },
    },
    '#withPlatform': { 'function': { help: |||
      Platform 
    ||| } },
    withPlatform(value):: self {
      data+: {
        kubernetes_server_version+: { [terraformName]+: { platform: value } },
      },
    },
    '#withVersion': { 'function': { help: |||
      Composite Kubernetes server version 
    ||| } },
    withVersion(value):: self {
      data+: {
        kubernetes_server_version+: { [terraformName]+: { version: value } },
      },
    },
  },
}
