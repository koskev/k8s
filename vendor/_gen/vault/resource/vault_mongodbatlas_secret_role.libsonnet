{
  local outerSelf = self,
  new(terraformName, mount, name, roles):: self.functions(terraformName) {
    ref():: outerSelf.ref(terraformName),
    _type:: 'tf',
    resource+: {
      vault_mongodbatlas_secret_role+: {
        [terraformName]+: {
          mount: mount,
          name: name,
          roles: roles,
        },
      },
    },
  },
  functions(terraformName):: {
    '#withCidrBlocks':: { 'function': { help: |||
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
    '#withIpAddresses':: { 'function': { help: |||
      IP address to be added to the whitelist for the API key
    ||| } },
    withIpAddresses(value):: self {
      resource+: {
        vault_mongodbatlas_secret_role+: { [terraformName]+: { ip_addresses: value } },
      },
    },
    '#withMaxTtl':: { 'function': { help: |||
      The maximum allowed lifetime of credentials issued using this role
    ||| } },
    withMaxTtl(value):: self {
      resource+: {
        vault_mongodbatlas_secret_role+: { [terraformName]+: { max_ttl: value } },
      },
    },
    '#withMount':: { 'function': { help: |||
      Path where MongoDB Atlas secret backend is mounted
    ||| } },
    withMount(value):: self {
      resource+: {
        vault_mongodbatlas_secret_role+: { [terraformName]+: { mount: value } },
      },
    },
    '#withName':: { 'function': { help: |||
      Name of the role
    ||| } },
    withName(value):: self {
      resource+: {
        vault_mongodbatlas_secret_role+: { [terraformName]+: { name: value } },
      },
    },
    '#withNamespace':: { 'function': { help: |||
      Target namespace. (requires Enterprise)
    ||| } },
    withNamespace(value):: self {
      resource+: {
        vault_mongodbatlas_secret_role+: { [terraformName]+: { namespace: value } },
      },
    },
    '#withOrganizationId':: { 'function': { help: |||
      ID for the organization to which the target API Key belongs
    ||| } },
    withOrganizationId(value):: self {
      resource+: {
        vault_mongodbatlas_secret_role+: { [terraformName]+: { organization_id: value } },
      },
    },
    '#withProjectId':: { 'function': { help: |||
      ID for the project to which the target API Key belongs
    ||| } },
    withProjectId(value):: self {
      resource+: {
        vault_mongodbatlas_secret_role+: { [terraformName]+: { project_id: value } },
      },
    },
    '#withProjectRoles':: { 'function': { help: |||
      Roles assigned when an org API key is assigned to a project API key
    ||| } },
    withProjectRoles(value):: self {
      resource+: {
        vault_mongodbatlas_secret_role+: { [terraformName]+: { project_roles: value } },
      },
    },
    '#withRoles':: { 'function': { help: |||
      List of roles that the API Key needs to have
    ||| } },
    withRoles(value):: self {
      resource+: {
        vault_mongodbatlas_secret_role+: { [terraformName]+: { roles: value } },
      },
    },
    '#withTtl':: { 'function': { help: |||
      Duration in seconds after which the issued credential should expire
    ||| } },
    withTtl(value):: self {
      resource+: {
        vault_mongodbatlas_secret_role+: { [terraformName]+: { ttl: value } },
      },
    },
  },
  ref(terraformName):: {
    local refSelf = self,
    plain(suffix=''):: '${ vault_mongodbatlas_secret_role.%s%s }' % [terraformName, suffix],
    fields:: {
      '#cidr_blocks':: { 'function': { help: |||
        Whitelist entry in CIDR notation to be added for the API key
      ||| } },
      cidr_blocks(suffix=''):: refSelf.plain('.cidr_blocks%s' % suffix),
      id(suffix=''):: refSelf.plain('.id%s' % suffix),
      '#ip_addresses':: { 'function': { help: |||
        IP address to be added to the whitelist for the API key
      ||| } },
      ip_addresses(suffix=''):: refSelf.plain('.ip_addresses%s' % suffix),
      '#max_ttl':: { 'function': { help: |||
        The maximum allowed lifetime of credentials issued using this role
      ||| } },
      max_ttl(suffix=''):: refSelf.plain('.max_ttl%s' % suffix),
      '#mount':: { 'function': { help: |||
        Path where MongoDB Atlas secret backend is mounted
      ||| } },
      mount(suffix=''):: refSelf.plain('.mount%s' % suffix),
      '#name':: { 'function': { help: |||
        Name of the role
      ||| } },
      name(suffix=''):: refSelf.plain('.name%s' % suffix),
      '#namespace':: { 'function': { help: |||
        Target namespace. (requires Enterprise)
      ||| } },
      namespace(suffix=''):: refSelf.plain('.namespace%s' % suffix),
      '#organization_id':: { 'function': { help: |||
        ID for the organization to which the target API Key belongs
      ||| } },
      organization_id(suffix=''):: refSelf.plain('.organization_id%s' % suffix),
      '#project_id':: { 'function': { help: |||
        ID for the project to which the target API Key belongs
      ||| } },
      project_id(suffix=''):: refSelf.plain('.project_id%s' % suffix),
      '#project_roles':: { 'function': { help: |||
        Roles assigned when an org API key is assigned to a project API key
      ||| } },
      project_roles(suffix=''):: refSelf.plain('.project_roles%s' % suffix),
      '#roles':: { 'function': { help: |||
        List of roles that the API Key needs to have
      ||| } },
      roles(suffix=''):: refSelf.plain('.roles%s' % suffix),
      '#ttl':: { 'function': { help: |||
        Duration in seconds after which the issued credential should expire
      ||| } },
      ttl(suffix=''):: refSelf.plain('.ttl%s' % suffix),
    },
  },
}
