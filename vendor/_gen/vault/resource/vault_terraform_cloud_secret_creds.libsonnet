{
  new(terraformName, backend, role):: {
    _type:: 'tf',
    resource+: {
      vault_terraform_cloud_secret_creds+: { [terraformName]+: {
        backend: backend,
        role: role,
      } },
    },
    '#withBackend': { 'function': { help: |||
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
    '#withLeaseId': { 'function': { help: |||
      Associated Vault lease ID, if one exists 
    ||| } },
    withLeaseId(value):: self {
      resource+: {
        vault_terraform_cloud_secret_creds+: { [terraformName]+: { lease_id: value } },
      },
    },
    '#withNamespace': { 'function': { help: |||
      Target namespace. (requires Enterprise) 
    ||| } },
    withNamespace(value):: self {
      resource+: {
        vault_terraform_cloud_secret_creds+: { [terraformName]+: { namespace: value } },
      },
    },
    '#withOrganization': { 'function': { help: |||
      Name of the Terraform Cloud or Enterprise organization 
    ||| } },
    withOrganization(value):: self {
      resource+: {
        vault_terraform_cloud_secret_creds+: { [terraformName]+: { organization: value } },
      },
    },
    '#withRole': { 'function': { help: |||
      Name of the role. 
    ||| } },
    withRole(value):: self {
      resource+: {
        vault_terraform_cloud_secret_creds+: { [terraformName]+: { role: value } },
      },
    },
    '#withTeamId': { 'function': { help: |||
      ID of the Terraform Cloud or Enterprise team under organization (e.g., settings/teams/team-xxxxxxxxxxxxx) 
    ||| } },
    withTeamId(value):: self {
      resource+: {
        vault_terraform_cloud_secret_creds+: { [terraformName]+: { team_id: value } },
      },
    },
    '#withToken': { 'function': { help: |||
      Terraform Token provided by the Vault backend 
    ||| } },
    withToken(value):: self {
      resource+: {
        vault_terraform_cloud_secret_creds+: { [terraformName]+: { token: value } },
      },
    },
    '#withTokenId': { 'function': { help: |||
      ID of the Terraform Token provided 
    ||| } },
    withTokenId(value):: self {
      resource+: {
        vault_terraform_cloud_secret_creds+: { [terraformName]+: { token_id: value } },
      },
    },
  },
}
