{
  new(terraformName, type, name):: {
    _type:: 'tf',
    resource+: {
      vault_plugin_runtime+: { [terraformName]+: {
        type: type,
        name: name,
      } },
    },
    withType(value):: self {
      resource+: {
        vault_plugin_runtime+: { [terraformName]+: { type: value } },
      },
    },
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
    withMemoryBytes(value):: self {
      resource+: {
        vault_plugin_runtime+: { [terraformName]+: { memory_bytes: value } },
      },
    },
    withOciRuntime(value):: self {
      resource+: {
        vault_plugin_runtime+: { [terraformName]+: { oci_runtime: value } },
      },
    },
    withRootless(value):: self {
      resource+: {
        vault_plugin_runtime+: { [terraformName]+: { rootless: value } },
      },
    },
    withCgroupParent(value):: self {
      resource+: {
        vault_plugin_runtime+: { [terraformName]+: { cgroup_parent: value } },
      },
    },
    withNamespace(value):: self {
      resource+: {
        vault_plugin_runtime+: { [terraformName]+: { namespace: value } },
      },
    },
    withName(value):: self {
      resource+: {
        vault_plugin_runtime+: { [terraformName]+: { name: value } },
      },
    },
  },
}
