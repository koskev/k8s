{
new(terraformName, backend, common_name, type):: {
_type:: 'tf',
resource+: {
vault_pki_secret_backend_intermediate_cert_request+: { [terraformName]+: {
'backend': backend,
'common_name': common_name,
'type': type,
}}},
'#withAddBasicConstraints':: { 'function': { help: |||
 Set 'CA: true' in a Basic Constraints extension. Only needed as
a workaround in some compatibility scenarios with Active Directory Certificate Services. 
||| } },
withAddBasicConstraints(value):: self {
resource+: {
            vault_pki_secret_backend_intermediate_cert_request+: { [terraformName]+: { 'add_basic_constraints': value } },
        },
},
'#withAltNames':: { 'function': { help: |||
 List of alternative names. 
||| } },
withAltNames(value):: self {
resource+: {
            vault_pki_secret_backend_intermediate_cert_request+: { [terraformName]+: { 'alt_names': value } },
        },
},
'#withBackend':: { 'function': { help: |||
 The PKI secret backend the resource belongs to. 
||| } },
withBackend(value):: self {
resource+: {
            vault_pki_secret_backend_intermediate_cert_request+: { [terraformName]+: { 'backend': value } },
        },
},
'#withCommonName':: { 'function': { help: |||
 CN of intermediate to create. 
||| } },
withCommonName(value):: self {
resource+: {
            vault_pki_secret_backend_intermediate_cert_request+: { [terraformName]+: { 'common_name': value } },
        },
},
'#withCountry':: { 'function': { help: |||
 The country. 
||| } },
withCountry(value):: self {
resource+: {
            vault_pki_secret_backend_intermediate_cert_request+: { [terraformName]+: { 'country': value } },
        },
},
'#withCsr':: { 'function': { help: |||
 The CSR. 
||| } },
withCsr(value):: self {
resource+: {
            vault_pki_secret_backend_intermediate_cert_request+: { [terraformName]+: { 'csr': value } },
        },
},
'#withExcludeCnFromSans':: { 'function': { help: |||
 Flag to exclude CN from SANs. 
||| } },
withExcludeCnFromSans(value):: self {
resource+: {
            vault_pki_secret_backend_intermediate_cert_request+: { [terraformName]+: { 'exclude_cn_from_sans': value } },
        },
},
'#withFormat':: { 'function': { help: |||
 The format of data. 
||| } },
withFormat(value):: self {
resource+: {
            vault_pki_secret_backend_intermediate_cert_request+: { [terraformName]+: { 'format': value } },
        },
},
withId(value):: self {
resource+: {
            vault_pki_secret_backend_intermediate_cert_request+: { [terraformName]+: { 'id': value } },
        },
},
'#withIpSans':: { 'function': { help: |||
 List of alternative IPs. 
||| } },
withIpSans(value):: self {
resource+: {
            vault_pki_secret_backend_intermediate_cert_request+: { [terraformName]+: { 'ip_sans': value } },
        },
},
'#withKeyBits':: { 'function': { help: |||
 The number of bits to use. 
||| } },
withKeyBits(value):: self {
resource+: {
            vault_pki_secret_backend_intermediate_cert_request+: { [terraformName]+: { 'key_bits': value } },
        },
},
'#withKeyId':: { 'function': { help: |||
 The ID of the generated key. 
||| } },
withKeyId(value):: self {
resource+: {
            vault_pki_secret_backend_intermediate_cert_request+: { [terraformName]+: { 'key_id': value } },
        },
},
'#withKeyName':: { 'function': { help: |||
 When a new key is created with this request, optionally specifies the name for this. 
||| } },
withKeyName(value):: self {
resource+: {
            vault_pki_secret_backend_intermediate_cert_request+: { [terraformName]+: { 'key_name': value } },
        },
},
'#withKeyRef':: { 'function': { help: |||
 Specifies the key to use for generating this request. 
||| } },
withKeyRef(value):: self {
resource+: {
            vault_pki_secret_backend_intermediate_cert_request+: { [terraformName]+: { 'key_ref': value } },
        },
},
'#withKeyType':: { 'function': { help: |||
 The desired key type. 
||| } },
withKeyType(value):: self {
resource+: {
            vault_pki_secret_backend_intermediate_cert_request+: { [terraformName]+: { 'key_type': value } },
        },
},
'#withKeyUsage':: { 'function': { help: |||
 Specify the key usages to encode in the generated certificate. 
||| } },
withKeyUsage(value):: self {
resource+: {
            vault_pki_secret_backend_intermediate_cert_request+: { [terraformName]+: { 'key_usage': value } },
        },
},
'#withLocality':: { 'function': { help: |||
 The locality. 
||| } },
withLocality(value):: self {
resource+: {
            vault_pki_secret_backend_intermediate_cert_request+: { [terraformName]+: { 'locality': value } },
        },
},
'#withManagedKeyId':: { 'function': { help: |||
 The ID of the previously configured managed key. 
||| } },
withManagedKeyId(value):: self {
resource+: {
            vault_pki_secret_backend_intermediate_cert_request+: { [terraformName]+: { 'managed_key_id': value } },
        },
},
'#withManagedKeyName':: { 'function': { help: |||
 The name of the previously configured managed key. 
||| } },
withManagedKeyName(value):: self {
resource+: {
            vault_pki_secret_backend_intermediate_cert_request+: { [terraformName]+: { 'managed_key_name': value } },
        },
},
'#withNamespace':: { 'function': { help: |||
 Target namespace. (requires Enterprise) 
||| } },
withNamespace(value):: self {
resource+: {
            vault_pki_secret_backend_intermediate_cert_request+: { [terraformName]+: { 'namespace': value } },
        },
},
'#withOrganization':: { 'function': { help: |||
 The organization. 
||| } },
withOrganization(value):: self {
resource+: {
            vault_pki_secret_backend_intermediate_cert_request+: { [terraformName]+: { 'organization': value } },
        },
},
'#withOtherSans':: { 'function': { help: |||
 List of other SANs. 
||| } },
withOtherSans(value):: self {
resource+: {
            vault_pki_secret_backend_intermediate_cert_request+: { [terraformName]+: { 'other_sans': value } },
        },
},
'#withOu':: { 'function': { help: |||
 The organization unit. 
||| } },
withOu(value):: self {
resource+: {
            vault_pki_secret_backend_intermediate_cert_request+: { [terraformName]+: { 'ou': value } },
        },
},
'#withPostalCode':: { 'function': { help: |||
 The postal code. 
||| } },
withPostalCode(value):: self {
resource+: {
            vault_pki_secret_backend_intermediate_cert_request+: { [terraformName]+: { 'postal_code': value } },
        },
},
'#withPrivateKey':: { 'function': { help: |||
 The private key. 
||| } },
withPrivateKey(value):: self {
resource+: {
            vault_pki_secret_backend_intermediate_cert_request+: { [terraformName]+: { 'private_key': value } },
        },
},
'#withPrivateKeyFormat':: { 'function': { help: |||
 The private key format. 
||| } },
withPrivateKeyFormat(value):: self {
resource+: {
            vault_pki_secret_backend_intermediate_cert_request+: { [terraformName]+: { 'private_key_format': value } },
        },
},
'#withPrivateKeyType':: { 'function': { help: |||
 The private key type. 
||| } },
withPrivateKeyType(value):: self {
resource+: {
            vault_pki_secret_backend_intermediate_cert_request+: { [terraformName]+: { 'private_key_type': value } },
        },
},
'#withProvince':: { 'function': { help: |||
 The province. 
||| } },
withProvince(value):: self {
resource+: {
            vault_pki_secret_backend_intermediate_cert_request+: { [terraformName]+: { 'province': value } },
        },
},
'#withSerialNumber':: { 'function': { help: |||
 The requested Subject's named serial number. 
||| } },
withSerialNumber(value):: self {
resource+: {
            vault_pki_secret_backend_intermediate_cert_request+: { [terraformName]+: { 'serial_number': value } },
        },
},
'#withSignatureBits':: { 'function': { help: |||
 The number of bits to use in the signature algorithm. 
||| } },
withSignatureBits(value):: self {
resource+: {
            vault_pki_secret_backend_intermediate_cert_request+: { [terraformName]+: { 'signature_bits': value } },
        },
},
'#withStreetAddress':: { 'function': { help: |||
 The street address. 
||| } },
withStreetAddress(value):: self {
resource+: {
            vault_pki_secret_backend_intermediate_cert_request+: { [terraformName]+: { 'street_address': value } },
        },
},
'#withType':: { 'function': { help: |||
 Type of intermediate to create. Must be either "existing", "exported", "internal" or "kms" 
||| } },
withType(value):: self {
resource+: {
            vault_pki_secret_backend_intermediate_cert_request+: { [terraformName]+: { 'type': value } },
        },
},
'#withUriSans':: { 'function': { help: |||
 List of alternative URIs. 
||| } },
withUriSans(value):: self {
resource+: {
            vault_pki_secret_backend_intermediate_cert_request+: { [terraformName]+: { 'uri_sans': value } },
        },
},
},
}