{
  local outerSelf = self,
  new(terraformName, backend, name, service_account_names):: self.functions(terraformName) + {
    _type:: 'tf',
    ref():: outerSelf.ref(terraformName),
    resource+: {
      vault_ad_secret_library+: { [terraformName]+: {
        backend: backend,
        name: name,
        service_account_names: service_account_names,
      } },
    },
  }
  ,
  functions(terraformName):: {
    withForEach(value):: self { resource+: {
      vault_ad_secret_library+: { [terraformName]+: { for_each: value } },
    } },
    withDependsOn(value):: self { resource+: {
      vault_ad_secret_library+: { [terraformName]+: { depends_on: value } },
    } },
    withCount(value):: self { resource+: {
      vault_ad_secret_library+: { [terraformName]+: { count: value } },
    } },
    withLifecycle(value):: self { resource+: {
      vault_ad_secret_library+: { [terraformName]+: { lifecycle: value } },
    } },
    withProvider(value):: self { resource+: {
      vault_ad_secret_library+: { [terraformName]+: { provider: value } },
    } },
    withProviders(value):: self { resource+: {
      vault_ad_secret_library+: { [terraformName]+: { providers: value } },
    } },
    addCustomData(name, value):: self { resource+: {
      vault_ad_secret_library+: { [terraformName]+: { [name]: value } },
    } },
    '#withBackend':: { 'function': {
      help:
        |||
          The mount path for the AD backend.
        |||,
    } },
    withBackend(value):: self { resource+: {
      vault_ad_secret_library+: { [terraformName]+: { backend: value } },
    } },
    '#withDisableCheckInEnforcement':: { 'function': {
      help:
        |||
          Disable enforcing that service accounts must be checked in by the entity or client token that checked them out.
        |||,
    } },
    withDisableCheckInEnforcement(value):: self { resource+: {
      vault_ad_secret_library+: { [terraformName]+: { disable_check_in_enforcement: value } },
    } },
    withId(value):: self { resource+: {
      vault_ad_secret_library+: { [terraformName]+: { id: value } },
    } },
    '#withMaxTtl':: { 'function': {
      help:
        |||
          The maximum amount of time, in seconds, a check-out last with renewal before Vault automatically checks it back in.
        |||,
    } },
    withMaxTtl(value):: self { resource+: {
      vault_ad_secret_library+: { [terraformName]+: { max_ttl: value } },
    } },
    '#withName':: { 'function': {
      help:
        |||
          The name of the set of service accounts.
        |||,
    } },
    withName(value):: self { resource+: {
      vault_ad_secret_library+: { [terraformName]+: { name: value } },
    } },
    '#withNamespace':: { 'function': {
      help:
        |||
          Target namespace. (requires Enterprise)
        |||,
    } },
    withNamespace(value):: self { resource+: {
      vault_ad_secret_library+: { [terraformName]+: { namespace: value } },
    } },
    '#withServiceAccountNames':: { 'function': {
      help:
        |||
          The names of all the service accounts that can be checked out from this set. These service accounts must already exist in Active Directory.
        |||,
    } },
    withServiceAccountNames(value):: self { resource+: {
      vault_ad_secret_library+: { [terraformName]+: { service_account_names: value } },
    } },
    '#withTtl':: { 'function': {
      help:
        |||
          The amount of time, in seconds, a single check-out lasts before Vault automatically checks it back in.
        |||,
    } },
    withTtl(value):: self { resource+: {
      vault_ad_secret_library+: { [terraformName]+: { ttl: value } },
    } },

  }
  ,
  ref(terraformName):: {
    local refSelf = self,
    plain(suffix=''):: '${ vault_ad_secret_library.%s%s }' % [terraformName, suffix],
    fields:: {
      '#backend':: { 'function': {
        help:
          |||
            The mount path for the AD backend.
          |||,
      } },
      backend(suffix=''):: refSelf.plain('.backend%s' % suffix),
      '#disable_check_in_enforcement':: { 'function': {
        help:
          |||
            Disable enforcing that service accounts must be checked in by the entity or client token that checked them out.
          |||,
      } },
      disable_check_in_enforcement(suffix=''):: refSelf.plain('.disable_check_in_enforcement%s' % suffix),
      id(suffix=''):: refSelf.plain('.id%s' % suffix),
      '#max_ttl':: { 'function': {
        help:
          |||
            The maximum amount of time, in seconds, a check-out last with renewal before Vault automatically checks it back in.
          |||,
      } },
      max_ttl(suffix=''):: refSelf.plain('.max_ttl%s' % suffix),
      '#name':: { 'function': {
        help:
          |||
            The name of the set of service accounts.
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
      '#service_account_names':: { 'function': {
        help:
          |||
            The names of all the service accounts that can be checked out from this set. These service accounts must already exist in Active Directory.
          |||,
      } },
      service_account_names(suffix=''):: refSelf.plain('.service_account_names%s' % suffix),
      '#ttl':: { 'function': {
        help:
          |||
            The amount of time, in seconds, a single check-out lasts before Vault automatically checks it back in.
          |||,
      } },
      ttl(suffix=''):: refSelf.plain('.ttl%s' % suffix),

    },

  },

}
