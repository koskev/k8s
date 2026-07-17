{
  local outerSelf = self,
  new(terraformName, path, role, scope):: self.functions(terraformName) + {
    _type:: 'tf',
    ref():: outerSelf.ref(terraformName),
    resource+: {
      vault_kmip_secret_role+: { [terraformName]+: {
        path: path,
        role: role,
        scope: scope,
      } },
    },
  }
  ,
  functions(terraformName):: {
    withForEach(value):: self { resource+: {
      vault_kmip_secret_role+: { [terraformName]+: { for_each: value } },
    } },
    withDependsOn(value):: self { resource+: {
      vault_kmip_secret_role+: { [terraformName]+: { depends_on: value } },
    } },
    withCount(value):: self { resource+: {
      vault_kmip_secret_role+: { [terraformName]+: { count: value } },
    } },
    withLifecycle(value):: self { resource+: {
      vault_kmip_secret_role+: { [terraformName]+: { lifecycle: value } },
    } },
    withProvider(value):: self { resource+: {
      vault_kmip_secret_role+: { [terraformName]+: { provider: value } },
    } },
    withProviders(value):: self { resource+: {
      vault_kmip_secret_role+: { [terraformName]+: { providers: value } },
    } },
    addCustomData(name, value):: self { resource+: {
      vault_kmip_secret_role+: { [terraformName]+: { [name]: value } },
    } },
    '#withCa':: { 'function': {
      help:
        |||
          Name of the ca to use, if absent use legacy ca
        |||,
    } },
    withCa(value):: self { resource+: {
      vault_kmip_secret_role+: { [terraformName]+: { ca: value } },
    } },
    withId(value):: self { resource+: {
      vault_kmip_secret_role+: { [terraformName]+: { id: value } },
    } },
    '#withNamespace':: { 'function': {
      help:
        |||
          Target namespace. (requires Enterprise)
        |||,
    } },
    withNamespace(value):: self { resource+: {
      vault_kmip_secret_role+: { [terraformName]+: { namespace: value } },
    } },
    '#withOperationActivate':: { 'function': {
      help:
        |||
          Grant permission to use the KMIP Activate operation
        |||,
    } },
    withOperationActivate(value):: self { resource+: {
      vault_kmip_secret_role+: { [terraformName]+: { operation_activate: value } },
    } },
    '#withOperationAddAttribute':: { 'function': {
      help:
        |||
          Grant permission to use the KMIP Add Attribute operation
        |||,
    } },
    withOperationAddAttribute(value):: self { resource+: {
      vault_kmip_secret_role+: { [terraformName]+: { operation_add_attribute: value } },
    } },
    '#withOperationAll':: { 'function': {
      help:
        |||
          Grant all permissions to this role. May not be specified with any other operation_* params
        |||,
    } },
    withOperationAll(value):: self { resource+: {
      vault_kmip_secret_role+: { [terraformName]+: { operation_all: value } },
    } },
    '#withOperationCreate':: { 'function': {
      help:
        |||
          Grant permission to use the KMIP Create operation
        |||,
    } },
    withOperationCreate(value):: self { resource+: {
      vault_kmip_secret_role+: { [terraformName]+: { operation_create: value } },
    } },
    '#withOperationCreateKeyPair':: { 'function': {
      help:
        |||
          Grant permission to use the KMIP Create Key Pair operation
        |||,
    } },
    withOperationCreateKeyPair(value):: self { resource+: {
      vault_kmip_secret_role+: { [terraformName]+: { operation_create_key_pair: value } },
    } },
    '#withOperationDecrypt':: { 'function': {
      help:
        |||
          Grant permission to use the KMIP Decrypt operation
        |||,
    } },
    withOperationDecrypt(value):: self { resource+: {
      vault_kmip_secret_role+: { [terraformName]+: { operation_decrypt: value } },
    } },
    '#withOperationDeleteAttribute':: { 'function': {
      help:
        |||
          Grant permission to use the KMIP Delete Attribute operation
        |||,
    } },
    withOperationDeleteAttribute(value):: self { resource+: {
      vault_kmip_secret_role+: { [terraformName]+: { operation_delete_attribute: value } },
    } },
    '#withOperationDestroy':: { 'function': {
      help:
        |||
          Grant permission to use the KMIP Destroy operation
        |||,
    } },
    withOperationDestroy(value):: self { resource+: {
      vault_kmip_secret_role+: { [terraformName]+: { operation_destroy: value } },
    } },
    '#withOperationDiscoverVersions':: { 'function': {
      help:
        |||
          Grant permission to use the KMIP Discover Version operation
        |||,
    } },
    withOperationDiscoverVersions(value):: self { resource+: {
      vault_kmip_secret_role+: { [terraformName]+: { operation_discover_versions: value } },
    } },
    '#withOperationEncrypt':: { 'function': {
      help:
        |||
          Grant permission to use the KMIP Encrypt operation
        |||,
    } },
    withOperationEncrypt(value):: self { resource+: {
      vault_kmip_secret_role+: { [terraformName]+: { operation_encrypt: value } },
    } },
    '#withOperationGet':: { 'function': {
      help:
        |||
          Grant permission to use the KMIP Get operation
        |||,
    } },
    withOperationGet(value):: self { resource+: {
      vault_kmip_secret_role+: { [terraformName]+: { operation_get: value } },
    } },
    '#withOperationGetAttributeList':: { 'function': {
      help:
        |||
          Grant permission to use the KMIP Get Attribute List operation
        |||,
    } },
    withOperationGetAttributeList(value):: self { resource+: {
      vault_kmip_secret_role+: { [terraformName]+: { operation_get_attribute_list: value } },
    } },
    '#withOperationGetAttributes':: { 'function': {
      help:
        |||
          Grant permission to use the KMIP Get Attributes operation
        |||,
    } },
    withOperationGetAttributes(value):: self { resource+: {
      vault_kmip_secret_role+: { [terraformName]+: { operation_get_attributes: value } },
    } },
    '#withOperationImport':: { 'function': {
      help:
        |||
          Grant permission to use the KMIP Import operation
        |||,
    } },
    withOperationImport(value):: self { resource+: {
      vault_kmip_secret_role+: { [terraformName]+: { operation_import: value } },
    } },
    '#withOperationLocate':: { 'function': {
      help:
        |||
          Grant permission to use the KMIP Locate operation
        |||,
    } },
    withOperationLocate(value):: self { resource+: {
      vault_kmip_secret_role+: { [terraformName]+: { operation_locate: value } },
    } },
    '#withOperationMac':: { 'function': {
      help:
        |||
          Grant permission to use the KMIP MAC operation
        |||,
    } },
    withOperationMac(value):: self { resource+: {
      vault_kmip_secret_role+: { [terraformName]+: { operation_mac: value } },
    } },
    '#withOperationMacVerify':: { 'function': {
      help:
        |||
          Grant permission to use the KMIP MAC Verify operation
        |||,
    } },
    withOperationMacVerify(value):: self { resource+: {
      vault_kmip_secret_role+: { [terraformName]+: { operation_mac_verify: value } },
    } },
    '#withOperationModifyAttribute':: { 'function': {
      help:
        |||
          Grant permission to use the KMIP Modify Attribute operation
        |||,
    } },
    withOperationModifyAttribute(value):: self { resource+: {
      vault_kmip_secret_role+: { [terraformName]+: { operation_modify_attribute: value } },
    } },
    '#withOperationNone':: { 'function': {
      help:
        |||
          Remove all permissions from this role. May not be specified with any other operation_* params
        |||,
    } },
    withOperationNone(value):: self { resource+: {
      vault_kmip_secret_role+: { [terraformName]+: { operation_none: value } },
    } },
    '#withOperationQuery':: { 'function': {
      help:
        |||
          Grant permission to use the KMIP Query operation
        |||,
    } },
    withOperationQuery(value):: self { resource+: {
      vault_kmip_secret_role+: { [terraformName]+: { operation_query: value } },
    } },
    '#withOperationRegister':: { 'function': {
      help:
        |||
          Grant permission to use the KMIP Register operation
        |||,
    } },
    withOperationRegister(value):: self { resource+: {
      vault_kmip_secret_role+: { [terraformName]+: { operation_register: value } },
    } },
    '#withOperationRekey':: { 'function': {
      help:
        |||
          Grant permission to use the KMIP Rekey operation
        |||,
    } },
    withOperationRekey(value):: self { resource+: {
      vault_kmip_secret_role+: { [terraformName]+: { operation_rekey: value } },
    } },
    '#withOperationRekeyKeyPair':: { 'function': {
      help:
        |||
          Grant permission to use the KMIP Rekey Key Pair operation
        |||,
    } },
    withOperationRekeyKeyPair(value):: self { resource+: {
      vault_kmip_secret_role+: { [terraformName]+: { operation_rekey_key_pair: value } },
    } },
    '#withOperationRevoke':: { 'function': {
      help:
        |||
          Grant permission to use the KMIP Revoke operation
        |||,
    } },
    withOperationRevoke(value):: self { resource+: {
      vault_kmip_secret_role+: { [terraformName]+: { operation_revoke: value } },
    } },
    '#withOperationRngRetrieve':: { 'function': {
      help:
        |||
          Grant permission to use the KMIP RNG Retrieve operation
        |||,
    } },
    withOperationRngRetrieve(value):: self { resource+: {
      vault_kmip_secret_role+: { [terraformName]+: { operation_rng_retrieve: value } },
    } },
    '#withOperationRngSeed':: { 'function': {
      help:
        |||
          Grant permission to use the KMIP RNG Seed operation
        |||,
    } },
    withOperationRngSeed(value):: self { resource+: {
      vault_kmip_secret_role+: { [terraformName]+: { operation_rng_seed: value } },
    } },
    '#withOperationSign':: { 'function': {
      help:
        |||
          Grant permission to use the KMIP Sign operation
        |||,
    } },
    withOperationSign(value):: self { resource+: {
      vault_kmip_secret_role+: { [terraformName]+: { operation_sign: value } },
    } },
    '#withOperationSignatureVerify':: { 'function': {
      help:
        |||
          Grant permission to use the KMIP Signature Verify operation
        |||,
    } },
    withOperationSignatureVerify(value):: self { resource+: {
      vault_kmip_secret_role+: { [terraformName]+: { operation_signature_verify: value } },
    } },
    '#withPath':: { 'function': {
      help:
        |||
          Path where KMIP backend is mounted
        |||,
    } },
    withPath(value):: self { resource+: {
      vault_kmip_secret_role+: { [terraformName]+: { path: value } },
    } },
    '#withRole':: { 'function': {
      help:
        |||
          Name of the role
        |||,
    } },
    withRole(value):: self { resource+: {
      vault_kmip_secret_role+: { [terraformName]+: { role: value } },
    } },
    '#withScope':: { 'function': {
      help:
        |||
          Name of the scope
        |||,
    } },
    withScope(value):: self { resource+: {
      vault_kmip_secret_role+: { [terraformName]+: { scope: value } },
    } },
    '#withTlsClientKeyBits':: { 'function': {
      help:
        |||
          Client certificate key bits, valid values depend on key type
        |||,
    } },
    withTlsClientKeyBits(value):: self { resource+: {
      vault_kmip_secret_role+: { [terraformName]+: { tls_client_key_bits: value } },
    } },
    '#withTlsClientKeyType':: { 'function': {
      help:
        |||
          Client certificate key type, rsa or ec
        |||,
    } },
    withTlsClientKeyType(value):: self { resource+: {
      vault_kmip_secret_role+: { [terraformName]+: { tls_client_key_type: value } },
    } },
    '#withTlsClientTtl':: { 'function': {
      help:
        |||
          Client certificate TTL in seconds
        |||,
    } },
    withTlsClientTtl(value):: self { resource+: {
      vault_kmip_secret_role+: { [terraformName]+: { tls_client_ttl: value } },
    } },

  }
  ,
  ref(terraformName):: {
    local refSelf = self,
    plain(suffix=''):: '${ vault_kmip_secret_role.%s%s }' % [terraformName, suffix],
    fields:: {
      '#ca':: { 'function': {
        help:
          |||
            Name of the ca to use, if absent use legacy ca
          |||,
      } },
      ca(suffix=''):: refSelf.plain('.ca%s' % suffix),
      id(suffix=''):: refSelf.plain('.id%s' % suffix),
      '#namespace':: { 'function': {
        help:
          |||
            Target namespace. (requires Enterprise)
          |||,
      } },
      namespace(suffix=''):: refSelf.plain('.namespace%s' % suffix),
      '#operation_activate':: { 'function': {
        help:
          |||
            Grant permission to use the KMIP Activate operation
          |||,
      } },
      operation_activate(suffix=''):: refSelf.plain('.operation_activate%s' % suffix),
      '#operation_add_attribute':: { 'function': {
        help:
          |||
            Grant permission to use the KMIP Add Attribute operation
          |||,
      } },
      operation_add_attribute(suffix=''):: refSelf.plain('.operation_add_attribute%s' % suffix),
      '#operation_all':: { 'function': {
        help:
          |||
            Grant all permissions to this role. May not be specified with any other operation_* params
          |||,
      } },
      operation_all(suffix=''):: refSelf.plain('.operation_all%s' % suffix),
      '#operation_create':: { 'function': {
        help:
          |||
            Grant permission to use the KMIP Create operation
          |||,
      } },
      operation_create(suffix=''):: refSelf.plain('.operation_create%s' % suffix),
      '#operation_create_key_pair':: { 'function': {
        help:
          |||
            Grant permission to use the KMIP Create Key Pair operation
          |||,
      } },
      operation_create_key_pair(suffix=''):: refSelf.plain('.operation_create_key_pair%s' % suffix),
      '#operation_decrypt':: { 'function': {
        help:
          |||
            Grant permission to use the KMIP Decrypt operation
          |||,
      } },
      operation_decrypt(suffix=''):: refSelf.plain('.operation_decrypt%s' % suffix),
      '#operation_delete_attribute':: { 'function': {
        help:
          |||
            Grant permission to use the KMIP Delete Attribute operation
          |||,
      } },
      operation_delete_attribute(suffix=''):: refSelf.plain('.operation_delete_attribute%s' % suffix),
      '#operation_destroy':: { 'function': {
        help:
          |||
            Grant permission to use the KMIP Destroy operation
          |||,
      } },
      operation_destroy(suffix=''):: refSelf.plain('.operation_destroy%s' % suffix),
      '#operation_discover_versions':: { 'function': {
        help:
          |||
            Grant permission to use the KMIP Discover Version operation
          |||,
      } },
      operation_discover_versions(suffix=''):: refSelf.plain('.operation_discover_versions%s' % suffix),
      '#operation_encrypt':: { 'function': {
        help:
          |||
            Grant permission to use the KMIP Encrypt operation
          |||,
      } },
      operation_encrypt(suffix=''):: refSelf.plain('.operation_encrypt%s' % suffix),
      '#operation_get':: { 'function': {
        help:
          |||
            Grant permission to use the KMIP Get operation
          |||,
      } },
      operation_get(suffix=''):: refSelf.plain('.operation_get%s' % suffix),
      '#operation_get_attribute_list':: { 'function': {
        help:
          |||
            Grant permission to use the KMIP Get Attribute List operation
          |||,
      } },
      operation_get_attribute_list(suffix=''):: refSelf.plain('.operation_get_attribute_list%s' % suffix),
      '#operation_get_attributes':: { 'function': {
        help:
          |||
            Grant permission to use the KMIP Get Attributes operation
          |||,
      } },
      operation_get_attributes(suffix=''):: refSelf.plain('.operation_get_attributes%s' % suffix),
      '#operation_import':: { 'function': {
        help:
          |||
            Grant permission to use the KMIP Import operation
          |||,
      } },
      operation_import(suffix=''):: refSelf.plain('.operation_import%s' % suffix),
      '#operation_locate':: { 'function': {
        help:
          |||
            Grant permission to use the KMIP Locate operation
          |||,
      } },
      operation_locate(suffix=''):: refSelf.plain('.operation_locate%s' % suffix),
      '#operation_mac':: { 'function': {
        help:
          |||
            Grant permission to use the KMIP MAC operation
          |||,
      } },
      operation_mac(suffix=''):: refSelf.plain('.operation_mac%s' % suffix),
      '#operation_mac_verify':: { 'function': {
        help:
          |||
            Grant permission to use the KMIP MAC Verify operation
          |||,
      } },
      operation_mac_verify(suffix=''):: refSelf.plain('.operation_mac_verify%s' % suffix),
      '#operation_modify_attribute':: { 'function': {
        help:
          |||
            Grant permission to use the KMIP Modify Attribute operation
          |||,
      } },
      operation_modify_attribute(suffix=''):: refSelf.plain('.operation_modify_attribute%s' % suffix),
      '#operation_none':: { 'function': {
        help:
          |||
            Remove all permissions from this role. May not be specified with any other operation_* params
          |||,
      } },
      operation_none(suffix=''):: refSelf.plain('.operation_none%s' % suffix),
      '#operation_query':: { 'function': {
        help:
          |||
            Grant permission to use the KMIP Query operation
          |||,
      } },
      operation_query(suffix=''):: refSelf.plain('.operation_query%s' % suffix),
      '#operation_register':: { 'function': {
        help:
          |||
            Grant permission to use the KMIP Register operation
          |||,
      } },
      operation_register(suffix=''):: refSelf.plain('.operation_register%s' % suffix),
      '#operation_rekey':: { 'function': {
        help:
          |||
            Grant permission to use the KMIP Rekey operation
          |||,
      } },
      operation_rekey(suffix=''):: refSelf.plain('.operation_rekey%s' % suffix),
      '#operation_rekey_key_pair':: { 'function': {
        help:
          |||
            Grant permission to use the KMIP Rekey Key Pair operation
          |||,
      } },
      operation_rekey_key_pair(suffix=''):: refSelf.plain('.operation_rekey_key_pair%s' % suffix),
      '#operation_revoke':: { 'function': {
        help:
          |||
            Grant permission to use the KMIP Revoke operation
          |||,
      } },
      operation_revoke(suffix=''):: refSelf.plain('.operation_revoke%s' % suffix),
      '#operation_rng_retrieve':: { 'function': {
        help:
          |||
            Grant permission to use the KMIP RNG Retrieve operation
          |||,
      } },
      operation_rng_retrieve(suffix=''):: refSelf.plain('.operation_rng_retrieve%s' % suffix),
      '#operation_rng_seed':: { 'function': {
        help:
          |||
            Grant permission to use the KMIP RNG Seed operation
          |||,
      } },
      operation_rng_seed(suffix=''):: refSelf.plain('.operation_rng_seed%s' % suffix),
      '#operation_sign':: { 'function': {
        help:
          |||
            Grant permission to use the KMIP Sign operation
          |||,
      } },
      operation_sign(suffix=''):: refSelf.plain('.operation_sign%s' % suffix),
      '#operation_signature_verify':: { 'function': {
        help:
          |||
            Grant permission to use the KMIP Signature Verify operation
          |||,
      } },
      operation_signature_verify(suffix=''):: refSelf.plain('.operation_signature_verify%s' % suffix),
      '#path':: { 'function': {
        help:
          |||
            Path where KMIP backend is mounted
          |||,
      } },
      path(suffix=''):: refSelf.plain('.path%s' % suffix),
      '#role':: { 'function': {
        help:
          |||
            Name of the role
          |||,
      } },
      role(suffix=''):: refSelf.plain('.role%s' % suffix),
      '#scope':: { 'function': {
        help:
          |||
            Name of the scope
          |||,
      } },
      scope(suffix=''):: refSelf.plain('.scope%s' % suffix),
      '#tls_client_key_bits':: { 'function': {
        help:
          |||
            Client certificate key bits, valid values depend on key type
          |||,
      } },
      tls_client_key_bits(suffix=''):: refSelf.plain('.tls_client_key_bits%s' % suffix),
      '#tls_client_key_type':: { 'function': {
        help:
          |||
            Client certificate key type, rsa or ec
          |||,
      } },
      tls_client_key_type(suffix=''):: refSelf.plain('.tls_client_key_type%s' % suffix),
      '#tls_client_ttl':: { 'function': {
        help:
          |||
            Client certificate TTL in seconds
          |||,
      } },
      tls_client_ttl(suffix=''):: refSelf.plain('.tls_client_ttl%s' % suffix),

    },

  },

}
