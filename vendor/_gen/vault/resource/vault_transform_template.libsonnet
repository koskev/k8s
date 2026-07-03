{
new(terraformName, name, path):: {
_type:: 'tf',
resource+: {
vault_transform_template+: { [terraformName]+: {
'name': name,
'path': path,
}}},
'#withAlphabet': { 'function': { help: |||
 The alphabet to use for this template. This is only used during FPE transformations. 
||| } },
withAlphabet(value):: self {
resource+: {
            vault_transform_template+: { [terraformName]+: { 'alphabet': value } },
        },
},
'#withDecodeFormats': { 'function': { help: |||
 The map of regular expression templates used to customize decoded outputs.
Only applicable to FPE transformations. 
||| } },
withDecodeFormats(value):: self {
resource+: {
            vault_transform_template+: { [terraformName]+: { 'decode_formats': value } },
        },
},
'#withEncodeFormat': { 'function': { help: |||
 The regular expression template used for encoding values.
Only applicable to FPE transformations. 
||| } },
withEncodeFormat(value):: self {
resource+: {
            vault_transform_template+: { [terraformName]+: { 'encode_format': value } },
        },
},
withId(value):: self {
resource+: {
            vault_transform_template+: { [terraformName]+: { 'id': value } },
        },
},
'#withName': { 'function': { help: |||
 The name of the template. 
||| } },
withName(value):: self {
resource+: {
            vault_transform_template+: { [terraformName]+: { 'name': value } },
        },
},
'#withNamespace': { 'function': { help: |||
 Target namespace. (requires Enterprise) 
||| } },
withNamespace(value):: self {
resource+: {
            vault_transform_template+: { [terraformName]+: { 'namespace': value } },
        },
},
'#withPath': { 'function': { help: |||
 The mount path for a back-end, for example, the path given in "$ vault auth enable -path=my-aws aws". 
||| } },
withPath(value):: self {
resource+: {
            vault_transform_template+: { [terraformName]+: { 'path': value } },
        },
},
'#withPattern': { 'function': { help: |||
 The pattern used for matching. Currently, only regular expression pattern is supported. 
||| } },
withPattern(value):: self {
resource+: {
            vault_transform_template+: { [terraformName]+: { 'pattern': value } },
        },
},
'#withType': { 'function': { help: |||
 The pattern type to use for match detection. Currently, only regex is supported. 
||| } },
withType(value):: self {
resource+: {
            vault_transform_template+: { [terraformName]+: { 'type': value } },
        },
},
},
}