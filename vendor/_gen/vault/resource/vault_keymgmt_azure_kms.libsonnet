{
  new(terraformName, key_collection, mount, name):: {
    _type:: 'tf',
    resource+: {
      vault_keymgmt_azure_kms+: { [terraformName]+: {
        key_collection: key_collection,
        mount: mount,
        name: name,
      } },
    },
    '#withCredentialsWo':: { 'function': { help: |||
      The credentials to use for authentication with Azure Key Vault. Supplying values for this parameter is optional, as credentials may also be specified as environment variables. Environment variables will take precedence over credentials provided via this parameter. 
    ||| } },
    withCredentialsWo(value):: self {
      resource+: {
        vault_keymgmt_azure_kms+: { [terraformName]+: { credentials_wo: value } },
      },
    },
    '#withCredentialsWoVersion':: { 'function': { help: |||
      Version counter for the write-only `credentials_wo` field. Since write-only values are not stored in state, Terraform cannot detect when credentials change. Increment this value whenever you update `credentials_wo` to ensure the new credentials are sent to Vault. 
    ||| } },
    withCredentialsWoVersion(value):: self {
      resource+: {
        vault_keymgmt_azure_kms+: { [terraformName]+: { credentials_wo_version: value } },
      },
    },
    '#withKeyCollection':: { 'function': { help: |||
      Refers to the name of an existing Azure Key Vault instance. Cannot be changed after creation. 
    ||| } },
    withKeyCollection(value):: self {
      resource+: {
        vault_keymgmt_azure_kms+: { [terraformName]+: { key_collection: value } },
      },
    },
    '#withMount':: { 'function': { help: |||
      Path of the Key Management secrets engine mount. Must match the `path` of a `vault_mount` resource with `type = "keymgmt"`. Use `vault_mount.keymgmt.path` here. 
    ||| } },
    withMount(value):: self {
      resource+: {
        vault_keymgmt_azure_kms+: { [terraformName]+: { mount: value } },
      },
    },
    '#withName':: { 'function': { help: |||
      Specifies the name of the Azure Key Vault provider. Cannot be changed after creation. 
    ||| } },
    withName(value):: self {
      resource+: {
        vault_keymgmt_azure_kms+: { [terraformName]+: { name: value } },
      },
    },
    '#withNamespace':: { 'function': { help: |||
      Target namespace. (requires Enterprise) 
    ||| } },
    withNamespace(value):: self {
      resource+: {
        vault_keymgmt_azure_kms+: { [terraformName]+: { namespace: value } },
      },
    },
  },
}
