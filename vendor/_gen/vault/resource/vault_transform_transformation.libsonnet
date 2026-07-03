{
  new(terraformName, name, path):: {
    _type:: 'tf',
    resource+: {
      vault_transform_transformation+: { [terraformName]+: {
        name: name,
        path: path,
      } },
    },
    '#withAllowedRoles': { 'function': { help: |||
      The set of roles allowed to perform this transformation. 
    ||| } },
    withAllowedRoles(value):: self {
      resource+: {
        vault_transform_transformation+: { [terraformName]+: { allowed_roles: value } },
      },
    },
    '#withConvergent': { 'function': { help: |||
      If true, multiple transformations of the same plaintext will produce the same ciphertext. Only used when type is "tokenization". Cannot be changed after creation. 
    ||| } },
    withConvergent(value):: self {
      resource+: {
        vault_transform_transformation+: { [terraformName]+: { convergent: value } },
      },
    },
    '#withDeletionAllowed': { 'function': { help: |||
      If true, this transform can be deleted. Otherwise deletion is blocked while this value remains false. 
    ||| } },
    withDeletionAllowed(value):: self {
      resource+: {
        vault_transform_transformation+: { [terraformName]+: { deletion_allowed: value } },
      },
    },
    withId(value):: self {
      resource+: {
        vault_transform_transformation+: { [terraformName]+: { id: value } },
      },
    },
    '#withMappingMode': { 'function': { help: |||
      Specifies the mapping mode for stored values. Only used when type is "tokenization". Cannot be changed after creation. 
    ||| } },
    withMappingMode(value):: self {
      resource+: {
        vault_transform_transformation+: { [terraformName]+: { mapping_mode: value } },
      },
    },
    '#withMaskingCharacter': { 'function': { help: |||
      The character used to replace data when in masking mode 
    ||| } },
    withMaskingCharacter(value):: self {
      resource+: {
        vault_transform_transformation+: { [terraformName]+: { masking_character: value } },
      },
    },
    '#withName': { 'function': { help: |||
      The name of the transformation. 
    ||| } },
    withName(value):: self {
      resource+: {
        vault_transform_transformation+: { [terraformName]+: { name: value } },
      },
    },
    '#withNamespace': { 'function': { help: |||
      Target namespace. (requires Enterprise) 
    ||| } },
    withNamespace(value):: self {
      resource+: {
        vault_transform_transformation+: { [terraformName]+: { namespace: value } },
      },
    },
    '#withPath': { 'function': { help: |||
      The mount path for a back-end, for example, the path given in "$ vault auth enable -path=my-aws aws". 
    ||| } },
    withPath(value):: self {
      resource+: {
        vault_transform_transformation+: { [terraformName]+: { path: value } },
      },
    },
    '#withStores': { 'function': { help: |||
      List of stores to use for tokenization state. Only used when type is "tokenization". Cannot be changed after creation. 
    ||| } },
    withStores(value):: self {
      resource+: {
        vault_transform_transformation+: { [terraformName]+: { stores: value } },
      },
    },
    '#withTemplate': { 'function': { help: |||
      The name of the template to use. 
    ||| } },
    withTemplate(value):: self {
      resource+: {
        vault_transform_transformation+: { [terraformName]+: { template: value } },
      },
    },
    '#withTemplates': { 'function': { help: |||
      Templates configured for transformation. 
    ||| } },
    withTemplates(value):: self {
      resource+: {
        vault_transform_transformation+: { [terraformName]+: { templates: value } },
      },
    },
    '#withTweakSource': { 'function': { help: |||
      The source of where the tweak value comes from. Only valid when in FPE mode. 
    ||| } },
    withTweakSource(value):: self {
      resource+: {
        vault_transform_transformation+: { [terraformName]+: { tweak_source: value } },
      },
    },
    '#withType': { 'function': { help: |||
      The type of transformation to perform. 
    ||| } },
    withType(value):: self {
      resource+: {
        vault_transform_transformation+: { [terraformName]+: { type: value } },
      },
    },
  },
}
