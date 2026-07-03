{
  new(terraformName, name):: {
    _type:: 'tf',
    resource+: {
      vault_consul_secret_backend_role+: { [terraformName]+: {
        name: name,
      } },
    },
    withConsulRoles(value):: self {
      resource+: {
        vault_consul_secret_backend_role+: { [terraformName]+: { consul_roles: value } },
      },
    },
    withConsulPolicies(value):: self {
      resource+: {
        vault_consul_secret_backend_role+: { [terraformName]+: { consul_policies: value } },
      },
    },
    withName(value):: self {
      resource+: {
        vault_consul_secret_backend_role+: { [terraformName]+: { name: value } },
      },
    },
    withPolicies(value):: self {
      resource+: {
        vault_consul_secret_backend_role+: { [terraformName]+: { policies: value } },
      },
    },
    withServiceIdentities(value):: self {
      resource+: {
        vault_consul_secret_backend_role+: { [terraformName]+: { service_identities: value } },
      },
    },
    withMaxTtl(value):: self {
      resource+: {
        vault_consul_secret_backend_role+: { [terraformName]+: { max_ttl: value } },
      },
    },
    withId(value):: self {
      resource+: {
        vault_consul_secret_backend_role+: { [terraformName]+: { id: value } },
      },
    },
    withTtl(value):: self {
      resource+: {
        vault_consul_secret_backend_role+: { [terraformName]+: { ttl: value } },
      },
    },
    withNamespace(value):: self {
      resource+: {
        vault_consul_secret_backend_role+: { [terraformName]+: { namespace: value } },
      },
    },
    withNodeIdentities(value):: self {
      resource+: {
        vault_consul_secret_backend_role+: { [terraformName]+: { node_identities: value } },
      },
    },
    withPartition(value):: self {
      resource+: {
        vault_consul_secret_backend_role+: { [terraformName]+: { partition: value } },
      },
    },
    withConsulNamespace(value):: self {
      resource+: {
        vault_consul_secret_backend_role+: { [terraformName]+: { consul_namespace: value } },
      },
    },
    withBackend(value):: self {
      resource+: {
        vault_consul_secret_backend_role+: { [terraformName]+: { backend: value } },
      },
    },
    withLocal(value):: self {
      resource+: {
        vault_consul_secret_backend_role+: { [terraformName]+: { 'local': value } },
      },
    },
  },
}
