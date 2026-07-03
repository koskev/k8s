{
  new(terraformName, mount, public_key):: {
    _type:: 'tf',
    resource+: {
      vault_mongodbatlas_secret_backend+: { [terraformName]+: {
        mount: mount,
        public_key: public_key,
      } },
    },
    withId(value):: self {
      resource+: {
        vault_mongodbatlas_secret_backend+: { [terraformName]+: { id: value } },
      },
    },
    '#withMount':: { 'function': { help: |||
      Path where MongoDB Atlas secret backend is mounted 
    ||| } },
    withMount(value):: self {
      resource+: {
        vault_mongodbatlas_secret_backend+: { [terraformName]+: { mount: value } },
      },
    },
    '#withNamespace':: { 'function': { help: |||
      Target namespace. (requires Enterprise) 
    ||| } },
    withNamespace(value):: self {
      resource+: {
        vault_mongodbatlas_secret_backend+: { [terraformName]+: { namespace: value } },
      },
    },
    '#withPath':: { 'function': { help: |||
      Path where MongoDB Atlas configuration is located 
    ||| } },
    withPath(value):: self {
      resource+: {
        vault_mongodbatlas_secret_backend+: { [terraformName]+: { path: value } },
      },
    },
    '#withPrivateKey':: { 'function': { help: |||
      The Private Programmatic API Key used to connect with MongoDB Atlas API 
    ||| } },
    withPrivateKey(value):: self {
      resource+: {
        vault_mongodbatlas_secret_backend+: { [terraformName]+: { private_key: value } },
      },
    },
    '#withPrivateKeyWo':: { 'function': { help: |||
      The Private Programmatic API Key used to connect with MongoDB Atlas API. This is a write-only field that is not stored in state. 
    ||| } },
    withPrivateKeyWo(value):: self {
      resource+: {
        vault_mongodbatlas_secret_backend+: { [terraformName]+: { private_key_wo: value } },
      },
    },
    '#withPrivateKeyWoVersion':: { 'function': { help: |||
      Incrementing version counter for the private_key_wo field. Increment to force an update to the private key. 
    ||| } },
    withPrivateKeyWoVersion(value):: self {
      resource+: {
        vault_mongodbatlas_secret_backend+: { [terraformName]+: { private_key_wo_version: value } },
      },
    },
    '#withPublicKey':: { 'function': { help: |||
      The Public Programmatic API Key used to authenticate with the MongoDB Atlas API 
    ||| } },
    withPublicKey(value):: self {
      resource+: {
        vault_mongodbatlas_secret_backend+: { [terraformName]+: { public_key: value } },
      },
    },
  },
}
