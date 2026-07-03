{
  new(terraformName, name):: {
    _type:: 'tf',
    resource+: {
      vault_terraform_cloud_secret_role+: { [terraformName]+: {
        name: name,
      } },
    },
    '#withBackend': { 'function': { help: |||
      The path of the Terraform Cloud Secret Backend the role belongs to. 
    ||| } },
    withBackend(value):: self {
      resource+: {
        vault_terraform_cloud_secret_role+: { [terraformName]+: { backend: value } },
      },
    },
    '#withCredentialType': { 'function': { help: |||
      The type of credential to generate. Valid values are 'team', 'team_legacy', 'user', or 'organization'. 
    ||| } },
    withCredentialType(value):: self {
      resource+: {
        vault_terraform_cloud_secret_role+: { [terraformName]+: { credential_type: value } },
      },
    },
    '#withDescription': { 'function': { help: |||
      Description of the role. This is used as a prefix to help identify the token in the HCP Terraform UI. Only valid with 'team' or 'user' credential types. 
    ||| } },
    withDescription(value):: self {
      resource+: {
        vault_terraform_cloud_secret_role+: { [terraformName]+: { description: value } },
      },
    },
    withId(value):: self {
      resource+: {
        vault_terraform_cloud_secret_role+: { [terraformName]+: { id: value } },
      },
    },
    '#withMaxTtl': { 'function': { help: |||
      Maximum allowed lease for generated credentials. If not set or set to 0, will use system default. 
    ||| } },
    withMaxTtl(value):: self {
      resource+: {
        vault_terraform_cloud_secret_role+: { [terraformName]+: { max_ttl: value } },
      },
    },
    '#withName': { 'function': { help: |||
      The name of an existing role against which to create this Terraform Cloud credential 
    ||| } },
    withName(value):: self {
      resource+: {
        vault_terraform_cloud_secret_role+: { [terraformName]+: { name: value } },
      },
    },
    '#withNamespace': { 'function': { help: |||
      Target namespace. (requires Enterprise) 
    ||| } },
    withNamespace(value):: self {
      resource+: {
        vault_terraform_cloud_secret_role+: { [terraformName]+: { namespace: value } },
      },
    },
    '#withOrganization': { 'function': { help: |||
      Name of the Terraform Cloud or Enterprise organization 
    ||| } },
    withOrganization(value):: self {
      resource+: {
        vault_terraform_cloud_secret_role+: { [terraformName]+: { organization: value } },
      },
    },
    '#withTeamId': { 'function': { help: |||
      ID of the Terraform Cloud or Enterprise team under organization (e.g., settings/teams/team-xxxxxxxxxxxxx) 
    ||| } },
    withTeamId(value):: self {
      resource+: {
        vault_terraform_cloud_secret_role+: { [terraformName]+: { team_id: value } },
      },
    },
    '#withTtl': { 'function': { help: |||
      Default lease for generated credentials. If not set or set to 0, will use system default. 
    ||| } },
    withTtl(value):: self {
      resource+: {
        vault_terraform_cloud_secret_role+: { [terraformName]+: { ttl: value } },
      },
    },
    '#withUserId': { 'function': { help: |||
      ID of the Terraform Cloud or Enterprise user (e.g., user-xxxxxxxxxxxxxxxx) 
    ||| } },
    withUserId(value):: self {
      resource+: {
        vault_terraform_cloud_secret_role+: { [terraformName]+: { user_id: value } },
      },
    },
  },
}
