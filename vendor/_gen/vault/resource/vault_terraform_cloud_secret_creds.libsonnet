{
  new(terraformName, backend, role):: self.functions(terraformName) {
    _type:: 'tf',
    resource+: {
      vault_terraform_cloud_secret_creds+: {
        [terraformName]+: {
          backend: backend,
          role: role,
        },
      },
    },
  },
  functions(terraformName):: {
    '#withBackend':: { 'function': { help: |||
      Terraform Cloud secret backend to generate tokens from 
    ||| } },
    withBackend(value):: self {
      resource+: {
        vault_terraform_cloud_secret_creds+: { [terraformName]+: { backend: value } },
      },
    },
    withId(value):: self {
      resource+: {
        vault_terraform_cloud_secret_creds+: { [terraformName]+: { id: value } },
      },
    },
    '#withNamespace':: { 'function': { help: |||
      Target namespace. (requires Enterprise) 
    ||| } },
    withNamespace(value):: self {
      resource+: {
        vault_terraform_cloud_secret_creds+: { [terraformName]+: { namespace: value } },
      },
    },
    '#withRole':: { 'function': { help: |||
      Name of the role. 
    ||| } },
    withRole(value):: self {
      resource+: {
        vault_terraform_cloud_secret_creds+: { [terraformName]+: { role: value } },
      },
    },
  },
  ref(terraformName):: {
    local refSelf = self,
    plain(suffix=''):: '${ vault_terraform_cloud_secret_creds.%s%s }' % [terraformName, suffix],
    fields:: {
      '#backend':: { 'function': { help: |||
        Terraform Cloud secret backend to generate tokens from 
      ||| } },
      backend(suffix=''):: refSelf.plain('.backend%s' % suffix),
      id(suffix=''):: refSelf.plain('.id%s' % suffix),
      '#lease_id':: { 'function': { help: |||
        Associated Vault lease ID, if one exists 
      ||| } },
      lease_id(suffix=''):: refSelf.plain('.lease_id%s' % suffix),
      '#namespace':: { 'function': { help: |||
        Target namespace. (requires Enterprise) 
      ||| } },
      namespace(suffix=''):: refSelf.plain('.namespace%s' % suffix),
      '#organization':: { 'function': { help: |||
        Name of the Terraform Cloud or Enterprise organization 
      ||| } },
      organization(suffix=''):: refSelf.plain('.organization%s' % suffix),
      '#role':: { 'function': { help: |||
        Name of the role. 
      ||| } },
      role(suffix=''):: refSelf.plain('.role%s' % suffix),
      '#team_id':: { 'function': { help: |||
        ID of the Terraform Cloud or Enterprise team under organization (e.g., settings/teams/team-xxxxxxxxxxxxx) 
      ||| } },
      team_id(suffix=''):: refSelf.plain('.team_id%s' % suffix),
      '#token':: { 'function': { help: |||
        Terraform Token provided by the Vault backend 
      ||| } },
      token(suffix=''):: refSelf.plain('.token%s' % suffix),
      '#token_id':: { 'function': { help: |||
        ID of the Terraform Token provided 
      ||| } },
      token_id(suffix=''):: refSelf.plain('.token_id%s' % suffix),
    },
  },
}
