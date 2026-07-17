{
  local outerSelf = self,
  new(terraformName, name, path):: self.functions(terraformName) + {
    _type:: 'tf',
    ref():: outerSelf.ref(terraformName),
    resource+: {
      vault_transform_transformation+: { [terraformName]+: {
        name: name,
        path: path,
      } },
    },
  }
  ,
  functions(terraformName):: {
    withForEach(value):: self { resource+: {
      vault_transform_transformation+: { [terraformName]+: { for_each: value } },
    } },
    withDependsOn(value):: self { resource+: {
      vault_transform_transformation+: { [terraformName]+: { depends_on: value } },
    } },
    withCount(value):: self { resource+: {
      vault_transform_transformation+: { [terraformName]+: { count: value } },
    } },
    withLifecycle(value):: self { resource+: {
      vault_transform_transformation+: { [terraformName]+: { lifecycle: value } },
    } },
    withProvider(value):: self { resource+: {
      vault_transform_transformation+: { [terraformName]+: { provider: value } },
    } },
    withProviders(value):: self { resource+: {
      vault_transform_transformation+: { [terraformName]+: { providers: value } },
    } },
    addCustomData(name, value):: self { resource+: {
      vault_transform_transformation+: { [terraformName]+: { [name]: value } },
    } },
    '#withAllowedRoles':: { 'function': {
      help:
        |||
          The set of roles allowed to perform this transformation.
        |||,
    } },
    withAllowedRoles(value):: self { resource+: {
      vault_transform_transformation+: { [terraformName]+: { allowed_roles: value } },
    } },
    '#withConvergent':: { 'function': {
      help:
        |||
          If true, multiple transformations of the same plaintext will produce the same ciphertext. Only used when type is "tokenization". Cannot be changed after creation.
        |||,
    } },
    withConvergent(value):: self { resource+: {
      vault_transform_transformation+: { [terraformName]+: { convergent: value } },
    } },
    '#withDeletionAllowed':: { 'function': {
      help:
        |||
          If true, this transform can be deleted. Otherwise deletion is blocked while this value remains false.
        |||,
    } },
    withDeletionAllowed(value):: self { resource+: {
      vault_transform_transformation+: { [terraformName]+: { deletion_allowed: value } },
    } },
    withId(value):: self { resource+: {
      vault_transform_transformation+: { [terraformName]+: { id: value } },
    } },
    '#withMappingMode':: { 'function': {
      help:
        |||
          Specifies the mapping mode for stored values. Only used when type is "tokenization". Cannot be changed after creation.
        |||,
    } },
    withMappingMode(value):: self { resource+: {
      vault_transform_transformation+: { [terraformName]+: { mapping_mode: value } },
    } },
    '#withMaskingCharacter':: { 'function': {
      help:
        |||
          The character used to replace data when in masking mode
        |||,
    } },
    withMaskingCharacter(value):: self { resource+: {
      vault_transform_transformation+: { [terraformName]+: { masking_character: value } },
    } },
    '#withName':: { 'function': {
      help:
        |||
          The name of the transformation.
        |||,
    } },
    withName(value):: self { resource+: {
      vault_transform_transformation+: { [terraformName]+: { name: value } },
    } },
    '#withNamespace':: { 'function': {
      help:
        |||
          Target namespace. (requires Enterprise)
        |||,
    } },
    withNamespace(value):: self { resource+: {
      vault_transform_transformation+: { [terraformName]+: { namespace: value } },
    } },
    '#withPath':: { 'function': {
      help:
        |||
          The mount path for a back-end, for example, the path given in "$ vault auth enable -path=my-aws aws".
        |||,
    } },
    withPath(value):: self { resource+: {
      vault_transform_transformation+: { [terraformName]+: { path: value } },
    } },
    '#withStores':: { 'function': {
      help:
        |||
          List of stores to use for tokenization state. Only used when type is "tokenization". Cannot be changed after creation.
        |||,
    } },
    withStores(value):: self { resource+: {
      vault_transform_transformation+: { [terraformName]+: { stores: value } },
    } },
    '#withTemplate':: { 'function': {
      help:
        |||
          The name of the template to use.
        |||,
    } },
    withTemplate(value):: self { resource+: {
      vault_transform_transformation+: { [terraformName]+: { template: value } },
    } },
    '#withTemplates':: { 'function': {
      help:
        |||
          Templates configured for transformation.
        |||,
    } },
    withTemplates(value):: self { resource+: {
      vault_transform_transformation+: { [terraformName]+: { templates: value } },
    } },
    '#withTweakSource':: { 'function': {
      help:
        |||
          The source of where the tweak value comes from. Only valid when in FPE mode.
        |||,
    } },
    withTweakSource(value):: self { resource+: {
      vault_transform_transformation+: { [terraformName]+: { tweak_source: value } },
    } },
    '#withType':: { 'function': {
      help:
        |||
          The type of transformation to perform.
        |||,
    } },
    withType(value):: self { resource+: {
      vault_transform_transformation+: { [terraformName]+: { type: value } },
    } },

  }
  ,
  ref(terraformName):: {
    local refSelf = self,
    plain(suffix=''):: '${ vault_transform_transformation.%s%s }' % [terraformName, suffix],
    fields:: {
      '#allowed_roles':: { 'function': {
        help:
          |||
            The set of roles allowed to perform this transformation.
          |||,
      } },
      allowed_roles(suffix=''):: refSelf.plain('.allowed_roles%s' % suffix),
      '#convergent':: { 'function': {
        help:
          |||
            If true, multiple transformations of the same plaintext will produce the same ciphertext. Only used when type is "tokenization". Cannot be changed after creation.
          |||,
      } },
      convergent(suffix=''):: refSelf.plain('.convergent%s' % suffix),
      '#deletion_allowed':: { 'function': {
        help:
          |||
            If true, this transform can be deleted. Otherwise deletion is blocked while this value remains false.
          |||,
      } },
      deletion_allowed(suffix=''):: refSelf.plain('.deletion_allowed%s' % suffix),
      id(suffix=''):: refSelf.plain('.id%s' % suffix),
      '#mapping_mode':: { 'function': {
        help:
          |||
            Specifies the mapping mode for stored values. Only used when type is "tokenization". Cannot be changed after creation.
          |||,
      } },
      mapping_mode(suffix=''):: refSelf.plain('.mapping_mode%s' % suffix),
      '#masking_character':: { 'function': {
        help:
          |||
            The character used to replace data when in masking mode
          |||,
      } },
      masking_character(suffix=''):: refSelf.plain('.masking_character%s' % suffix),
      '#name':: { 'function': {
        help:
          |||
            The name of the transformation.
          |||,
      } },
      name(suffix=''):: refSelf.plain('.name%s' % suffix),
      '#namespace':: { 'function': {
        help:
          |||
            Target namespace. (requires Enterprise)
          |||,
      } },
      namespace(suffix=''):: refSelf.plain('.namespace%s' % suffix),
      '#path':: { 'function': {
        help:
          |||
            The mount path for a back-end, for example, the path given in "$ vault auth enable -path=my-aws aws".
          |||,
      } },
      path(suffix=''):: refSelf.plain('.path%s' % suffix),
      '#stores':: { 'function': {
        help:
          |||
            List of stores to use for tokenization state. Only used when type is "tokenization". Cannot be changed after creation.
          |||,
      } },
      stores(suffix=''):: refSelf.plain('.stores%s' % suffix),
      '#template':: { 'function': {
        help:
          |||
            The name of the template to use.
          |||,
      } },
      template(suffix=''):: refSelf.plain('.template%s' % suffix),
      '#templates':: { 'function': {
        help:
          |||
            Templates configured for transformation.
          |||,
      } },
      templates(suffix=''):: refSelf.plain('.templates%s' % suffix),
      '#tweak_source':: { 'function': {
        help:
          |||
            The source of where the tweak value comes from. Only valid when in FPE mode.
          |||,
      } },
      tweak_source(suffix=''):: refSelf.plain('.tweak_source%s' % suffix),
      '#type':: { 'function': {
        help:
          |||
            The type of transformation to perform.
          |||,
      } },
      type(suffix=''):: refSelf.plain('.type%s' % suffix),

    },

  },

}
