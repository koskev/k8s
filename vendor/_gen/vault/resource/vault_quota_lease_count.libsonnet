{
  local outerSelf = self,
  new(terraformName, max_leases, name):: self.functions(terraformName) + {
    _type:: 'tf',
    ref():: outerSelf.ref(terraformName),
    resource+: {
      vault_quota_lease_count+: { [terraformName]+: {
        max_leases: max_leases,
        name: name,
      } },
    },
  }
  ,
  functions(terraformName):: {
    withForEach(value):: self { resource+: {
      vault_quota_lease_count+: { [terraformName]+: { for_each: value } },
    } },
    withDependsOn(value):: self { resource+: {
      vault_quota_lease_count+: { [terraformName]+: { depends_on: value } },
    } },
    withCount(value):: self { resource+: {
      vault_quota_lease_count+: { [terraformName]+: { count: value } },
    } },
    withLifecycle(value):: self { resource+: {
      vault_quota_lease_count+: { [terraformName]+: { lifecycle: value } },
    } },
    withProvider(value):: self { resource+: {
      vault_quota_lease_count+: { [terraformName]+: { provider: value } },
    } },
    withProviders(value):: self { resource+: {
      vault_quota_lease_count+: { [terraformName]+: { providers: value } },
    } },
    addCustomData(name, value):: self { resource+: {
      vault_quota_lease_count+: { [terraformName]+: { [name]: value } },
    } },
    withId(value):: self { resource+: {
      vault_quota_lease_count+: { [terraformName]+: { id: value } },
    } },
    '#withInheritable':: { 'function': {
      help:
        |||
          If set to true on a quota where path is set to a namespace, the same quota will be cumulatively applied to all child namespace. The inheritable parameter cannot be set to true if the path does not specify a namespace. Only the quotas associated with the root namespace are inheritable by default.
        |||,
    } },
    withInheritable(value):: self { resource+: {
      vault_quota_lease_count+: { [terraformName]+: { inheritable: value } },
    } },
    '#withMaxLeases':: { 'function': {
      help:
        |||
          The maximum number of leases to be allowed by the quota rule. The max_leases must be positive.
        |||,
    } },
    withMaxLeases(value):: self { resource+: {
      vault_quota_lease_count+: { [terraformName]+: { max_leases: value } },
    } },
    '#withName':: { 'function': {
      help:
        |||
          The name of the quota.
        |||,
    } },
    withName(value):: self { resource+: {
      vault_quota_lease_count+: { [terraformName]+: { name: value } },
    } },
    '#withNamespace':: { 'function': {
      help:
        |||
          Target namespace. (requires Enterprise)
        |||,
    } },
    withNamespace(value):: self { resource+: {
      vault_quota_lease_count+: { [terraformName]+: { namespace: value } },
    } },
    '#withPath':: { 'function': {
      help:
        |||
          Path of the mount or namespace to apply the quota. A blank path configures a global lease count quota.
        |||,
    } },
    withPath(value):: self { resource+: {
      vault_quota_lease_count+: { [terraformName]+: { path: value } },
    } },
    '#withRole':: { 'function': {
      help:
        |||
          If set on a quota where path is set to an auth mount with a concept of roles (such as /auth/approle/), this will make the quota restrict login requests to that mount that are made with the specified role.
        |||,
    } },
    withRole(value):: self { resource+: {
      vault_quota_lease_count+: { [terraformName]+: { role: value } },
    } },

  }
  ,
  ref(terraformName):: {
    local refSelf = self,
    plain(suffix=''):: '${ vault_quota_lease_count.%s%s }' % [terraformName, suffix],
    fields:: {
      id(suffix=''):: refSelf.plain('.id%s' % suffix),
      '#inheritable':: { 'function': {
        help:
          |||
            If set to true on a quota where path is set to a namespace, the same quota will be cumulatively applied to all child namespace. The inheritable parameter cannot be set to true if the path does not specify a namespace. Only the quotas associated with the root namespace are inheritable by default.
          |||,
      } },
      inheritable(suffix=''):: refSelf.plain('.inheritable%s' % suffix),
      '#max_leases':: { 'function': {
        help:
          |||
            The maximum number of leases to be allowed by the quota rule. The max_leases must be positive.
          |||,
      } },
      max_leases(suffix=''):: refSelf.plain('.max_leases%s' % suffix),
      '#name':: { 'function': {
        help:
          |||
            The name of the quota.
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
            Path of the mount or namespace to apply the quota. A blank path configures a global lease count quota.
          |||,
      } },
      path(suffix=''):: refSelf.plain('.path%s' % suffix),
      '#role':: { 'function': {
        help:
          |||
            If set on a quota where path is set to an auth mount with a concept of roles (such as /auth/approle/), this will make the quota restrict login requests to that mount that are made with the specified role.
          |||,
      } },
      role(suffix=''):: refSelf.plain('.role%s' % suffix),

    },

  },

}
