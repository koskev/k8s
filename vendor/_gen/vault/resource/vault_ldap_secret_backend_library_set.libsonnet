{
  new(terraformName, name, service_account_names):: self.functions(terraformName) {
    _type:: 'tf',
    resource+: {
      vault_ldap_secret_backend_library_set+: {
        [terraformName]+: {
          name: name,
          service_account_names: service_account_names,
        },
      },
    },
  },
  functions(terraformName):: {
    '#withDisableCheckInEnforcement':: { 'function': { help: |||
      Disable enforcing that service accounts must be checked in by the entity or client token that checked them out. 
    ||| } },
    withDisableCheckInEnforcement(value):: self {
      resource+: {
        vault_ldap_secret_backend_library_set+: { [terraformName]+: { disable_check_in_enforcement: value } },
      },
    },
    withId(value):: self {
      resource+: {
        vault_ldap_secret_backend_library_set+: { [terraformName]+: { id: value } },
      },
    },
    '#withMaxTtl':: { 'function': { help: |||
      The maximum amount of time a check-out last with renewal before Vault automatically checks it back in. Defaults to 24 hours. 
    ||| } },
    withMaxTtl(value):: self {
      resource+: {
        vault_ldap_secret_backend_library_set+: { [terraformName]+: { max_ttl: value } },
      },
    },
    '#withMount':: { 'function': { help: |||
      The path where the LDAP secrets backend is mounted. 
    ||| } },
    withMount(value):: self {
      resource+: {
        vault_ldap_secret_backend_library_set+: { [terraformName]+: { mount: value } },
      },
    },
    '#withName':: { 'function': { help: |||
      The name of the set of service accounts. 
    ||| } },
    withName(value):: self {
      resource+: {
        vault_ldap_secret_backend_library_set+: { [terraformName]+: { name: value } },
      },
    },
    '#withNamespace':: { 'function': { help: |||
      Target namespace. (requires Enterprise) 
    ||| } },
    withNamespace(value):: self {
      resource+: {
        vault_ldap_secret_backend_library_set+: { [terraformName]+: { namespace: value } },
      },
    },
    '#withServiceAccountNames':: { 'function': { help: |||
      The names of all the service accounts that can be checked out from this set. 
    ||| } },
    withServiceAccountNames(value):: self {
      resource+: {
        vault_ldap_secret_backend_library_set+: { [terraformName]+: { service_account_names: value } },
      },
    },
    '#withTtl':: { 'function': { help: |||
      The maximum amount of time a single check-out lasts before Vault automatically checks it back in. Defaults to 24 hours. 
    ||| } },
    withTtl(value):: self {
      resource+: {
        vault_ldap_secret_backend_library_set+: { [terraformName]+: { ttl: value } },
      },
    },
  },
  ref(terraformName):: {
    local refSelf = self,
    plain(suffix=''):: '${ vault_ldap_secret_backend_library_set.%s%s }' % [terraformName, suffix],
    fields:: {
      '#disable_check_in_enforcement':: { 'function': { help: |||
        Disable enforcing that service accounts must be checked in by the entity or client token that checked them out. 
      ||| } },
      disable_check_in_enforcement(suffix=''):: refSelf.plain('.disable_check_in_enforcement%s' % suffix),
      id(suffix=''):: refSelf.plain('.id%s' % suffix),
      '#max_ttl':: { 'function': { help: |||
        The maximum amount of time a check-out last with renewal before Vault automatically checks it back in. Defaults to 24 hours. 
      ||| } },
      max_ttl(suffix=''):: refSelf.plain('.max_ttl%s' % suffix),
      '#mount':: { 'function': { help: |||
        The path where the LDAP secrets backend is mounted. 
      ||| } },
      mount(suffix=''):: refSelf.plain('.mount%s' % suffix),
      '#name':: { 'function': { help: |||
        The name of the set of service accounts. 
      ||| } },
      name(suffix=''):: refSelf.plain('.name%s' % suffix),
      '#namespace':: { 'function': { help: |||
        Target namespace. (requires Enterprise) 
      ||| } },
      namespace(suffix=''):: refSelf.plain('.namespace%s' % suffix),
      '#service_account_names':: { 'function': { help: |||
        The names of all the service accounts that can be checked out from this set. 
      ||| } },
      service_account_names(suffix=''):: refSelf.plain('.service_account_names%s' % suffix),
      '#ttl':: { 'function': { help: |||
        The maximum amount of time a single check-out lasts before Vault automatically checks it back in. Defaults to 24 hours. 
      ||| } },
      ttl(suffix=''):: refSelf.plain('.ttl%s' % suffix),
    },
  },
}
