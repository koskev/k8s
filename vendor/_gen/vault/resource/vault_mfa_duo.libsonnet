{
  local outerSelf = self,
  new(terraformName, api_hostname, integration_key, mount_accessor, name, secret_key):: self.functions(terraformName) + {
    _type:: 'tf',
    ref():: outerSelf.ref(terraformName),
    resource+: {
      vault_mfa_duo+: { [terraformName]+: {
        api_hostname: api_hostname,
        integration_key: integration_key,
        mount_accessor: mount_accessor,
        name: name,
        secret_key: secret_key,
      } },
    },
  }
  ,
  functions(terraformName):: {
    withForEach(value):: self { resource+: {
      vault_mfa_duo+: { [terraformName]+: { for_each: value } },
    } },
    withDependsOn(value):: self { resource+: {
      vault_mfa_duo+: { [terraformName]+: { depends_on: value } },
    } },
    withCount(value):: self { resource+: {
      vault_mfa_duo+: { [terraformName]+: { count: value } },
    } },
    withLifecycle(value):: self { resource+: {
      vault_mfa_duo+: { [terraformName]+: { lifecycle: value } },
    } },
    withProvider(value):: self { resource+: {
      vault_mfa_duo+: { [terraformName]+: { provider: value } },
    } },
    withProviders(value):: self { resource+: {
      vault_mfa_duo+: { [terraformName]+: { providers: value } },
    } },
    addCustomData(name, value):: self { resource+: {
      vault_mfa_duo+: { [terraformName]+: { [name]: value } },
    } },
    '#withApiHostname':: { 'function': {
      help:
        |||
          API hostname for Duo.
        |||,
    } },
    withApiHostname(value):: self { resource+: {
      vault_mfa_duo+: { [terraformName]+: { api_hostname: value } },
    } },
    withId(value):: self { resource+: {
      vault_mfa_duo+: { [terraformName]+: { id: value } },
    } },
    '#withIntegrationKey':: { 'function': {
      help:
        |||
          Integration key for Duo.
        |||,
    } },
    withIntegrationKey(value):: self { resource+: {
      vault_mfa_duo+: { [terraformName]+: { integration_key: value } },
    } },
    '#withMountAccessor':: { 'function': {
      help:
        |||
          The mount to tie this method to for use in automatic mappings. The mapping will use the Name field of Aliases associated with this mount as the username in the mapping.
        |||,
    } },
    withMountAccessor(value):: self { resource+: {
      vault_mfa_duo+: { [terraformName]+: { mount_accessor: value } },
    } },
    '#withName':: { 'function': {
      help:
        |||
          Name of the MFA method.
        |||,
    } },
    withName(value):: self { resource+: {
      vault_mfa_duo+: { [terraformName]+: { name: value } },
    } },
    '#withNamespace':: { 'function': {
      help:
        |||
          Target namespace. (requires Enterprise)
        |||,
    } },
    withNamespace(value):: self { resource+: {
      vault_mfa_duo+: { [terraformName]+: { namespace: value } },
    } },
    '#withPushInfo':: { 'function': {
      help:
        |||
          Push information for Duo.
        |||,
    } },
    withPushInfo(value):: self { resource+: {
      vault_mfa_duo+: { [terraformName]+: { push_info: value } },
    } },
    '#withSecretKey':: { 'function': {
      help:
        |||
          Secret key for Duo.
        |||,
    } },
    withSecretKey(value):: self { resource+: {
      vault_mfa_duo+: { [terraformName]+: { secret_key: value } },
    } },
    '#withUsernameFormat':: { 'function': {
      help:
        |||
          A format string for mapping Identity names to MFA method names. Values to substitute should be placed in `{{}}`.
        |||,
    } },
    withUsernameFormat(value):: self { resource+: {
      vault_mfa_duo+: { [terraformName]+: { username_format: value } },
    } },

  }
  ,
  ref(terraformName):: {
    local refSelf = self,
    plain(suffix=''):: '${ vault_mfa_duo.%s%s }' % [terraformName, suffix],
    fields:: {
      '#api_hostname':: { 'function': {
        help:
          |||
            API hostname for Duo.
          |||,
      } },
      api_hostname(suffix=''):: refSelf.plain('.api_hostname%s' % suffix),
      id(suffix=''):: refSelf.plain('.id%s' % suffix),
      '#integration_key':: { 'function': {
        help:
          |||
            Integration key for Duo.
          |||,
      } },
      integration_key(suffix=''):: refSelf.plain('.integration_key%s' % suffix),
      '#mount_accessor':: { 'function': {
        help:
          |||
            The mount to tie this method to for use in automatic mappings. The mapping will use the Name field of Aliases associated with this mount as the username in the mapping.
          |||,
      } },
      mount_accessor(suffix=''):: refSelf.plain('.mount_accessor%s' % suffix),
      '#name':: { 'function': {
        help:
          |||
            Name of the MFA method.
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
      '#push_info':: { 'function': {
        help:
          |||
            Push information for Duo.
          |||,
      } },
      push_info(suffix=''):: refSelf.plain('.push_info%s' % suffix),
      '#secret_key':: { 'function': {
        help:
          |||
            Secret key for Duo.
          |||,
      } },
      secret_key(suffix=''):: refSelf.plain('.secret_key%s' % suffix),
      '#username_format':: { 'function': {
        help:
          |||
            A format string for mapping Identity names to MFA method names. Values to substitute should be placed in `{{}}`.
          |||,
      } },
      username_format(suffix=''):: refSelf.plain('.username_format%s' % suffix),

    },

  },

}
