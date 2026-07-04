{
  local outerSelf = self,
  new(terraformName, entity_id, policies):: self.functions(terraformName) {
    ref():: outerSelf.ref(terraformName),
    _type:: 'tf',
    resource+: {
      vault_identity_entity_policies+: {
        [terraformName]+: {
          entity_id: entity_id,
          policies: policies,
        },
      },
    },
  },
  functions(terraformName):: {
    '#withEntityId':: { 'function': { help: |||
      ID of the entity.
    ||| } },
    withEntityId(value):: self {
      resource+: {
        vault_identity_entity_policies+: { [terraformName]+: { entity_id: value } },
      },
    },
    '#withExclusive':: { 'function': { help: |||
      Should the resource manage policies exclusively
    ||| } },
    withExclusive(value):: self {
      resource+: {
        vault_identity_entity_policies+: { [terraformName]+: { exclusive: value } },
      },
    },
    withId(value):: self {
      resource+: {
        vault_identity_entity_policies+: { [terraformName]+: { id: value } },
      },
    },
    '#withNamespace':: { 'function': { help: |||
      Target namespace. (requires Enterprise)
    ||| } },
    withNamespace(value):: self {
      resource+: {
        vault_identity_entity_policies+: { [terraformName]+: { namespace: value } },
      },
    },
    '#withPolicies':: { 'function': { help: |||
      Policies to be tied to the entity.
    ||| } },
    withPolicies(value):: self {
      resource+: {
        vault_identity_entity_policies+: { [terraformName]+: { policies: value } },
      },
    },
  },
  ref(terraformName):: {
    local refSelf = self,
    plain(suffix=''):: '${ vault_identity_entity_policies.%s%s }' % [terraformName, suffix],
    fields:: {
      '#entity_id':: { 'function': { help: |||
        ID of the entity.
      ||| } },
      entity_id(suffix=''):: refSelf.plain('.entity_id%s' % suffix),
      '#entity_name':: { 'function': { help: |||
        Name of the entity.
      ||| } },
      entity_name(suffix=''):: refSelf.plain('.entity_name%s' % suffix),
      '#exclusive':: { 'function': { help: |||
        Should the resource manage policies exclusively
      ||| } },
      exclusive(suffix=''):: refSelf.plain('.exclusive%s' % suffix),
      id(suffix=''):: refSelf.plain('.id%s' % suffix),
      '#namespace':: { 'function': { help: |||
        Target namespace. (requires Enterprise)
      ||| } },
      namespace(suffix=''):: refSelf.plain('.namespace%s' % suffix),
      '#policies':: { 'function': { help: |||
        Policies to be tied to the entity.
      ||| } },
      policies(suffix=''):: refSelf.plain('.policies%s' % suffix),
    },
  },
}
