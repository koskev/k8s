{
  local outerSelf = self,
  new(terraformName, mount, public_key):: self.functions(terraformName) {
    ref():: outerSelf.ref(terraformName),
    _type:: 'tf',
    resource+: {
      vault_mongodbatlas_secret_backend+: {
        [terraformName]+: {
          mount: mount,
          public_key: public_key,
        },
      },
    },
  },
  functions(terraformName):: {
    withForEach(value):: self {
      resource+: {
        vault_mongodbatlas_secret_backend+: { [terraformName]+: { for_each: value } },
      },
    },
    withDependsOn(value):: self {
      resource+: {
        vault_mongodbatlas_secret_backend+: { [terraformName]+: { depends_on: value } },
      },
    },
    withCount(value):: self {
      resource+: {
        vault_mongodbatlas_secret_backend+: { [terraformName]+: { count: value } },
      },
    },
    withLifecycle(value):: self {
      resource+: {
        vault_mongodbatlas_secret_backend+: { [terraformName]+: { lifecycle: value } },
      },
    },
    withProvider(value):: self {
      resource+: {
        vault_mongodbatlas_secret_backend+: { [terraformName]+: { provider: value } },
      },
    },
    withProviders(value):: self {
      resource+: {
        vault_mongodbatlas_secret_backend+: { [terraformName]+: { providers: value } },
      },
    },
    withId(value):: self {
      resource+: {
        vault_mongodbatlas_secret_backend+: { [terraformName]+: { id: value } },
      },
    },
    '#mount':: { 'function': { help: |||
      Path where MongoDB Atlas secret backend is mounted
    ||| } },
    withMount(value):: self {
      resource+: {
        vault_mongodbatlas_secret_backend+: { [terraformName]+: { mount: value } },
      },
    },
    '#namespace':: { 'function': { help: |||
      Target namespace. (requires Enterprise)
    ||| } },
    withNamespace(value):: self {
      resource+: {
        vault_mongodbatlas_secret_backend+: { [terraformName]+: { namespace: value } },
      },
    },
    '#private_key':: { 'function': { help: |||
      The Private Programmatic API Key used to connect with MongoDB Atlas API
    ||| } },
    withPrivateKey(value):: self {
      resource+: {
        vault_mongodbatlas_secret_backend+: { [terraformName]+: { private_key: value } },
      },
    },
    '#private_key_wo':: { 'function': { help: |||
      The Private Programmatic API Key used to connect with MongoDB Atlas API. This is a write-only field that is not stored in state.
    ||| } },
    withPrivateKeyWo(value):: self {
      resource+: {
        vault_mongodbatlas_secret_backend+: { [terraformName]+: { private_key_wo: value } },
      },
    },
    '#private_key_wo_version':: { 'function': { help: |||
      Incrementing version counter for the private_key_wo field. Increment to force an update to the private key.
    ||| } },
    withPrivateKeyWoVersion(value):: self {
      resource+: {
        vault_mongodbatlas_secret_backend+: { [terraformName]+: { private_key_wo_version: value } },
      },
    },
    '#public_key':: { 'function': { help: |||
      The Public Programmatic API Key used to authenticate with the MongoDB Atlas API
    ||| } },
    withPublicKey(value):: self {
      resource+: {
        vault_mongodbatlas_secret_backend+: { [terraformName]+: { public_key: value } },
      },
    },
  },
  ref(terraformName):: {
    local refSelf = self,
    plain(suffix=''):: '${ vault_mongodbatlas_secret_backend.%s%s }' % [terraformName, suffix],
    fields:: {
      id(suffix=''):: refSelf.plain('.id%s' % suffix),
      '#mount':: { 'function': { help: |||
        Path where MongoDB Atlas secret backend is mounted
      ||| } },
      mount(suffix=''):: refSelf.plain('.mount%s' % suffix),
      '#namespace':: { 'function': { help: |||
        Target namespace. (requires Enterprise)
      ||| } },
      namespace(suffix=''):: refSelf.plain('.namespace%s' % suffix),
      '#path':: { 'function': { help: |||
        Path where MongoDB Atlas configuration is located
      ||| } },
      path(suffix=''):: refSelf.plain('.path%s' % suffix),
      '#private_key':: { 'function': { help: |||
        The Private Programmatic API Key used to connect with MongoDB Atlas API
      ||| } },
      private_key(suffix=''):: refSelf.plain('.private_key%s' % suffix),
      '#private_key_wo':: { 'function': { help: |||
        The Private Programmatic API Key used to connect with MongoDB Atlas API. This is a write-only field that is not stored in state.
      ||| } },
      private_key_wo(suffix=''):: refSelf.plain('.private_key_wo%s' % suffix),
      '#private_key_wo_version':: { 'function': { help: |||
        Incrementing version counter for the private_key_wo field. Increment to force an update to the private key.
      ||| } },
      private_key_wo_version(suffix=''):: refSelf.plain('.private_key_wo_version%s' % suffix),
      '#public_key':: { 'function': { help: |||
        The Public Programmatic API Key used to authenticate with the MongoDB Atlas API
      ||| } },
      public_key(suffix=''):: refSelf.plain('.public_key%s' % suffix),
    },
  },
}
