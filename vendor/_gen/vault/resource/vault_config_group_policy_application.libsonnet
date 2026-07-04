{
  '#new':: { 'function': { help: |||
    Manages the global group policy application mode for Vault Enterprise. This resource controls how ACL policies attached to identity groups are applied across namespace boundaries. **Important:** This is a singleton resource - only one instance per Vault cluster. Must be managed from root or administrative namespace. This configuration will be replicated between primary and secondaries - primaries cannot have a different policy application mode than secondaries.
  ||| } },
  local outerSelf = self,
  new(terraformName, group_policy_application_mode):: self.functions(terraformName) {
    ref():: outerSelf.ref(terraformName),
    _type:: 'tf',
    resource+: {
      vault_config_group_policy_application+: {
        [terraformName]+: {
          group_policy_application_mode: group_policy_application_mode,
        },
      },
    },
  },
  functions(terraformName):: {
    withForEach(value):: self {
      resource+: {
        vault_config_group_policy_application+: { [terraformName]+: { for_each: value } },
      },
    },
    withDependsOn(value):: self {
      resource+: {
        vault_config_group_policy_application+: { [terraformName]+: { depends_on: value } },
      },
    },
    withCount(value):: self {
      resource+: {
        vault_config_group_policy_application+: { [terraformName]+: { count: value } },
      },
    },
    withLifecycle(value):: self {
      resource+: {
        vault_config_group_policy_application+: { [terraformName]+: { lifecycle: value } },
      },
    },
    withProvider(value):: self {
      resource+: {
        vault_config_group_policy_application+: { [terraformName]+: { provider: value } },
      },
    },
    withProviders(value):: self {
      resource+: {
        vault_config_group_policy_application+: { [terraformName]+: { providers: value } },
      },
    },
    '#group_policy_application_mode':: { 'function': { help: |||
      Mode for group policy application. Must be either "within_namespace_hierarchy" or "any". "within_namespace_hierarchy" means policies only apply when the token authorizing a request was created in the same namespace as the group, or a descendant namespace. "any" means group policies apply to all members of a group, regardless of what namespace the request token came from.
    ||| } },
    withGroupPolicyApplicationMode(value):: self {
      resource+: {
        vault_config_group_policy_application+: { [terraformName]+: { group_policy_application_mode: value } },
      },
    },
    '#namespace':: { 'function': { help: |||
      Target namespace. (requires Enterprise)
    ||| } },
    withNamespace(value):: self {
      resource+: {
        vault_config_group_policy_application+: { [terraformName]+: { namespace: value } },
      },
    },
  },
  ref(terraformName):: {
    local refSelf = self,
    plain(suffix=''):: '${ vault_config_group_policy_application.%s%s }' % [terraformName, suffix],
    fields:: {
      '#group_policy_application_mode':: { 'function': { help: |||
        Mode for group policy application. Must be either "within_namespace_hierarchy" or "any". "within_namespace_hierarchy" means policies only apply when the token authorizing a request was created in the same namespace as the group, or a descendant namespace. "any" means group policies apply to all members of a group, regardless of what namespace the request token came from.
      ||| } },
      group_policy_application_mode(suffix=''):: refSelf.plain('.group_policy_application_mode%s' % suffix),
      '#id':: { 'function': { help: |||
        The resource ID (always "sys/config/group-policy-application").
      ||| } },
      id(suffix=''):: refSelf.plain('.id%s' % suffix),
      '#namespace':: { 'function': { help: |||
        Target namespace. (requires Enterprise)
      ||| } },
      namespace(suffix=''):: refSelf.plain('.namespace%s' % suffix),
    },
  },
}
