{
  local outerSelf = self,
  '#new':: { 'function': {
    help:
      |||
        Manages an AliCloud Secrets Engine role in Vault.
      |||,
  } },
  new(terraformName, mount, name):: self.functions(terraformName) + {
    _type:: 'tf',
    ref():: outerSelf.ref(terraformName),
    resource+: {
      vault_alicloud_secret_backend_role+: { [terraformName]+: {
        mount: mount,
        name: name,
      } },
    },
  }
  ,
  functions(terraformName):: {
    withForEach(value):: self { resource+: {
      vault_alicloud_secret_backend_role+: { [terraformName]+: { for_each: value } },
    } },
    withDependsOn(value):: self { resource+: {
      vault_alicloud_secret_backend_role+: { [terraformName]+: { depends_on: value } },
    } },
    withCount(value):: self { resource+: {
      vault_alicloud_secret_backend_role+: { [terraformName]+: { count: value } },
    } },
    withLifecycle(value):: self { resource+: {
      vault_alicloud_secret_backend_role+: { [terraformName]+: { lifecycle: value } },
    } },
    withProvider(value):: self { resource+: {
      vault_alicloud_secret_backend_role+: { [terraformName]+: { provider: value } },
    } },
    withProviders(value):: self { resource+: {
      vault_alicloud_secret_backend_role+: { [terraformName]+: { providers: value } },
    } },
    addCustomData(name, value):: self { resource+: {
      vault_alicloud_secret_backend_role+: { [terraformName]+: { [name]: value } },
    } },
    '#withMaxTtl':: { 'function': {
      help:
        |||
          The maximum allowed lifetime of credentials issued using this role.
        |||,
    } },
    withMaxTtl(value):: self { resource+: {
      vault_alicloud_secret_backend_role+: { [terraformName]+: { max_ttl: value } },
    } },
    '#withMount':: { 'function': {
      help:
        |||
          Path of the AliCloud Secret Backend the role belongs to.
        |||,
    } },
    withMount(value):: self { resource+: {
      vault_alicloud_secret_backend_role+: { [terraformName]+: { mount: value } },
    } },
    '#withName':: { 'function': {
      help:
        |||
          Name of the role.
        |||,
    } },
    withName(value):: self { resource+: {
      vault_alicloud_secret_backend_role+: { [terraformName]+: { name: value } },
    } },
    '#withNamespace':: { 'function': {
      help:
        |||
          Target namespace. (requires Enterprise)
        |||,
    } },
    withNamespace(value):: self { resource+: {
      vault_alicloud_secret_backend_role+: { [terraformName]+: { namespace: value } },
    } },
    '#withRoleArn':: { 'function': {
      help:
        |||
          ARN of the RAM role to assume. If provided, inline_policies and remote_policies should be blank. The trusted principal of the role must be configured to allow assumption by the access key and secret configured in the backend.
        |||,
    } },
    withRoleArn(value):: self { resource+: {
      vault_alicloud_secret_backend_role+: { [terraformName]+: { role_arn: value } },
    } },
    '#withTtl':: { 'function': {
      help:
        |||
          Duration in seconds after which the issued credentials should expire. Defaults to 0, in which case the value will fallback to the system/mount defaults.
        |||,
    } },
    withTtl(value):: self { resource+: {
      vault_alicloud_secret_backend_role+: { [terraformName]+: { ttl: value } },
    } },

  }
  ,
  ref(terraformName):: {
    local refSelf = self,
    plain(suffix=''):: '${ vault_alicloud_secret_backend_role.%s%s }' % [terraformName, suffix],
    fields:: {
      '#max_ttl':: { 'function': {
        help:
          |||
            The maximum allowed lifetime of credentials issued using this role.
          |||,
      } },
      max_ttl(suffix=''):: refSelf.plain('.max_ttl%s' % suffix),
      '#mount':: { 'function': {
        help:
          |||
            Path of the AliCloud Secret Backend the role belongs to.
          |||,
      } },
      mount(suffix=''):: refSelf.plain('.mount%s' % suffix),
      '#name':: { 'function': {
        help:
          |||
            Name of the role.
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
      '#role_arn':: { 'function': {
        help:
          |||
            ARN of the RAM role to assume. If provided, inline_policies and remote_policies should be blank. The trusted principal of the role must be configured to allow assumption by the access key and secret configured in the backend.
          |||,
      } },
      role_arn(suffix=''):: refSelf.plain('.role_arn%s' % suffix),
      '#ttl':: { 'function': {
        help:
          |||
            Duration in seconds after which the issued credentials should expire. Defaults to 0, in which case the value will fallback to the system/mount defaults.
          |||,
      } },
      ttl(suffix=''):: refSelf.plain('.ttl%s' % suffix),

    },

  },

}
