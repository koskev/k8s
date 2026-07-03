{
  new(terraformName, name):: self.functions(terraformName) {
    _type:: 'tf',
    resource+: {
      vault_identity_oidc_assignment+: {
        [terraformName]+: {
          name: name,
        },
      },
    },
  },
  functions(terraformName):: {
    '#withEntityIds':: { 'function': { help: |||
      A list of Vault entity IDs. 
    ||| } },
    withEntityIds(value):: self {
      resource+: {
        vault_identity_oidc_assignment+: { [terraformName]+: { entity_ids: value } },
      },
    },
    '#withGroupIds':: { 'function': { help: |||
      A list of Vault group IDs. 
    ||| } },
    withGroupIds(value):: self {
      resource+: {
        vault_identity_oidc_assignment+: { [terraformName]+: { group_ids: value } },
      },
    },
    withId(value):: self {
      resource+: {
        vault_identity_oidc_assignment+: { [terraformName]+: { id: value } },
      },
    },
    '#withName':: { 'function': { help: |||
      The name of the assignment. 
    ||| } },
    withName(value):: self {
      resource+: {
        vault_identity_oidc_assignment+: { [terraformName]+: { name: value } },
      },
    },
    '#withNamespace':: { 'function': { help: |||
      Target namespace. (requires Enterprise) 
    ||| } },
    withNamespace(value):: self {
      resource+: {
        vault_identity_oidc_assignment+: { [terraformName]+: { namespace: value } },
      },
    },
  },
  ref(terraformName):: {
    local refSelf = self,
    plain(suffix=''):: '${ vault_identity_oidc_assignment.%s%s }' % [terraformName, suffix],
    fields:: {
      '#entity_ids':: { 'function': { help: |||
        A list of Vault entity IDs. 
      ||| } },
      entity_ids(suffix=''):: refSelf.plain('.entity_ids%s' % suffix),
      '#group_ids':: { 'function': { help: |||
        A list of Vault group IDs. 
      ||| } },
      group_ids(suffix=''):: refSelf.plain('.group_ids%s' % suffix),
      id(suffix=''):: refSelf.plain('.id%s' % suffix),
      '#name':: { 'function': { help: |||
        The name of the assignment. 
      ||| } },
      name(suffix=''):: refSelf.plain('.name%s' % suffix),
      '#namespace':: { 'function': { help: |||
        Target namespace. (requires Enterprise) 
      ||| } },
      namespace(suffix=''):: refSelf.plain('.namespace%s' % suffix),
    },
  },
}
