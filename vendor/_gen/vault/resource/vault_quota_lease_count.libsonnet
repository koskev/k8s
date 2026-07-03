{
  new(terraformName, max_leases, name):: {
    _type:: 'tf',
    resource+: {
      vault_quota_lease_count+: { [terraformName]+: {
        max_leases: max_leases,
        name: name,
      } },
    },
    withId(value):: self {
      resource+: {
        vault_quota_lease_count+: { [terraformName]+: { id: value } },
      },
    },
    '#withInheritable':: { 'function': { help: |||
      If set to true on a quota where path is set to a namespace, the same quota will be cumulatively applied to all child namespace. The inheritable parameter cannot be set to true if the path does not specify a namespace. Only the quotas associated with the root namespace are inheritable by default. 
    ||| } },
    withInheritable(value):: self {
      resource+: {
        vault_quota_lease_count+: { [terraformName]+: { inheritable: value } },
      },
    },
    '#withMaxLeases':: { 'function': { help: |||
      The maximum number of leases to be allowed by the quota rule. The max_leases must be positive. 
    ||| } },
    withMaxLeases(value):: self {
      resource+: {
        vault_quota_lease_count+: { [terraformName]+: { max_leases: value } },
      },
    },
    '#withName':: { 'function': { help: |||
      The name of the quota. 
    ||| } },
    withName(value):: self {
      resource+: {
        vault_quota_lease_count+: { [terraformName]+: { name: value } },
      },
    },
    '#withNamespace':: { 'function': { help: |||
      Target namespace. (requires Enterprise) 
    ||| } },
    withNamespace(value):: self {
      resource+: {
        vault_quota_lease_count+: { [terraformName]+: { namespace: value } },
      },
    },
    '#withPath':: { 'function': { help: |||
      Path of the mount or namespace to apply the quota. A blank path configures a global lease count quota. 
    ||| } },
    withPath(value):: self {
      resource+: {
        vault_quota_lease_count+: { [terraformName]+: { path: value } },
      },
    },
    '#withRole':: { 'function': { help: |||
      If set on a quota where path is set to an auth mount with a concept of roles (such as /auth/approle/), this will make the quota restrict login requests to that mount that are made with the specified role. 
    ||| } },
    withRole(value):: self {
      resource+: {
        vault_quota_lease_count+: { [terraformName]+: { role: value } },
      },
    },
  },
}
