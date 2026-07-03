{
  new(terraformName, ca_pem, name, path):: {
    _type:: 'tf',
    resource+: {
      vault_kmip_secret_ca_imported+: { [terraformName]+: {
        ca_pem: ca_pem,
        name: name,
        path: path,
      } },
    },
    withNamespace(value):: self {
      resource+: {
        vault_kmip_secret_ca_imported+: { [terraformName]+: { namespace: value } },
      },
    },
    withCaPem(value):: self {
      resource+: {
        vault_kmip_secret_ca_imported+: { [terraformName]+: { ca_pem: value } },
      },
    },
    withRoleName(value):: self {
      resource+: {
        vault_kmip_secret_ca_imported+: { [terraformName]+: { role_name: value } },
      },
    },
    withName(value):: self {
      resource+: {
        vault_kmip_secret_ca_imported+: { [terraformName]+: { name: value } },
      },
    },
    withScopeField(value):: self {
      resource+: {
        vault_kmip_secret_ca_imported+: { [terraformName]+: { scope_field: value } },
      },
    },
    withRoleField(value):: self {
      resource+: {
        vault_kmip_secret_ca_imported+: { [terraformName]+: { role_field: value } },
      },
    },
    withPath(value):: self {
      resource+: {
        vault_kmip_secret_ca_imported+: { [terraformName]+: { path: value } },
      },
    },
    withScopeName(value):: self {
      resource+: {
        vault_kmip_secret_ca_imported+: { [terraformName]+: { scope_name: value } },
      },
    },
  },
}
