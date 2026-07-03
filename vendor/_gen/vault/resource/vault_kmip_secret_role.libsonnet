{
  new(terraformName, path, role, scope):: {
    _type:: 'tf',
    resource+: {
      vault_kmip_secret_role+: { [terraformName]+: {
        path: path,
        role: role,
        scope: scope,
      } },
    },
    '#withCa':: { 'function': { help: |||
      Name of the ca to use, if absent use legacy ca 
    ||| } },
    withCa(value):: self {
      resource+: {
        vault_kmip_secret_role+: { [terraformName]+: { ca: value } },
      },
    },
    withId(value):: self {
      resource+: {
        vault_kmip_secret_role+: { [terraformName]+: { id: value } },
      },
    },
    '#withNamespace':: { 'function': { help: |||
      Target namespace. (requires Enterprise) 
    ||| } },
    withNamespace(value):: self {
      resource+: {
        vault_kmip_secret_role+: { [terraformName]+: { namespace: value } },
      },
    },
    '#withOperationActivate':: { 'function': { help: |||
      Grant permission to use the KMIP Activate operation 
    ||| } },
    withOperationActivate(value):: self {
      resource+: {
        vault_kmip_secret_role+: { [terraformName]+: { operation_activate: value } },
      },
    },
    '#withOperationAddAttribute':: { 'function': { help: |||
      Grant permission to use the KMIP Add Attribute operation 
    ||| } },
    withOperationAddAttribute(value):: self {
      resource+: {
        vault_kmip_secret_role+: { [terraformName]+: { operation_add_attribute: value } },
      },
    },
    '#withOperationAll':: { 'function': { help: |||
      Grant all permissions to this role. May not be specified with any other operation_* params 
    ||| } },
    withOperationAll(value):: self {
      resource+: {
        vault_kmip_secret_role+: { [terraformName]+: { operation_all: value } },
      },
    },
    '#withOperationCreate':: { 'function': { help: |||
      Grant permission to use the KMIP Create operation 
    ||| } },
    withOperationCreate(value):: self {
      resource+: {
        vault_kmip_secret_role+: { [terraformName]+: { operation_create: value } },
      },
    },
    '#withOperationCreateKeyPair':: { 'function': { help: |||
      Grant permission to use the KMIP Create Key Pair operation 
    ||| } },
    withOperationCreateKeyPair(value):: self {
      resource+: {
        vault_kmip_secret_role+: { [terraformName]+: { operation_create_key_pair: value } },
      },
    },
    '#withOperationDecrypt':: { 'function': { help: |||
      Grant permission to use the KMIP Decrypt operation 
    ||| } },
    withOperationDecrypt(value):: self {
      resource+: {
        vault_kmip_secret_role+: { [terraformName]+: { operation_decrypt: value } },
      },
    },
    '#withOperationDeleteAttribute':: { 'function': { help: |||
      Grant permission to use the KMIP Delete Attribute operation 
    ||| } },
    withOperationDeleteAttribute(value):: self {
      resource+: {
        vault_kmip_secret_role+: { [terraformName]+: { operation_delete_attribute: value } },
      },
    },
    '#withOperationDestroy':: { 'function': { help: |||
      Grant permission to use the KMIP Destroy operation 
    ||| } },
    withOperationDestroy(value):: self {
      resource+: {
        vault_kmip_secret_role+: { [terraformName]+: { operation_destroy: value } },
      },
    },
    '#withOperationDiscoverVersions':: { 'function': { help: |||
      Grant permission to use the KMIP Discover Version operation 
    ||| } },
    withOperationDiscoverVersions(value):: self {
      resource+: {
        vault_kmip_secret_role+: { [terraformName]+: { operation_discover_versions: value } },
      },
    },
    '#withOperationEncrypt':: { 'function': { help: |||
      Grant permission to use the KMIP Encrypt operation 
    ||| } },
    withOperationEncrypt(value):: self {
      resource+: {
        vault_kmip_secret_role+: { [terraformName]+: { operation_encrypt: value } },
      },
    },
    '#withOperationGet':: { 'function': { help: |||
      Grant permission to use the KMIP Get operation 
    ||| } },
    withOperationGet(value):: self {
      resource+: {
        vault_kmip_secret_role+: { [terraformName]+: { operation_get: value } },
      },
    },
    '#withOperationGetAttributeList':: { 'function': { help: |||
      Grant permission to use the KMIP Get Attribute List operation 
    ||| } },
    withOperationGetAttributeList(value):: self {
      resource+: {
        vault_kmip_secret_role+: { [terraformName]+: { operation_get_attribute_list: value } },
      },
    },
    '#withOperationGetAttributes':: { 'function': { help: |||
      Grant permission to use the KMIP Get Attributes operation 
    ||| } },
    withOperationGetAttributes(value):: self {
      resource+: {
        vault_kmip_secret_role+: { [terraformName]+: { operation_get_attributes: value } },
      },
    },
    '#withOperationImport':: { 'function': { help: |||
      Grant permission to use the KMIP Import operation 
    ||| } },
    withOperationImport(value):: self {
      resource+: {
        vault_kmip_secret_role+: { [terraformName]+: { operation_import: value } },
      },
    },
    '#withOperationLocate':: { 'function': { help: |||
      Grant permission to use the KMIP Locate operation 
    ||| } },
    withOperationLocate(value):: self {
      resource+: {
        vault_kmip_secret_role+: { [terraformName]+: { operation_locate: value } },
      },
    },
    '#withOperationMac':: { 'function': { help: |||
      Grant permission to use the KMIP MAC operation 
    ||| } },
    withOperationMac(value):: self {
      resource+: {
        vault_kmip_secret_role+: { [terraformName]+: { operation_mac: value } },
      },
    },
    '#withOperationMacVerify':: { 'function': { help: |||
      Grant permission to use the KMIP MAC Verify operation 
    ||| } },
    withOperationMacVerify(value):: self {
      resource+: {
        vault_kmip_secret_role+: { [terraformName]+: { operation_mac_verify: value } },
      },
    },
    '#withOperationModifyAttribute':: { 'function': { help: |||
      Grant permission to use the KMIP Modify Attribute operation 
    ||| } },
    withOperationModifyAttribute(value):: self {
      resource+: {
        vault_kmip_secret_role+: { [terraformName]+: { operation_modify_attribute: value } },
      },
    },
    '#withOperationNone':: { 'function': { help: |||
      Remove all permissions from this role. May not be specified with any other operation_* params 
    ||| } },
    withOperationNone(value):: self {
      resource+: {
        vault_kmip_secret_role+: { [terraformName]+: { operation_none: value } },
      },
    },
    '#withOperationQuery':: { 'function': { help: |||
      Grant permission to use the KMIP Query operation 
    ||| } },
    withOperationQuery(value):: self {
      resource+: {
        vault_kmip_secret_role+: { [terraformName]+: { operation_query: value } },
      },
    },
    '#withOperationRegister':: { 'function': { help: |||
      Grant permission to use the KMIP Register operation 
    ||| } },
    withOperationRegister(value):: self {
      resource+: {
        vault_kmip_secret_role+: { [terraformName]+: { operation_register: value } },
      },
    },
    '#withOperationRekey':: { 'function': { help: |||
      Grant permission to use the KMIP Rekey operation 
    ||| } },
    withOperationRekey(value):: self {
      resource+: {
        vault_kmip_secret_role+: { [terraformName]+: { operation_rekey: value } },
      },
    },
    '#withOperationRekeyKeyPair':: { 'function': { help: |||
      Grant permission to use the KMIP Rekey Key Pair operation 
    ||| } },
    withOperationRekeyKeyPair(value):: self {
      resource+: {
        vault_kmip_secret_role+: { [terraformName]+: { operation_rekey_key_pair: value } },
      },
    },
    '#withOperationRevoke':: { 'function': { help: |||
      Grant permission to use the KMIP Revoke operation 
    ||| } },
    withOperationRevoke(value):: self {
      resource+: {
        vault_kmip_secret_role+: { [terraformName]+: { operation_revoke: value } },
      },
    },
    '#withOperationRngRetrieve':: { 'function': { help: |||
      Grant permission to use the KMIP RNG Retrieve operation 
    ||| } },
    withOperationRngRetrieve(value):: self {
      resource+: {
        vault_kmip_secret_role+: { [terraformName]+: { operation_rng_retrieve: value } },
      },
    },
    '#withOperationRngSeed':: { 'function': { help: |||
      Grant permission to use the KMIP RNG Seed operation 
    ||| } },
    withOperationRngSeed(value):: self {
      resource+: {
        vault_kmip_secret_role+: { [terraformName]+: { operation_rng_seed: value } },
      },
    },
    '#withOperationSign':: { 'function': { help: |||
      Grant permission to use the KMIP Sign operation 
    ||| } },
    withOperationSign(value):: self {
      resource+: {
        vault_kmip_secret_role+: { [terraformName]+: { operation_sign: value } },
      },
    },
    '#withOperationSignatureVerify':: { 'function': { help: |||
      Grant permission to use the KMIP Signature Verify operation 
    ||| } },
    withOperationSignatureVerify(value):: self {
      resource+: {
        vault_kmip_secret_role+: { [terraformName]+: { operation_signature_verify: value } },
      },
    },
    '#withPath':: { 'function': { help: |||
      Path where KMIP backend is mounted 
    ||| } },
    withPath(value):: self {
      resource+: {
        vault_kmip_secret_role+: { [terraformName]+: { path: value } },
      },
    },
    '#withRole':: { 'function': { help: |||
      Name of the role 
    ||| } },
    withRole(value):: self {
      resource+: {
        vault_kmip_secret_role+: { [terraformName]+: { role: value } },
      },
    },
    '#withScope':: { 'function': { help: |||
      Name of the scope 
    ||| } },
    withScope(value):: self {
      resource+: {
        vault_kmip_secret_role+: { [terraformName]+: { scope: value } },
      },
    },
    '#withTlsClientKeyBits':: { 'function': { help: |||
      Client certificate key bits, valid values depend on key type 
    ||| } },
    withTlsClientKeyBits(value):: self {
      resource+: {
        vault_kmip_secret_role+: { [terraformName]+: { tls_client_key_bits: value } },
      },
    },
    '#withTlsClientKeyType':: { 'function': { help: |||
      Client certificate key type, rsa or ec 
    ||| } },
    withTlsClientKeyType(value):: self {
      resource+: {
        vault_kmip_secret_role+: { [terraformName]+: { tls_client_key_type: value } },
      },
    },
    '#withTlsClientTtl':: { 'function': { help: |||
      Client certificate TTL in seconds 
    ||| } },
    withTlsClientTtl(value):: self {
      resource+: {
        vault_kmip_secret_role+: { [terraformName]+: { tls_client_ttl: value } },
      },
    },
  },
}
