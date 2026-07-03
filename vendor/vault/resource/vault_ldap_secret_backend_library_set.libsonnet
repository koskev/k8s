{
  new(terraformName, service_account_names, name):: {
    _type:: 'tf',
    resource+: {
      vault_ldap_secret_backend_library_set+: { [terraformName]+: {
        service_account_names: service_account_names,
        name: name,
      } },
    },
    withServiceAccountNames(value):: self {
      resource+: {
        vault_ldap_secret_backend_library_set+: { [terraformName]+: { service_account_names: value } },
      },
    },
    withTtl(value):: self {
      resource+: {
        vault_ldap_secret_backend_library_set+: { [terraformName]+: { ttl: value } },
      },
    },
    withMaxTtl(value):: self {
      resource+: {
        vault_ldap_secret_backend_library_set+: { [terraformName]+: { max_ttl: value } },
      },
    },
    withMount(value):: self {
      resource+: {
        vault_ldap_secret_backend_library_set+: { [terraformName]+: { mount: value } },
      },
    },
    withNamespace(value):: self {
      resource+: {
        vault_ldap_secret_backend_library_set+: { [terraformName]+: { namespace: value } },
      },
    },
    withId(value):: self {
      resource+: {
        vault_ldap_secret_backend_library_set+: { [terraformName]+: { id: value } },
      },
    },
    withDisableCheckInEnforcement(value):: self {
      resource+: {
        vault_ldap_secret_backend_library_set+: { [terraformName]+: { disable_check_in_enforcement: value } },
      },
    },
    withName(value):: self {
      resource+: {
        vault_ldap_secret_backend_library_set+: { [terraformName]+: { name: value } },
      },
    },
  },
}
