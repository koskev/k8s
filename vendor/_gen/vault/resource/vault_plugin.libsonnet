{
  local outerSelf = self,
  new(terraformName, name, type):: self.functions(terraformName) {
    ref():: outerSelf.ref(terraformName),
    _type:: 'tf',
    resource+: {
      vault_plugin+: {
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
        vault_plugin+: { [terraformName]+: { for_each: value } },
      },
    },
    withDependsOn(value):: self {
      resource+: {
        vault_plugin+: { [terraformName]+: { depends_on: value } },
      },
    },
    withCount(value):: self {
      resource+: {
        vault_plugin+: { [terraformName]+: { count: value } },
      },
    },
    withLifecycle(value):: self {
      resource+: {
        vault_plugin+: { [terraformName]+: { lifecycle: value } },
      },
    },
    withProvider(value):: self {
      resource+: {
        vault_plugin+: { [terraformName]+: { provider: value } },
      },
    },
    withProviders(value):: self {
      resource+: {
        vault_plugin+: { [terraformName]+: { providers: value } },
      },
    },
    '#args':: { 'function': { help: |||
      List of additional arguments to pass to the plugin.
    ||| } },
    withArgs(value):: self {
      resource+: {
        vault_plugin+: { [terraformName]+: { args: value } },
      },
    },
    '#command':: { 'function': { help: |||
      Command to execute the plugin, relative to the plugin_directory.
    ||| } },
    withCommand(value):: self {
      resource+: {
        vault_plugin+: { [terraformName]+: { command: value } },
      },
    },
    '#env':: { 'function': { help: |||
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
    '#name':: { 'function': { help: |||
      Name of the plugin.
    ||| } },
    withName(value):: self {
      resource+: {
        vault_plugin+: { [terraformName]+: { name: value } },
      },
    },
    '#oci_image':: { 'function': { help: |||
      OCI image to run. If specified, setting command, args, and env will update the container's entrypoint, args, and environment variables (append-only) respectively.
    ||| } },
    withOciImage(value):: self {
      resource+: {
        vault_plugin+: { [terraformName]+: { oci_image: value } },
      },
    },
    '#runtime':: { 'function': { help: |||
      Vault plugin runtime to use if oci_image is specified.
    ||| } },
    withRuntime(value):: self {
      resource+: {
        vault_plugin+: { [terraformName]+: { runtime: value } },
      },
    },
    '#sha256':: { 'function': { help: |||
      SHA256 sum of the plugin binary.
    ||| } },
    withSha256(value):: self {
      resource+: {
        vault_plugin+: { [terraformName]+: { sha256: value } },
      },
    },
    '#type':: { 'function': { help: |||
      Type of plugin; one of "auth", "secret", or "database".
    ||| } },
    withType(value):: self {
      resource+: {
        vault_plugin+: { [terraformName]+: { type: value } },
      },
    },
    '#version':: { 'function': { help: |||
      Semantic version of the plugin.
    ||| } },
    withVersion(value):: self {
      resource+: {
        vault_plugin+: { [terraformName]+: { version: value } },
      },
    },
  },
  ref(terraformName):: {
    local refSelf = self,
    plain(suffix=''):: '${ vault_plugin.%s%s }' % [terraformName, suffix],
    fields:: {
      '#args':: { 'function': { help: |||
        List of additional arguments to pass to the plugin.
      ||| } },
      args(suffix=''):: refSelf.plain('.args%s' % suffix),
      '#command':: { 'function': { help: |||
        Command to execute the plugin, relative to the plugin_directory.
      ||| } },
      command(suffix=''):: refSelf.plain('.command%s' % suffix),
      '#env':: { 'function': { help: |||
        List of additional environment variables to run the plugin with in KEY=VALUE form.
      ||| } },
      env(suffix=''):: refSelf.plain('.env%s' % suffix),
      id(suffix=''):: refSelf.plain('.id%s' % suffix),
      '#name':: { 'function': { help: |||
        Name of the plugin.
      ||| } },
      name(suffix=''):: refSelf.plain('.name%s' % suffix),
      '#oci_image':: { 'function': { help: |||
        OCI image to run. If specified, setting command, args, and env will update the container's entrypoint, args, and environment variables (append-only) respectively.
      ||| } },
      oci_image(suffix=''):: refSelf.plain('.oci_image%s' % suffix),
      '#runtime':: { 'function': { help: |||
        Vault plugin runtime to use if oci_image is specified.
      ||| } },
      runtime(suffix=''):: refSelf.plain('.runtime%s' % suffix),
      '#sha256':: { 'function': { help: |||
        SHA256 sum of the plugin binary.
      ||| } },
      sha256(suffix=''):: refSelf.plain('.sha256%s' % suffix),
      '#type':: { 'function': { help: |||
        Type of plugin; one of "auth", "secret", or "database".
      ||| } },
      type(suffix=''):: refSelf.plain('.type%s' % suffix),
      '#version':: { 'function': { help: |||
        Semantic version of the plugin.
      ||| } },
      version(suffix=''):: refSelf.plain('.version%s' % suffix),
    },
  },
}
