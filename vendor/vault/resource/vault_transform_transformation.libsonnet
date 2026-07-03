{
  new(terraformName, name, path):: {
    _type:: 'tf',
    resource+: {
      vault_transform_transformation+: { [terraformName]+: {
        name: name,
        path: path,
      } },
    },
    withAllowedRoles(value):: self {
      resource+: {
        vault_transform_transformation+: { [terraformName]+: { allowed_roles: value } },
      },
    },
    withId(value):: self {
      resource+: {
        vault_transform_transformation+: { [terraformName]+: { id: value } },
      },
    },
    withMaskingCharacter(value):: self {
      resource+: {
        vault_transform_transformation+: { [terraformName]+: { masking_character: value } },
      },
    },
    withTemplate(value):: self {
      resource+: {
        vault_transform_transformation+: { [terraformName]+: { template: value } },
      },
    },
    withTemplates(value):: self {
      resource+: {
        vault_transform_transformation+: { [terraformName]+: { templates: value } },
      },
    },
    withTweakSource(value):: self {
      resource+: {
        vault_transform_transformation+: { [terraformName]+: { tweak_source: value } },
      },
    },
    withName(value):: self {
      resource+: {
        vault_transform_transformation+: { [terraformName]+: { name: value } },
      },
    },
    withNamespace(value):: self {
      resource+: {
        vault_transform_transformation+: { [terraformName]+: { namespace: value } },
      },
    },
    withType(value):: self {
      resource+: {
        vault_transform_transformation+: { [terraformName]+: { type: value } },
      },
    },
    withDeletionAllowed(value):: self {
      resource+: {
        vault_transform_transformation+: { [terraformName]+: { deletion_allowed: value } },
      },
    },
    withPath(value):: self {
      resource+: {
        vault_transform_transformation+: { [terraformName]+: { path: value } },
      },
    },
  },
}
