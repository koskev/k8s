{
  new(terraformName, role, backend, service_account_name):: {
    _type:: 'tf',
    resource+: {
      vault_ad_secret_role+: { [terraformName]+: {
        role: role,
        backend: backend,
        service_account_name: service_account_name,
      } },
    },
    withLastVaultRotation(value):: self {
      resource+: {
        vault_ad_secret_role+: { [terraformName]+: { last_vault_rotation: value } },
      },
    },
    withPasswordLastSet(value):: self {
      resource+: {
        vault_ad_secret_role+: { [terraformName]+: { password_last_set: value } },
      },
    },
    withId(value):: self {
      resource+: {
        vault_ad_secret_role+: { [terraformName]+: { id: value } },
      },
    },
    withTtl(value):: self {
      resource+: {
        vault_ad_secret_role+: { [terraformName]+: { ttl: value } },
      },
    },
    withRole(value):: self {
      resource+: {
        vault_ad_secret_role+: { [terraformName]+: { role: value } },
      },
    },
    withBackend(value):: self {
      resource+: {
        vault_ad_secret_role+: { [terraformName]+: { backend: value } },
      },
    },
    withNamespace(value):: self {
      resource+: {
        vault_ad_secret_role+: { [terraformName]+: { namespace: value } },
      },
    },
    withServiceAccountName(value):: self {
      resource+: {
        vault_ad_secret_role+: { [terraformName]+: { service_account_name: value } },
      },
    },
  },
}
