{
  new(terraformName, type, name):: {
    _type:: 'tf',
    resource+: {
      vault_plugin+: { [terraformName]+: {
        type: type,
        name: name,
      } },
    },
    withArgs(value):: self {
      resource+: {
        vault_plugin+: { [terraformName]+: { args: value } },
      },
    },
    withSha256(value):: self {
      resource+: {
        vault_plugin+: { [terraformName]+: { sha256: value } },
      },
    },
    withEnv(value):: self {
      resource+: {
        vault_plugin+: { [terraformName]+: { env: value } },
      },
    },
    withType(value):: self {
      resource+: {
        vault_plugin+: { [terraformName]+: { type: value } },
      },
    },
    withVersion(value):: self {
      resource+: {
        vault_plugin+: { [terraformName]+: { version: value } },
      },
    },
    withCommand(value):: self {
      resource+: {
        vault_plugin+: { [terraformName]+: { command: value } },
      },
    },
    withOciImage(value):: self {
      resource+: {
        vault_plugin+: { [terraformName]+: { oci_image: value } },
      },
    },
    withId(value):: self {
      resource+: {
        vault_plugin+: { [terraformName]+: { id: value } },
      },
    },
    withName(value):: self {
      resource+: {
        vault_plugin+: { [terraformName]+: { name: value } },
      },
    },
    withRuntime(value):: self {
      resource+: {
        vault_plugin+: { [terraformName]+: { runtime: value } },
      },
    },
  },
}
