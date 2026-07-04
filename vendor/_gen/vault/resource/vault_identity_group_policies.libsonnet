{
  local outerSelf = self,
  new(terraformName, group_id, policies):: self.functions(terraformName) {
    ref():: outerSelf.ref(terraformName),
    _type:: 'tf',
    resource+: {
      vault_identity_group_policies+: {
        [terraformName]+: {
          group_id: group_id,
          policies: policies,
        },
      },
    },
  },
  functions(terraformName):: {
    withForEach(value):: self {
      resource+: {
        vault_identity_group_policies+: { [terraformName]+: { for_each: value } },
      },
    },
    withDependsOn(value):: self {
      resource+: {
        vault_identity_group_policies+: { [terraformName]+: { depends_on: value } },
      },
    },
    withCount(value):: self {
      resource+: {
        vault_identity_group_policies+: { [terraformName]+: { count: value } },
      },
    },
    withLifecycle(value):: self {
      resource+: {
        vault_identity_group_policies+: { [terraformName]+: { lifecycle: value } },
      },
    },
    withProvider(value):: self {
      resource+: {
        vault_identity_group_policies+: { [terraformName]+: { provider: value } },
      },
    },
    withProviders(value):: self {
      resource+: {
        vault_identity_group_policies+: { [terraformName]+: { providers: value } },
      },
    },
    '#exclusive':: { 'function': { help: |||
      Should the resource manage policies exclusively? Beware of race conditions when disabling exclusive management
    ||| } },
    withExclusive(value):: self {
      resource+: {
        vault_identity_group_policies+: { [terraformName]+: { exclusive: value } },
      },
    },
    '#group_id':: { 'function': { help: |||
      ID of the group.
    ||| } },
    withGroupId(value):: self {
      resource+: {
        vault_identity_group_policies+: { [terraformName]+: { group_id: value } },
      },
    },
    withId(value):: self {
      resource+: {
        vault_identity_group_policies+: { [terraformName]+: { id: value } },
      },
    },
    '#namespace':: { 'function': { help: |||
      Target namespace. (requires Enterprise)
    ||| } },
    withNamespace(value):: self {
      resource+: {
        vault_identity_group_policies+: { [terraformName]+: { namespace: value } },
      },
    },
    '#policies':: { 'function': { help: |||
      Policies to be tied to the group.
    ||| } },
    withPolicies(value):: self {
      resource+: {
        vault_identity_group_policies+: { [terraformName]+: { policies: value } },
      },
    },
  },
  ref(terraformName):: {
    local refSelf = self,
    plain(suffix=''):: '${ vault_identity_group_policies.%s%s }' % [terraformName, suffix],
    fields:: {
      '#exclusive':: { 'function': { help: |||
        Should the resource manage policies exclusively? Beware of race conditions when disabling exclusive management
      ||| } },
      exclusive(suffix=''):: refSelf.plain('.exclusive%s' % suffix),
      '#group_id':: { 'function': { help: |||
        ID of the group.
      ||| } },
      group_id(suffix=''):: refSelf.plain('.group_id%s' % suffix),
      '#group_name':: { 'function': { help: |||
        Name of the group.
      ||| } },
      group_name(suffix=''):: refSelf.plain('.group_name%s' % suffix),
      id(suffix=''):: refSelf.plain('.id%s' % suffix),
      '#namespace':: { 'function': { help: |||
        Target namespace. (requires Enterprise)
      ||| } },
      namespace(suffix=''):: refSelf.plain('.namespace%s' % suffix),
      '#policies':: { 'function': { help: |||
        Policies to be tied to the group.
      ||| } },
      policies(suffix=''):: refSelf.plain('.policies%s' % suffix),
    },
  },
}
