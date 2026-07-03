{
  new(terraformName, service_account_names, backend, name):: {
    _type:: 'tf',
    resource+: {
      vault_ad_secret_library+: { [terraformName]+: {
        service_account_names: service_account_names,
        backend: backend,
        name: name,
      } },
    },
    withServiceAccountNames(value):: self {
      resource+: {
        vault_ad_secret_library+: { [terraformName]+: { service_account_names: value } },
      },
    },
    withNamespace(value):: self {
      resource+: {
        vault_ad_secret_library+: { [terraformName]+: { namespace: value } },
      },
    },
    withBackend(value):: self {
      resource+: {
        vault_ad_secret_library+: { [terraformName]+: { backend: value } },
      },
    },
    withDisableCheckInEnforcement(value):: self {
      resource+: {
        vault_ad_secret_library+: { [terraformName]+: { disable_check_in_enforcement: value } },
      },
    },
    withId(value):: self {
      resource+: {
        vault_ad_secret_library+: { [terraformName]+: { id: value } },
      },
    },
    withName(value):: self {
      resource+: {
        vault_ad_secret_library+: { [terraformName]+: { name: value } },
      },
    },
    withMaxTtl(value):: self {
      resource+: {
        vault_ad_secret_library+: { [terraformName]+: { max_ttl: value } },
      },
    },
    withTtl(value):: self {
      resource+: {
        vault_ad_secret_library+: { [terraformName]+: { ttl: value } },
      },
    },
  },
}
