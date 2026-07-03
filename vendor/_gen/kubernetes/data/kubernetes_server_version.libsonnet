{
  new(terraformName):: self.functions(terraformName) {
    _type:: 'tf',
    data+: {
      kubernetes_server_version+: {
        [terraformName]+: {
        },
      },
    },
  },
  functions(terraformName):: {
    withId(value):: self {
      data+: {
        kubernetes_server_version+: { [terraformName]+: { id: value } },
      },
    },
  },
  ref(terraformName):: {
    local refSelf = self,
    plain(suffix=''):: '${ data.kubernetes_server_version.%s%s }' % [terraformName, suffix],
    fields:: {
      '#build_date':: { 'function': { help: |||
        Kubernetes server build date 
      ||| } },
      build_date(suffix=''):: refSelf.plain('.build_date%s' % suffix),
      '#compiler':: { 'function': { help: |||
        Compiler used to build Kubernetes 
      ||| } },
      compiler(suffix=''):: refSelf.plain('.compiler%s' % suffix),
      '#git_commit':: { 'function': { help: |||
        Git commit SHA 
      ||| } },
      git_commit(suffix=''):: refSelf.plain('.git_commit%s' % suffix),
      '#git_tree_state':: { 'function': { help: |||
        Git commit tree state 
      ||| } },
      git_tree_state(suffix=''):: refSelf.plain('.git_tree_state%s' % suffix),
      '#git_version':: { 'function': { help: |||
        Composite version and git commit sha 
      ||| } },
      git_version(suffix=''):: refSelf.plain('.git_version%s' % suffix),
      '#go_version':: { 'function': { help: |||
        Go compiler version 
      ||| } },
      go_version(suffix=''):: refSelf.plain('.go_version%s' % suffix),
      id(suffix=''):: refSelf.plain('.id%s' % suffix),
      '#major':: { 'function': { help: |||
        Major Kubernetes version 
      ||| } },
      major(suffix=''):: refSelf.plain('.major%s' % suffix),
      '#minor':: { 'function': { help: |||
        Minor Kubernetes version 
      ||| } },
      minor(suffix=''):: refSelf.plain('.minor%s' % suffix),
      '#platform':: { 'function': { help: |||
        Platform 
      ||| } },
      platform(suffix=''):: refSelf.plain('.platform%s' % suffix),
      '#version':: { 'function': { help: |||
        Composite Kubernetes server version 
      ||| } },
      version(suffix=''):: refSelf.plain('.version%s' % suffix),
    },
  },
}
