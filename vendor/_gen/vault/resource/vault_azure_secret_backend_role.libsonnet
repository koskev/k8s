{
  new(terraformName, role):: {
    _type:: 'tf',
    resource+: {
      vault_azure_secret_backend_role+: { [terraformName]+: {
        role: role,
      } },
    },
    '#withApplicationObjectId':: { 'function': { help: |||
      Application Object ID for an existing service principal that will be used instead of creating dynamic service principals. 
    ||| } },
    withApplicationObjectId(value):: self {
      resource+: {
        vault_azure_secret_backend_role+: { [terraformName]+: { application_object_id: value } },
      },
    },
    '#withBackend':: { 'function': { help: |||
      Unique name of the auth backend to configure. 
    ||| } },
    withBackend(value):: self {
      resource+: {
        vault_azure_secret_backend_role+: { [terraformName]+: { backend: value } },
      },
    },
    '#withDescription':: { 'function': { help: |||
      Human-friendly description of the mount for the backend. 
    ||| } },
    withDescription(value):: self {
      resource+: {
        vault_azure_secret_backend_role+: { [terraformName]+: { description: value } },
      },
    },
    '#withExplicitMaxTtl':: { 'function': { help: |||
      Specifies the explicit maximum lifetime of the lease and service principal. 
    ||| } },
    withExplicitMaxTtl(value):: self {
      resource+: {
        vault_azure_secret_backend_role+: { [terraformName]+: { explicit_max_ttl: value } },
      },
    },
    withId(value):: self {
      resource+: {
        vault_azure_secret_backend_role+: { [terraformName]+: { id: value } },
      },
    },
    '#withMaxTtl':: { 'function': { help: |||
      Specifies the maximum TTL for service principals generated using this role. 
    ||| } },
    withMaxTtl(value):: self {
      resource+: {
        vault_azure_secret_backend_role+: { [terraformName]+: { max_ttl: value } },
      },
    },
    '#withMetadata':: { 'function': { help: |||
      A map of string key/value pairs that will be stored as metadata on the secret. 
    ||| } },
    withMetadata(value):: self {
      resource+: {
        vault_azure_secret_backend_role+: { [terraformName]+: { metadata: value } },
      },
    },
    '#withNamespace':: { 'function': { help: |||
      Target namespace. (requires Enterprise) 
    ||| } },
    withNamespace(value):: self {
      resource+: {
        vault_azure_secret_backend_role+: { [terraformName]+: { namespace: value } },
      },
    },
    '#withPermanentlyDelete':: { 'function': { help: |||
      Indicates whether the applications and service principals created by Vault will be permanently deleted when the corresponding leases expire. 
    ||| } },
    withPermanentlyDelete(value):: self {
      resource+: {
        vault_azure_secret_backend_role+: { [terraformName]+: { permanently_delete: value } },
      },
    },
    '#withPersistApp':: { 'function': { help: |||
      If true, persists the created service principal and application for the lifetime of the role. 
    ||| } },
    withPersistApp(value):: self {
      resource+: {
        vault_azure_secret_backend_role+: { [terraformName]+: { persist_app: value } },
      },
    },
    '#withRole':: { 'function': { help: |||
      Name of the role to create 
    ||| } },
    withRole(value):: self {
      resource+: {
        vault_azure_secret_backend_role+: { [terraformName]+: { role: value } },
      },
    },
    '#withSignInAudience':: { 'function': { help: |||
      Specifies the security principal types that are allowed to sign in to the application. Valid values are: AzureADMyOrg, AzureADMultipleOrgs, AzureADandPersonalMicrosoftAccount, PersonalMicrosoftAccount 
    ||| } },
    withSignInAudience(value):: self {
      resource+: {
        vault_azure_secret_backend_role+: { [terraformName]+: { sign_in_audience: value } },
      },
    },
    '#withTags':: { 'function': { help: |||
      Comma-separated strings of Azure tags to attach to an application. 
    ||| } },
    withTags(value):: self {
      resource+: {
        vault_azure_secret_backend_role+: { [terraformName]+: { tags: value } },
      },
    },
    '#withTtl':: { 'function': { help: |||
      Specifies the default TTL for service principals generated using this role. 
    ||| } },
    withTtl(value):: self {
      resource+: {
        vault_azure_secret_backend_role+: { [terraformName]+: { ttl: value } },
      },
    },
  },
}
