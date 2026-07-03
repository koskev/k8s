{
  new(terraformName):: self.functions(terraformName) {
    _type:: 'tf',
    resource+: {
      vault_identity_entity+: {
        [terraformName]+: {
        },
      },
    },
  },
  functions(terraformName):: {
    '#withDisabled':: { 'function': { help: |||
      Whether the entity is disabled. Disabled entities' associated tokens cannot be used, but are not revoked. 
    ||| } },
    withDisabled(value):: self {
      resource+: {
        vault_identity_entity+: { [terraformName]+: { disabled: value } },
      },
    },
    '#withExternalPolicies':: { 'function': { help: |||
      Manage policies externally through `vault_identity_entity_policies`. 
    ||| } },
    withExternalPolicies(value):: self {
      resource+: {
        vault_identity_entity+: { [terraformName]+: { external_policies: value } },
      },
    },
    withId(value):: self {
      resource+: {
        vault_identity_entity+: { [terraformName]+: { id: value } },
      },
    },
    '#withMetadata':: { 'function': { help: |||
      Metadata to be associated with the entity. 
    ||| } },
    withMetadata(value):: self {
      resource+: {
        vault_identity_entity+: { [terraformName]+: { metadata: value } },
      },
    },
    '#withName':: { 'function': { help: |||
      Name of the entity. 
    ||| } },
    withName(value):: self {
      resource+: {
        vault_identity_entity+: { [terraformName]+: { name: value } },
      },
    },
    '#withNamespace':: { 'function': { help: |||
      Target namespace. (requires Enterprise) 
    ||| } },
    withNamespace(value):: self {
      resource+: {
        vault_identity_entity+: { [terraformName]+: { namespace: value } },
      },
    },
    '#withPolicies':: { 'function': { help: |||
      Policies to be tied to the entity. 
    ||| } },
    withPolicies(value):: self {
      resource+: {
        vault_identity_entity+: { [terraformName]+: { policies: value } },
      },
    },
  },
  ref(terraformName):: {
    local refSelf = self,
    plain(suffix=''):: '${ vault_identity_entity.%s%s }' % [terraformName, suffix],
    fields:: {
      '#disabled':: { 'function': { help: |||
        Whether the entity is disabled. Disabled entities' associated tokens cannot be used, but are not revoked. 
      ||| } },
      disabled(suffix=''):: refSelf.plain('.disabled%s' % suffix),
      '#external_policies':: { 'function': { help: |||
        Manage policies externally through `vault_identity_entity_policies`. 
      ||| } },
      external_policies(suffix=''):: refSelf.plain('.external_policies%s' % suffix),
      id(suffix=''):: refSelf.plain('.id%s' % suffix),
      '#metadata':: { 'function': { help: |||
        Metadata to be associated with the entity. 
      ||| } },
      metadata(suffix=''):: refSelf.plain('.metadata%s' % suffix),
      '#name':: { 'function': { help: |||
        Name of the entity. 
      ||| } },
      name(suffix=''):: refSelf.plain('.name%s' % suffix),
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
