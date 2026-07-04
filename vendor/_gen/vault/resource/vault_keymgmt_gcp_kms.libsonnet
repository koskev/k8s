{
  '#new':: { 'function': { help: |||
    Manages a GCP Cloud KMS provider for Vault Key Management
  ||| } },
  local outerSelf = self,
  new(terraformName, key_collection, mount, name):: self.functions(terraformName) {
    ref():: outerSelf.ref(terraformName),
    _type:: 'tf',
    resource+: {
      vault_keymgmt_gcp_kms+: {
        [terraformName]+: {
          key_collection: key_collection,
          mount: mount,
          name: name,
        },
      },
    },
  },
  functions(terraformName):: {
    '#withCredentialsWo':: { 'function': { help: |||
      The credentials to use for authentication with Google Cloud KMS. Supplying values for this parameter is optional, as credentials may also be specified through environment variables or Application Default Credentials. The order of precedence is environment variables, then the credentials provided to this parameter and Application Default Credentials.
    ||| } },
    withCredentialsWo(value):: self {
      resource+: {
        vault_keymgmt_gcp_kms+: { [terraformName]+: { credentials_wo: value } },
      },
    },
    '#withCredentialsWoVersion':: { 'function': { help: |||
      Version counter for the write-only `credentials_wo` field. Since write-only values are not stored in state, Terraform cannot detect when credentials change. Increment this value whenever you update `credentials_wo` to ensure the new credentials are sent to Vault.
    ||| } },
    withCredentialsWoVersion(value):: self {
      resource+: {
        vault_keymgmt_gcp_kms+: { [terraformName]+: { credentials_wo_version: value } },
      },
    },
    '#withKeyCollection':: { 'function': { help: |||
      Refers to the resource ID of an existing GCP Cloud KMS key ring. Cannot be changed after creation.
    ||| } },
    withKeyCollection(value):: self {
      resource+: {
        vault_keymgmt_gcp_kms+: { [terraformName]+: { key_collection: value } },
      },
    },
    '#withMount':: { 'function': { help: |||
      Path of the Key Management secrets engine mount. Must match the `path` of a `vault_mount` resource with `type = "keymgmt"`. Use `vault_mount.keymgmt.path` here.
    ||| } },
    withMount(value):: self {
      resource+: {
        vault_keymgmt_gcp_kms+: { [terraformName]+: { mount: value } },
      },
    },
    '#withName':: { 'function': { help: |||
      Specifies the name of the GCP Cloud KMS provider. Cannot be changed after creation.
    ||| } },
    withName(value):: self {
      resource+: {
        vault_keymgmt_gcp_kms+: { [terraformName]+: { name: value } },
      },
    },
    '#withNamespace':: { 'function': { help: |||
      Target namespace. (requires Enterprise)
    ||| } },
    withNamespace(value):: self {
      resource+: {
        vault_keymgmt_gcp_kms+: { [terraformName]+: { namespace: value } },
      },
    },
  },
  ref(terraformName):: {
    local refSelf = self,
    plain(suffix=''):: '${ vault_keymgmt_gcp_kms.%s%s }' % [terraformName, suffix],
    fields:: {
      '#credentials_wo':: { 'function': { help: |||
        The credentials to use for authentication with Google Cloud KMS. Supplying values for this parameter is optional, as credentials may also be specified through environment variables or Application Default Credentials. The order of precedence is environment variables, then the credentials provided to this parameter and Application Default Credentials.
      ||| } },
      credentials_wo(suffix=''):: refSelf.plain('.credentials_wo%s' % suffix),
      '#credentials_wo_version':: { 'function': { help: |||
        Version counter for the write-only `credentials_wo` field. Since write-only values are not stored in state, Terraform cannot detect when credentials change. Increment this value whenever you update `credentials_wo` to ensure the new credentials are sent to Vault.
      ||| } },
      credentials_wo_version(suffix=''):: refSelf.plain('.credentials_wo_version%s' % suffix),
      '#key_collection':: { 'function': { help: |||
        Refers to the resource ID of an existing GCP Cloud KMS key ring. Cannot be changed after creation.
      ||| } },
      key_collection(suffix=''):: refSelf.plain('.key_collection%s' % suffix),
      '#mount':: { 'function': { help: |||
        Path of the Key Management secrets engine mount. Must match the `path` of a `vault_mount` resource with `type = "keymgmt"`. Use `vault_mount.keymgmt.path` here.
      ||| } },
      mount(suffix=''):: refSelf.plain('.mount%s' % suffix),
      '#name':: { 'function': { help: |||
        Specifies the name of the GCP Cloud KMS provider. Cannot be changed after creation.
      ||| } },
      name(suffix=''):: refSelf.plain('.name%s' % suffix),
      '#namespace':: { 'function': { help: |||
        Target namespace. (requires Enterprise)
      ||| } },
      namespace(suffix=''):: refSelf.plain('.namespace%s' % suffix),
    },
  },
}
