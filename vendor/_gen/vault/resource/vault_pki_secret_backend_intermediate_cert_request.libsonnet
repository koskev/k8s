{
new(terraformName, backend, common_name, type):: self.functions(terraformName) {
_type:: 'tf',
resource+: {
vault_pki_secret_backend_intermediate_cert_request+: { [terraformName]+: {
'backend': backend,
'common_name': common_name,
'type': type,
},
}}},
functions(terraformName):: {
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
'#withPrivateKeyFormat':: { 'function': { help: |||
 The private key format. 
||| } },
withPrivateKeyFormat(value):: self {
resource+: {
            vault_pki_secret_backend_intermediate_cert_request+: { [terraformName]+: { 'private_key_format': value } },
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
ref(terraformName):: {
local refSelf = self,
plain(suffix=''):: '${ vault_pki_secret_backend_intermediate_cert_request.%s%s }' % [terraformName, suffix],
fields:: {
'#add_basic_constraints':: { 'function': { help: |||
 Set 'CA: true' in a Basic Constraints extension. Only needed as
a workaround in some compatibility scenarios with Active Directory Certificate Services. 
||| } },
'add_basic_constraints'(suffix=''):: refSelf.plain('.add_basic_constraints%s' % suffix),
'#alt_names':: { 'function': { help: |||
 List of alternative names. 
||| } },
'alt_names'(suffix=''):: refSelf.plain('.alt_names%s' % suffix),
'#backend':: { 'function': { help: |||
 The PKI secret backend the resource belongs to. 
||| } },
'backend'(suffix=''):: refSelf.plain('.backend%s' % suffix),
'#common_name':: { 'function': { help: |||
 CN of intermediate to create. 
||| } },
'common_name'(suffix=''):: refSelf.plain('.common_name%s' % suffix),
'#country':: { 'function': { help: |||
 The country. 
||| } },
'country'(suffix=''):: refSelf.plain('.country%s' % suffix),
'#csr':: { 'function': { help: |||
 The CSR. 
||| } },
'csr'(suffix=''):: refSelf.plain('.csr%s' % suffix),
'#exclude_cn_from_sans':: { 'function': { help: |||
 Flag to exclude CN from SANs. 
||| } },
'exclude_cn_from_sans'(suffix=''):: refSelf.plain('.exclude_cn_from_sans%s' % suffix),
'#format':: { 'function': { help: |||
 The format of data. 
||| } },
'format'(suffix=''):: refSelf.plain('.format%s' % suffix),
'id'(suffix=''):: refSelf.plain('.id%s' % suffix),
'#ip_sans':: { 'function': { help: |||
 List of alternative IPs. 
||| } },
'ip_sans'(suffix=''):: refSelf.plain('.ip_sans%s' % suffix),
'#key_bits':: { 'function': { help: |||
 The number of bits to use. 
||| } },
'key_bits'(suffix=''):: refSelf.plain('.key_bits%s' % suffix),
'#key_id':: { 'function': { help: |||
 The ID of the generated key. 
||| } },
'key_id'(suffix=''):: refSelf.plain('.key_id%s' % suffix),
'#key_name':: { 'function': { help: |||
 When a new key is created with this request, optionally specifies the name for this. 
||| } },
'key_name'(suffix=''):: refSelf.plain('.key_name%s' % suffix),
'#key_ref':: { 'function': { help: |||
 Specifies the key to use for generating this request. 
||| } },
'key_ref'(suffix=''):: refSelf.plain('.key_ref%s' % suffix),
'#key_type':: { 'function': { help: |||
 The desired key type. 
||| } },
'key_type'(suffix=''):: refSelf.plain('.key_type%s' % suffix),
'#key_usage':: { 'function': { help: |||
 Specify the key usages to encode in the generated certificate. 
||| } },
'key_usage'(suffix=''):: refSelf.plain('.key_usage%s' % suffix),
'#locality':: { 'function': { help: |||
 The locality. 
||| } },
'locality'(suffix=''):: refSelf.plain('.locality%s' % suffix),
'#managed_key_id':: { 'function': { help: |||
 The ID of the previously configured managed key. 
||| } },
'managed_key_id'(suffix=''):: refSelf.plain('.managed_key_id%s' % suffix),
'#managed_key_name':: { 'function': { help: |||
 The name of the previously configured managed key. 
||| } },
'managed_key_name'(suffix=''):: refSelf.plain('.managed_key_name%s' % suffix),
'#namespace':: { 'function': { help: |||
 Target namespace. (requires Enterprise) 
||| } },
'namespace'(suffix=''):: refSelf.plain('.namespace%s' % suffix),
'#organization':: { 'function': { help: |||
 The organization. 
||| } },
'organization'(suffix=''):: refSelf.plain('.organization%s' % suffix),
'#other_sans':: { 'function': { help: |||
 List of other SANs. 
||| } },
'other_sans'(suffix=''):: refSelf.plain('.other_sans%s' % suffix),
'#ou':: { 'function': { help: |||
 The organization unit. 
||| } },
'ou'(suffix=''):: refSelf.plain('.ou%s' % suffix),
'#postal_code':: { 'function': { help: |||
 The postal code. 
||| } },
'postal_code'(suffix=''):: refSelf.plain('.postal_code%s' % suffix),
'#private_key':: { 'function': { help: |||
 The private key. 
||| } },
'private_key'(suffix=''):: refSelf.plain('.private_key%s' % suffix),
'#private_key_format':: { 'function': { help: |||
 The private key format. 
||| } },
'private_key_format'(suffix=''):: refSelf.plain('.private_key_format%s' % suffix),
'#private_key_type':: { 'function': { help: |||
 The private key type. 
||| } },
'private_key_type'(suffix=''):: refSelf.plain('.private_key_type%s' % suffix),
'#province':: { 'function': { help: |||
 The province. 
||| } },
'province'(suffix=''):: refSelf.plain('.province%s' % suffix),
'#serial_number':: { 'function': { help: |||
 The requested Subject's named serial number. 
||| } },
'serial_number'(suffix=''):: refSelf.plain('.serial_number%s' % suffix),
'#signature_bits':: { 'function': { help: |||
 The number of bits to use in the signature algorithm. 
||| } },
'signature_bits'(suffix=''):: refSelf.plain('.signature_bits%s' % suffix),
'#street_address':: { 'function': { help: |||
 The street address. 
||| } },
'street_address'(suffix=''):: refSelf.plain('.street_address%s' % suffix),
'#type':: { 'function': { help: |||
 Type of intermediate to create. Must be either "existing", "exported", "internal" or "kms" 
||| } },
'type'(suffix=''):: refSelf.plain('.type%s' % suffix),
'#uri_sans':: { 'function': { help: |||
 List of alternative URIs. 
||| } },
'uri_sans'(suffix=''):: refSelf.plain('.uri_sans%s' % suffix),
},
},
}