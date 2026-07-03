{
  new(terraformName, group_policy_application_mode):: {
    _type:: 'tf',
    resource+: {
      vault_config_group_policy_application+: { [terraformName]+: {
        group_policy_application_mode: group_policy_application_mode,
      } },
    },
    '#withGroupPolicyApplicationMode':: { 'function': { help: |||
      Mode for group policy application. Must be either "within_namespace_hierarchy" or "any". "within_namespace_hierarchy" means policies only apply when the token authorizing a request was created in the same namespace as the group, or a descendant namespace. "any" means group policies apply to all members of a group, regardless of what namespace the request token came from. 
    ||| } },
    withGroupPolicyApplicationMode(value):: self {
      resource+: {
        vault_config_group_policy_application+: { [terraformName]+: { group_policy_application_mode: value } },
      },
    },
    '#withId':: { 'function': { help: |||
      The resource ID (always "sys/config/group-policy-application"). 
    ||| } },
    withId(value):: self {
      resource+: {
        vault_config_group_policy_application+: { [terraformName]+: { id: value } },
      },
    },
    '#withNamespace':: { 'function': { help: |||
      Target namespace. (requires Enterprise) 
    ||| } },
    withNamespace(value):: self {
      resource+: {
        vault_config_group_policy_application+: { [terraformName]+: { namespace: value } },
      },
    },
  },
}
