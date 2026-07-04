{
  '#new':: { 'function': { help: |||
    Manages a plugin runtime in Vault's plugin runtimes catalog.
  ||| } },
  local outerSelf = self,
  new(terraformName, name, type):: self.functions(terraformName) {
    ref():: outerSelf.ref(terraformName),
    _type:: 'tf',
    resource+: {
      vault_plugin_runtime+: {
        [terraformName]+: {
          name: name,
          type: type,
        },
      },
    },
  },
  functions(terraformName):: {
    withForEach(value):: self {
      resource+: {
        vault_plugin_runtime+: { [terraformName]+: { for_each: value } },
      },
    },
    withDependsOn(value):: self {
      resource+: {
        vault_plugin_runtime+: { [terraformName]+: { depends_on: value } },
      },
    },
    withCount(value):: self {
      resource+: {
        vault_plugin_runtime+: { [terraformName]+: { count: value } },
      },
    },
    withLifecycle(value):: self {
      resource+: {
        vault_plugin_runtime+: { [terraformName]+: { lifecycle: value } },
      },
    },
    withProvider(value):: self {
      resource+: {
        vault_plugin_runtime+: { [terraformName]+: { provider: value } },
      },
    },
    withProviders(value):: self {
      resource+: {
        vault_plugin_runtime+: { [terraformName]+: { providers: value } },
      },
    },
    '#cgroup_parent':: { 'function': { help: |||
      Specifies the parent cgroup to set for each container.
    ||| } },
    withCgroupParent(value):: self {
      resource+: {
        vault_plugin_runtime+: { [terraformName]+: { cgroup_parent: value } },
      },
    },
    '#cpu_nanos':: { 'function': { help: |||
      Specifies CPU limit to set per container in billionths of a CPU.
    ||| } },
    withCpuNanos(value):: self {
      resource+: {
        vault_plugin_runtime+: { [terraformName]+: { cpu_nanos: value } },
      },
    },
    '#memory_bytes':: { 'function': { help: |||
      Specifies memory limit to set per container in bytes.
    ||| } },
    withMemoryBytes(value):: self {
      resource+: {
        vault_plugin_runtime+: { [terraformName]+: { memory_bytes: value } },
      },
    },
    '#name':: { 'function': { help: |||
      The name of the plugin runtime.
    ||| } },
    withName(value):: self {
      resource+: {
        vault_plugin_runtime+: { [terraformName]+: { name: value } },
      },
    },
    '#namespace':: { 'function': { help: |||
      Target namespace. (requires Enterprise)
    ||| } },
    withNamespace(value):: self {
      resource+: {
        vault_plugin_runtime+: { [terraformName]+: { namespace: value } },
      },
    },
    '#oci_runtime':: { 'function': { help: |||
      Specifies OCI-compliant container runtime to use.
    ||| } },
    withOciRuntime(value):: self {
      resource+: {
        vault_plugin_runtime+: { [terraformName]+: { oci_runtime: value } },
      },
    },
    '#rootless':: { 'function': { help: |||
      Whether the container runtime is running as a non-privileged user.
    ||| } },
    withRootless(value):: self {
      resource+: {
        vault_plugin_runtime+: { [terraformName]+: { rootless: value } },
      },
    },
    '#type':: { 'function': { help: |||
      Specifies the plugin runtime type. Currently only `container` is supported.
    ||| } },
    withType(value):: self {
      resource+: {
        vault_plugin_runtime+: { [terraformName]+: { type: value } },
      },
    },
  },
  ref(terraformName):: {
    local refSelf = self,
    plain(suffix=''):: '${ vault_plugin_runtime.%s%s }' % [terraformName, suffix],
    fields:: {
      '#cgroup_parent':: { 'function': { help: |||
        Specifies the parent cgroup to set for each container.
      ||| } },
      cgroup_parent(suffix=''):: refSelf.plain('.cgroup_parent%s' % suffix),
      '#cpu_nanos':: { 'function': { help: |||
        Specifies CPU limit to set per container in billionths of a CPU.
      ||| } },
      cpu_nanos(suffix=''):: refSelf.plain('.cpu_nanos%s' % suffix),
      id(suffix=''):: refSelf.plain('.id%s' % suffix),
      '#memory_bytes':: { 'function': { help: |||
        Specifies memory limit to set per container in bytes.
      ||| } },
      memory_bytes(suffix=''):: refSelf.plain('.memory_bytes%s' % suffix),
      '#name':: { 'function': { help: |||
        The name of the plugin runtime.
      ||| } },
      name(suffix=''):: refSelf.plain('.name%s' % suffix),
      '#namespace':: { 'function': { help: |||
        Target namespace. (requires Enterprise)
      ||| } },
      namespace(suffix=''):: refSelf.plain('.namespace%s' % suffix),
      '#oci_runtime':: { 'function': { help: |||
        Specifies OCI-compliant container runtime to use.
      ||| } },
      oci_runtime(suffix=''):: refSelf.plain('.oci_runtime%s' % suffix),
      '#rootless':: { 'function': { help: |||
        Whether the container runtime is running as a non-privileged user.
      ||| } },
      rootless(suffix=''):: refSelf.plain('.rootless%s' % suffix),
      '#type':: { 'function': { help: |||
        Specifies the plugin runtime type. Currently only `container` is supported.
      ||| } },
      type(suffix=''):: refSelf.plain('.type%s' % suffix),
    },
  },
}
