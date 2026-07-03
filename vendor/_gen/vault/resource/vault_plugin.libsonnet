{
  new(terraformName, name, type):: {
    _type:: 'tf',
    resource+: {
      vault_plugin+: { [terraformName]+: {
        name: name,
        type: type,
      } },
    },
    '#withArgs': { 'function': { help: |||
      List of additional arguments to pass to the plugin. 
    ||| } },
    withArgs(value):: self {
      resource+: {
        vault_plugin+: { [terraformName]+: { args: value } },
      },
    },
    '#withCommand': { 'function': { help: |||
      Command to execute the plugin, relative to the plugin_directory. 
    ||| } },
    withCommand(value):: self {
      resource+: {
        vault_plugin+: { [terraformName]+: { command: value } },
      },
    },
    '#withEnv': { 'function': { help: |||
      List of additional environment variables to run the plugin with in KEY=VALUE form. 
    ||| } },
    withEnv(value):: self {
      resource+: {
        vault_plugin+: { [terraformName]+: { env: value } },
      },
    },
    withId(value):: self {
      resource+: {
        vault_plugin+: { [terraformName]+: { id: value } },
      },
    },
    '#withName': { 'function': { help: |||
      Name of the plugin. 
    ||| } },
    withName(value):: self {
      resource+: {
        vault_plugin+: { [terraformName]+: { name: value } },
      },
    },
    '#withOciImage': { 'function': { help: |||
      OCI image to run. If specified, setting command, args, and env will update the container's entrypoint, args, and environment variables (append-only) respectively. 
    ||| } },
    withOciImage(value):: self {
      resource+: {
        vault_plugin+: { [terraformName]+: { oci_image: value } },
      },
    },
    '#withRuntime': { 'function': { help: |||
      Vault plugin runtime to use if oci_image is specified. 
    ||| } },
    withRuntime(value):: self {
      resource+: {
        vault_plugin+: { [terraformName]+: { runtime: value } },
      },
    },
    '#withSha256': { 'function': { help: |||
      SHA256 sum of the plugin binary. 
    ||| } },
    withSha256(value):: self {
      resource+: {
        vault_plugin+: { [terraformName]+: { sha256: value } },
      },
    },
    '#withType': { 'function': { help: |||
      Type of plugin; one of "auth", "secret", or "database". 
    ||| } },
    withType(value):: self {
      resource+: {
        vault_plugin+: { [terraformName]+: { type: value } },
      },
    },
    '#withVersion': { 'function': { help: |||
      Semantic version of the plugin. 
    ||| } },
    withVersion(value):: self {
      resource+: {
        vault_plugin+: { [terraformName]+: { version: value } },
      },
    },
  },
}
