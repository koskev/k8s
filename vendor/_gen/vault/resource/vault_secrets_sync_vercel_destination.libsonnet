{
  new(terraformName, access_token, deployment_environments, name, project_id):: {
    _type:: 'tf',
    resource+: {
      vault_secrets_sync_vercel_destination+: { [terraformName]+: {
        access_token: access_token,
        deployment_environments: deployment_environments,
        name: name,
        project_id: project_id,
      } },
    },
    '#withAccessToken': { 'function': { help: |||
      Vercel API access token with the permissions to manage environment variables. 
    ||| } },
    withAccessToken(value):: self {
      resource+: {
        vault_secrets_sync_vercel_destination+: { [terraformName]+: { access_token: value } },
      },
    },
    '#withAllowedIpv4Addresses': { 'function': { help: |||
      Set of allowed IPv4 addresses in CIDR notation (e.g., 192.168.1.1/32) for outbound connections from Vault to the destination. If not set, all IPv4 addresses are allowed. 
    ||| } },
    withAllowedIpv4Addresses(value):: self {
      resource+: {
        vault_secrets_sync_vercel_destination+: { [terraformName]+: { allowed_ipv4_addresses: value } },
      },
    },
    '#withAllowedIpv6Addresses': { 'function': { help: |||
      Set of allowed IPv6 addresses in CIDR notation (e.g., 2001:db8::1/128) for outbound connections from Vault to the destination. If not set, all IPv6 addresses are allowed. 
    ||| } },
    withAllowedIpv6Addresses(value):: self {
      resource+: {
        vault_secrets_sync_vercel_destination+: { [terraformName]+: { allowed_ipv6_addresses: value } },
      },
    },
    '#withAllowedPorts': { 'function': { help: |||
      Set of allowed ports for outbound connections from Vault to the destination. If not set, all ports are allowed. 
    ||| } },
    withAllowedPorts(value):: self {
      resource+: {
        vault_secrets_sync_vercel_destination+: { [terraformName]+: { allowed_ports: value } },
      },
    },
    '#withDeploymentEnvironments': { 'function': { help: |||
      Deployment environments where the environment variables are available. Accepts 'development', 'preview' & 'production'. 
    ||| } },
    withDeploymentEnvironments(value):: self {
      resource+: {
        vault_secrets_sync_vercel_destination+: { [terraformName]+: { deployment_environments: value } },
      },
    },
    '#withDisableStrictNetworking': { 'function': { help: |||
      If set to true, disables strict networking enforcement for this destination. When disabled, Vault will not enforce allowed IP addresses and ports. 
    ||| } },
    withDisableStrictNetworking(value):: self {
      resource+: {
        vault_secrets_sync_vercel_destination+: { [terraformName]+: { disable_strict_networking: value } },
      },
    },
    '#withGranularity': { 'function': { help: |||
      Determines what level of information is synced as a distinct resource at the destination. Can be 'secret-path' or 'secret-key' 
    ||| } },
    withGranularity(value):: self {
      resource+: {
        vault_secrets_sync_vercel_destination+: { [terraformName]+: { granularity: value } },
      },
    },
    withId(value):: self {
      resource+: {
        vault_secrets_sync_vercel_destination+: { [terraformName]+: { id: value } },
      },
    },
    '#withName': { 'function': { help: |||
      Unique name of the Vercel destination. 
    ||| } },
    withName(value):: self {
      resource+: {
        vault_secrets_sync_vercel_destination+: { [terraformName]+: { name: value } },
      },
    },
    '#withNamespace': { 'function': { help: |||
      Target namespace. (requires Enterprise) 
    ||| } },
    withNamespace(value):: self {
      resource+: {
        vault_secrets_sync_vercel_destination+: { [terraformName]+: { namespace: value } },
      },
    },
    '#withProjectId': { 'function': { help: |||
      Project ID where to manage environment variables. 
    ||| } },
    withProjectId(value):: self {
      resource+: {
        vault_secrets_sync_vercel_destination+: { [terraformName]+: { project_id: value } },
      },
    },
    '#withSecretNameTemplate': { 'function': { help: |||
      Template describing how to generate external secret names. 
    ||| } },
    withSecretNameTemplate(value):: self {
      resource+: {
        vault_secrets_sync_vercel_destination+: { [terraformName]+: { secret_name_template: value } },
      },
    },
    '#withTeamId': { 'function': { help: |||
      Team ID the project belongs to. 
    ||| } },
    withTeamId(value):: self {
      resource+: {
        vault_secrets_sync_vercel_destination+: { [terraformName]+: { team_id: value } },
      },
    },
    '#withType': { 'function': { help: |||
      Type of secrets destination. 
    ||| } },
    withType(value):: self {
      resource+: {
        vault_secrets_sync_vercel_destination+: { [terraformName]+: { type: value } },
      },
    },
  },
}
