{
  local outerSelf = self,
  new(terraformName, name):: self.functions(terraformName) + {
    _type:: 'tf',
    ref():: outerSelf.ref(terraformName),
    resource+: {
      vault_terraform_cloud_secret_role+: { [terraformName]+: {
        name: name,
      } },
    },
  }
  ,
  functions(terraformName):: {
    withForEach(value):: self { resource+: {
      vault_terraform_cloud_secret_role+: { [terraformName]+: { for_each: value } },
    } },
    withDependsOn(value):: self { resource+: {
      vault_terraform_cloud_secret_role+: { [terraformName]+: { depends_on: value } },
    } },
    withCount(value):: self { resource+: {
      vault_terraform_cloud_secret_role+: { [terraformName]+: { count: value } },
    } },
    withLifecycle(value):: self { resource+: {
      vault_terraform_cloud_secret_role+: { [terraformName]+: { lifecycle: value } },
    } },
    withProvider(value):: self { resource+: {
      vault_terraform_cloud_secret_role+: { [terraformName]+: { provider: value } },
    } },
    withProviders(value):: self { resource+: {
      vault_terraform_cloud_secret_role+: { [terraformName]+: { providers: value } },
    } },
    addCustomData(name, value):: self { resource+: {
      vault_terraform_cloud_secret_role+: { [terraformName]+: { [name]: value } },
    } },
    '#withBackend':: { 'function': {
      help:
        |||
          The path of the Terraform Cloud Secret Backend the role belongs to.
        |||,
    } },
    withBackend(value):: self { resource+: {
      vault_terraform_cloud_secret_role+: { [terraformName]+: { backend: value } },
    } },
    '#withCredentialType':: { 'function': {
      help:
        |||
          The type of credential to generate. Valid values are 'team', 'team_legacy', 'user', or 'organization'.
        |||,
    } },
    withCredentialType(value):: self { resource+: {
      vault_terraform_cloud_secret_role+: { [terraformName]+: { credential_type: value } },
    } },
    '#withDescription':: { 'function': {
      help:
        |||
          Description of the role. This is used as a prefix to help identify the token in the HCP Terraform UI. Only valid with 'team' or 'user' credential types.
        |||,
    } },
    withDescription(value):: self { resource+: {
      vault_terraform_cloud_secret_role+: { [terraformName]+: { description: value } },
    } },
    withId(value):: self { resource+: {
      vault_terraform_cloud_secret_role+: { [terraformName]+: { id: value } },
    } },
    '#withMaxTtl':: { 'function': {
      help:
        |||
          Maximum allowed lease for generated credentials. If not set or set to 0, will use system default.
        |||,
    } },
    withMaxTtl(value):: self { resource+: {
      vault_terraform_cloud_secret_role+: { [terraformName]+: { max_ttl: value } },
    } },
    '#withName':: { 'function': {
      help:
        |||
          The name of an existing role against which to create this Terraform Cloud credential
        |||,
    } },
    withName(value):: self { resource+: {
      vault_terraform_cloud_secret_role+: { [terraformName]+: { name: value } },
    } },
    '#withNamespace':: { 'function': {
      help:
        |||
          Target namespace. (requires Enterprise)
        |||,
    } },
    withNamespace(value):: self { resource+: {
      vault_terraform_cloud_secret_role+: { [terraformName]+: { namespace: value } },
    } },
    '#withOrganization':: { 'function': {
      help:
        |||
          Name of the Terraform Cloud or Enterprise organization
        |||,
    } },
    withOrganization(value):: self { resource+: {
      vault_terraform_cloud_secret_role+: { [terraformName]+: { organization: value } },
    } },
    '#withTeamId':: { 'function': {
      help:
        |||
          ID of the Terraform Cloud or Enterprise team under organization (e.g., settings/teams/team-xxxxxxxxxxxxx)
        |||,
    } },
    withTeamId(value):: self { resource+: {
      vault_terraform_cloud_secret_role+: { [terraformName]+: { team_id: value } },
    } },
    '#withTtl':: { 'function': {
      help:
        |||
          Default lease for generated credentials. If not set or set to 0, will use system default.
        |||,
    } },
    withTtl(value):: self { resource+: {
      vault_terraform_cloud_secret_role+: { [terraformName]+: { ttl: value } },
    } },
    '#withUserId':: { 'function': {
      help:
        |||
          ID of the Terraform Cloud or Enterprise user (e.g., user-xxxxxxxxxxxxxxxx)
        |||,
    } },
    withUserId(value):: self { resource+: {
      vault_terraform_cloud_secret_role+: { [terraformName]+: { user_id: value } },
    } },

  }
  ,
  ref(terraformName):: {
    local refSelf = self,
    plain(suffix=''):: '${ vault_terraform_cloud_secret_role.%s%s }' % [terraformName, suffix],
    fields:: {
      '#backend':: { 'function': {
        help:
          |||
            The path of the Terraform Cloud Secret Backend the role belongs to.
          |||,
      } },
      backend(suffix=''):: refSelf.plain('.backend%s' % suffix),
      '#credential_type':: { 'function': {
        help:
          |||
            The type of credential to generate. Valid values are 'team', 'team_legacy', 'user', or 'organization'.
          |||,
      } },
      credential_type(suffix=''):: refSelf.plain('.credential_type%s' % suffix),
      '#description':: { 'function': {
        help:
          |||
            Description of the role. This is used as a prefix to help identify the token in the HCP Terraform UI. Only valid with 'team' or 'user' credential types.
          |||,
      } },
      description(suffix=''):: refSelf.plain('.description%s' % suffix),
      id(suffix=''):: refSelf.plain('.id%s' % suffix),
      '#max_ttl':: { 'function': {
        help:
          |||
            Maximum allowed lease for generated credentials. If not set or set to 0, will use system default.
          |||,
      } },
      max_ttl(suffix=''):: refSelf.plain('.max_ttl%s' % suffix),
      '#name':: { 'function': {
        help:
          |||
            The name of an existing role against which to create this Terraform Cloud credential
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
      '#organization':: { 'function': {
        help:
          |||
            Name of the Terraform Cloud or Enterprise organization
          |||,
      } },
      organization(suffix=''):: refSelf.plain('.organization%s' % suffix),
      '#team_id':: { 'function': {
        help:
          |||
            ID of the Terraform Cloud or Enterprise team under organization (e.g., settings/teams/team-xxxxxxxxxxxxx)
          |||,
      } },
      team_id(suffix=''):: refSelf.plain('.team_id%s' % suffix),
      '#ttl':: { 'function': {
        help:
          |||
            Default lease for generated credentials. If not set or set to 0, will use system default.
          |||,
      } },
      ttl(suffix=''):: refSelf.plain('.ttl%s' % suffix),
      '#user_id':: { 'function': {
        help:
          |||
            ID of the Terraform Cloud or Enterprise user (e.g., user-xxxxxxxxxxxxxxxx)
          |||,
      } },
      user_id(suffix=''):: refSelf.plain('.user_id%s' % suffix),

    },

  },

}
