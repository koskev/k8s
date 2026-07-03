{
  new(terraformName, name, type):: {
    _type:: 'tf',
    resource+: {
      vault_plugin_runtime+: { [terraformName]+: {
        name: name,
        type: type,
      } },
    },
    '#withCgroupParent': { 'function': { help: |||
      Specifies the parent cgroup to set for each container. 
    ||| } },
    withCgroupParent(value):: self {
      resource+: {
        vault_plugin_runtime+: { [terraformName]+: { cgroup_parent: value } },
      },
    },
    '#withCpuNanos': { 'function': { help: |||
      Specifies CPU limit to set per container in billionths of a CPU. 
    ||| } },
    withCpuNanos(value):: self {
      resource+: {
        vault_plugin_runtime+: { [terraformName]+: { cpu_nanos: value } },
      },
    },
    withId(value):: self {
      resource+: {
        vault_plugin_runtime+: { [terraformName]+: { id: value } },
      },
    },
    '#withMemoryBytes': { 'function': { help: |||
      Specifies memory limit to set per container in bytes. 
    ||| } },
    withMemoryBytes(value):: self {
      resource+: {
        vault_plugin_runtime+: { [terraformName]+: { memory_bytes: value } },
      },
    },
    '#withName': { 'function': { help: |||
      The name of the plugin runtime. 
    ||| } },
    withName(value):: self {
      resource+: {
        vault_plugin_runtime+: { [terraformName]+: { name: value } },
      },
    },
    '#withNamespace': { 'function': { help: |||
      Target namespace. (requires Enterprise) 
    ||| } },
    withNamespace(value):: self {
      resource+: {
        vault_plugin_runtime+: { [terraformName]+: { namespace: value } },
      },
    },
    '#withOciRuntime': { 'function': { help: |||
      Specifies OCI-compliant container runtime to use. 
    ||| } },
    withOciRuntime(value):: self {
      resource+: {
        vault_plugin_runtime+: { [terraformName]+: { oci_runtime: value } },
      },
    },
    '#withRootless': { 'function': { help: |||
      Whether the container runtime is running as a non-privileged user. 
    ||| } },
    withRootless(value):: self {
      resource+: {
        vault_plugin_runtime+: { [terraformName]+: { rootless: value } },
      },
    },
    '#withType': { 'function': { help: |||
      Specifies the plugin runtime type. Currently only `container` is supported. 
    ||| } },
    withType(value):: self {
      resource+: {
        vault_plugin_runtime+: { [terraformName]+: { type: value } },
      },
    },
  },
}
