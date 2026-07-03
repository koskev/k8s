{
  new(terraformName, role):: self.functions(terraformName) {
    _type:: 'tf',
    resource+: {
      vault_azure_secret_backend_role+: {
        [terraformName]+: {
          role: role,
        },
      },
    },
  },
  functions(terraformName):: {
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
  ref(terraformName):: {
    local refSelf = self,
    plain(suffix=''):: '${ vault_azure_secret_backend_role.%s%s }' % [terraformName, suffix],
    fields:: {
      '#application_object_id':: { 'function': { help: |||
        Application Object ID for an existing service principal that will be used instead of creating dynamic service principals. 
      ||| } },
      application_object_id(suffix=''):: refSelf.plain('.application_object_id%s' % suffix),
      '#backend':: { 'function': { help: |||
        Unique name of the auth backend to configure. 
      ||| } },
      backend(suffix=''):: refSelf.plain('.backend%s' % suffix),
      '#description':: { 'function': { help: |||
        Human-friendly description of the mount for the backend. 
      ||| } },
      description(suffix=''):: refSelf.plain('.description%s' % suffix),
      '#explicit_max_ttl':: { 'function': { help: |||
        Specifies the explicit maximum lifetime of the lease and service principal. 
      ||| } },
      explicit_max_ttl(suffix=''):: refSelf.plain('.explicit_max_ttl%s' % suffix),
      id(suffix=''):: refSelf.plain('.id%s' % suffix),
      '#max_ttl':: { 'function': { help: |||
        Specifies the maximum TTL for service principals generated using this role. 
      ||| } },
      max_ttl(suffix=''):: refSelf.plain('.max_ttl%s' % suffix),
      '#metadata':: { 'function': { help: |||
        A map of string key/value pairs that will be stored as metadata on the secret. 
      ||| } },
      metadata(suffix=''):: refSelf.plain('.metadata%s' % suffix),
      '#namespace':: { 'function': { help: |||
        Target namespace. (requires Enterprise) 
      ||| } },
      namespace(suffix=''):: refSelf.plain('.namespace%s' % suffix),
      '#permanently_delete':: { 'function': { help: |||
        Indicates whether the applications and service principals created by Vault will be permanently deleted when the corresponding leases expire. 
      ||| } },
      permanently_delete(suffix=''):: refSelf.plain('.permanently_delete%s' % suffix),
      '#persist_app':: { 'function': { help: |||
        If true, persists the created service principal and application for the lifetime of the role. 
      ||| } },
      persist_app(suffix=''):: refSelf.plain('.persist_app%s' % suffix),
      '#role':: { 'function': { help: |||
        Name of the role to create 
      ||| } },
      role(suffix=''):: refSelf.plain('.role%s' % suffix),
      '#sign_in_audience':: { 'function': { help: |||
        Specifies the security principal types that are allowed to sign in to the application. Valid values are: AzureADMyOrg, AzureADMultipleOrgs, AzureADandPersonalMicrosoftAccount, PersonalMicrosoftAccount 
      ||| } },
      sign_in_audience(suffix=''):: refSelf.plain('.sign_in_audience%s' % suffix),
      '#tags':: { 'function': { help: |||
        Comma-separated strings of Azure tags to attach to an application. 
      ||| } },
      tags(suffix=''):: refSelf.plain('.tags%s' % suffix),
      '#ttl':: { 'function': { help: |||
        Specifies the default TTL for service principals generated using this role. 
      ||| } },
      ttl(suffix=''):: refSelf.plain('.ttl%s' % suffix),
    },
  },
}
