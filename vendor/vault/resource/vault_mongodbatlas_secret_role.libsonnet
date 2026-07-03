{
  new(terraformName, mount, name, roles):: {
    _type:: 'tf',
    resource+: {
      vault_mongodbatlas_secret_role+: { [terraformName]+: {
        mount: mount,
        name: name,
        roles: roles,
      } },
    },
    withMount(value):: self {
      resource+: {
        vault_mongodbatlas_secret_role+: { [terraformName]+: { mount: value } },
      },
    },
    withName(value):: self {
      resource+: {
        vault_mongodbatlas_secret_role+: { [terraformName]+: { name: value } },
      },
    },
    withCidrBlocks(value):: self {
      resource+: {
        vault_mongodbatlas_secret_role+: { [terraformName]+: { cidr_blocks: value } },
      },
    },
    withNamespace(value):: self {
      resource+: {
        vault_mongodbatlas_secret_role+: { [terraformName]+: { namespace: value } },
      },
    },
    withRoles(value):: self {
      resource+: {
        vault_mongodbatlas_secret_role+: { [terraformName]+: { roles: value } },
      },
    },
    withIpAddresses(value):: self {
      resource+: {
        vault_mongodbatlas_secret_role+: { [terraformName]+: { ip_addresses: value } },
      },
    },
    withId(value):: self {
      resource+: {
        vault_mongodbatlas_secret_role+: { [terraformName]+: { id: value } },
      },
    },
    withMaxTtl(value):: self {
      resource+: {
        vault_mongodbatlas_secret_role+: { [terraformName]+: { max_ttl: value } },
      },
    },
    withProjectRoles(value):: self {
      resource+: {
        vault_mongodbatlas_secret_role+: { [terraformName]+: { project_roles: value } },
      },
    },
    withProjectId(value):: self {
      resource+: {
        vault_mongodbatlas_secret_role+: { [terraformName]+: { project_id: value } },
      },
    },
    withTtl(value):: self {
      resource+: {
        vault_mongodbatlas_secret_role+: { [terraformName]+: { ttl: value } },
      },
    },
    withOrganizationId(value):: self {
      resource+: {
        vault_mongodbatlas_secret_role+: { [terraformName]+: { organization_id: value } },
      },
    },
  },
}
