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
    '#withCidrBlocks': { 'function': { help: |||
      Whitelist entry in CIDR notation to be added for the API key 
    ||| } },
    withCidrBlocks(value):: self {
      resource+: {
        vault_mongodbatlas_secret_role+: { [terraformName]+: { cidr_blocks: value } },
      },
    },
    withId(value):: self {
      resource+: {
        vault_mongodbatlas_secret_role+: { [terraformName]+: { id: value } },
      },
    },
    '#withIpAddresses': { 'function': { help: |||
      IP address to be added to the whitelist for the API key 
    ||| } },
    withIpAddresses(value):: self {
      resource+: {
        vault_mongodbatlas_secret_role+: { [terraformName]+: { ip_addresses: value } },
      },
    },
    '#withMaxTtl': { 'function': { help: |||
      The maximum allowed lifetime of credentials issued using this role 
    ||| } },
    withMaxTtl(value):: self {
      resource+: {
        vault_mongodbatlas_secret_role+: { [terraformName]+: { max_ttl: value } },
      },
    },
    '#withMount': { 'function': { help: |||
      Path where MongoDB Atlas secret backend is mounted 
    ||| } },
    withMount(value):: self {
      resource+: {
        vault_mongodbatlas_secret_role+: { [terraformName]+: { mount: value } },
      },
    },
    '#withName': { 'function': { help: |||
      Name of the role 
    ||| } },
    withName(value):: self {
      resource+: {
        vault_mongodbatlas_secret_role+: { [terraformName]+: { name: value } },
      },
    },
    '#withNamespace': { 'function': { help: |||
      Target namespace. (requires Enterprise) 
    ||| } },
    withNamespace(value):: self {
      resource+: {
        vault_mongodbatlas_secret_role+: { [terraformName]+: { namespace: value } },
      },
    },
    '#withOrganizationId': { 'function': { help: |||
      ID for the organization to which the target API Key belongs 
    ||| } },
    withOrganizationId(value):: self {
      resource+: {
        vault_mongodbatlas_secret_role+: { [terraformName]+: { organization_id: value } },
      },
    },
    '#withProjectId': { 'function': { help: |||
      ID for the project to which the target API Key belongs 
    ||| } },
    withProjectId(value):: self {
      resource+: {
        vault_mongodbatlas_secret_role+: { [terraformName]+: { project_id: value } },
      },
    },
    '#withProjectRoles': { 'function': { help: |||
      Roles assigned when an org API key is assigned to a project API key 
    ||| } },
    withProjectRoles(value):: self {
      resource+: {
        vault_mongodbatlas_secret_role+: { [terraformName]+: { project_roles: value } },
      },
    },
    '#withRoles': { 'function': { help: |||
      List of roles that the API Key needs to have 
    ||| } },
    withRoles(value):: self {
      resource+: {
        vault_mongodbatlas_secret_role+: { [terraformName]+: { roles: value } },
      },
    },
    '#withTtl': { 'function': { help: |||
      Duration in seconds after which the issued credential should expire 
    ||| } },
    withTtl(value):: self {
      resource+: {
        vault_mongodbatlas_secret_role+: { [terraformName]+: { ttl: value } },
      },
    },
  },
}
