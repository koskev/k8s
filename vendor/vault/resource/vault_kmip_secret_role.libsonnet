{
  new(terraformName, scope, path, role):: {
    _type:: 'tf',
    resource+: {
      vault_kmip_secret_role+: { [terraformName]+: {
        scope: scope,
        path: path,
        role: role,
      } },
    },
    withScope(value):: self {
      resource+: {
        vault_kmip_secret_role+: { [terraformName]+: { scope: value } },
      },
    },
    withTlsClientKeyType(value):: self {
      resource+: {
        vault_kmip_secret_role+: { [terraformName]+: { tls_client_key_type: value } },
      },
    },
    withOperationNone(value):: self {
      resource+: {
        vault_kmip_secret_role+: { [terraformName]+: { operation_none: value } },
      },
    },
    withOperationEncrypt(value):: self {
      resource+: {
        vault_kmip_secret_role+: { [terraformName]+: { operation_encrypt: value } },
      },
    },
    withOperationGetAttributes(value):: self {
      resource+: {
        vault_kmip_secret_role+: { [terraformName]+: { operation_get_attributes: value } },
      },
    },
    withPath(value):: self {
      resource+: {
        vault_kmip_secret_role+: { [terraformName]+: { path: value } },
      },
    },
    withOperationRekeyKeyPair(value):: self {
      resource+: {
        vault_kmip_secret_role+: { [terraformName]+: { operation_rekey_key_pair: value } },
      },
    },
    withOperationMac(value):: self {
      resource+: {
        vault_kmip_secret_role+: { [terraformName]+: { operation_mac: value } },
      },
    },
    withId(value):: self {
      resource+: {
        vault_kmip_secret_role+: { [terraformName]+: { id: value } },
      },
    },
    withOperationSignatureVerify(value):: self {
      resource+: {
        vault_kmip_secret_role+: { [terraformName]+: { operation_signature_verify: value } },
      },
    },
    withOperationGetAttributeList(value):: self {
      resource+: {
        vault_kmip_secret_role+: { [terraformName]+: { operation_get_attribute_list: value } },
      },
    },
    withOperationCreate(value):: self {
      resource+: {
        vault_kmip_secret_role+: { [terraformName]+: { operation_create: value } },
      },
    },
    withOperationAll(value):: self {
      resource+: {
        vault_kmip_secret_role+: { [terraformName]+: { operation_all: value } },
      },
    },
    withOperationRevoke(value):: self {
      resource+: {
        vault_kmip_secret_role+: { [terraformName]+: { operation_revoke: value } },
      },
    },
    withOperationMacVerify(value):: self {
      resource+: {
        vault_kmip_secret_role+: { [terraformName]+: { operation_mac_verify: value } },
      },
    },
    withOperationRegister(value):: self {
      resource+: {
        vault_kmip_secret_role+: { [terraformName]+: { operation_register: value } },
      },
    },
    withOperationRngSeed(value):: self {
      resource+: {
        vault_kmip_secret_role+: { [terraformName]+: { operation_rng_seed: value } },
      },
    },
    withOperationAddAttribute(value):: self {
      resource+: {
        vault_kmip_secret_role+: { [terraformName]+: { operation_add_attribute: value } },
      },
    },
    withNamespace(value):: self {
      resource+: {
        vault_kmip_secret_role+: { [terraformName]+: { namespace: value } },
      },
    },
    withOperationRngRetrieve(value):: self {
      resource+: {
        vault_kmip_secret_role+: { [terraformName]+: { operation_rng_retrieve: value } },
      },
    },
    withTlsClientTtl(value):: self {
      resource+: {
        vault_kmip_secret_role+: { [terraformName]+: { tls_client_ttl: value } },
      },
    },
    withOperationImport(value):: self {
      resource+: {
        vault_kmip_secret_role+: { [terraformName]+: { operation_import: value } },
      },
    },
    withOperationLocate(value):: self {
      resource+: {
        vault_kmip_secret_role+: { [terraformName]+: { operation_locate: value } },
      },
    },
    withOperationCreateKeyPair(value):: self {
      resource+: {
        vault_kmip_secret_role+: { [terraformName]+: { operation_create_key_pair: value } },
      },
    },
    withOperationGet(value):: self {
      resource+: {
        vault_kmip_secret_role+: { [terraformName]+: { operation_get: value } },
      },
    },
    withOperationDecrypt(value):: self {
      resource+: {
        vault_kmip_secret_role+: { [terraformName]+: { operation_decrypt: value } },
      },
    },
    withOperationDiscoverVersions(value):: self {
      resource+: {
        vault_kmip_secret_role+: { [terraformName]+: { operation_discover_versions: value } },
      },
    },
    withOperationRekey(value):: self {
      resource+: {
        vault_kmip_secret_role+: { [terraformName]+: { operation_rekey: value } },
      },
    },
    withOperationActivate(value):: self {
      resource+: {
        vault_kmip_secret_role+: { [terraformName]+: { operation_activate: value } },
      },
    },
    withOperationQuery(value):: self {
      resource+: {
        vault_kmip_secret_role+: { [terraformName]+: { operation_query: value } },
      },
    },
    withOperationDestroy(value):: self {
      resource+: {
        vault_kmip_secret_role+: { [terraformName]+: { operation_destroy: value } },
      },
    },
    withOperationSign(value):: self {
      resource+: {
        vault_kmip_secret_role+: { [terraformName]+: { operation_sign: value } },
      },
    },
    withOperationModifyAttribute(value):: self {
      resource+: {
        vault_kmip_secret_role+: { [terraformName]+: { operation_modify_attribute: value } },
      },
    },
    withCa(value):: self {
      resource+: {
        vault_kmip_secret_role+: { [terraformName]+: { ca: value } },
      },
    },
    withTlsClientKeyBits(value):: self {
      resource+: {
        vault_kmip_secret_role+: { [terraformName]+: { tls_client_key_bits: value } },
      },
    },
    withOperationDeleteAttribute(value):: self {
      resource+: {
        vault_kmip_secret_role+: { [terraformName]+: { operation_delete_attribute: value } },
      },
    },
    withRole(value):: self {
      resource+: {
        vault_kmip_secret_role+: { [terraformName]+: { role: value } },
      },
    },
  },
}
