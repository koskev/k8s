{
  new(terraformName, application_object_id, backend, role):: self.functions(terraformName) {
    _type:: 'tf',
    resource+: {
      vault_azure_secret_backend_static_role+: {
        [terraformName]+: {
          application_object_id: application_object_id,
          backend: backend,
          role: role,
        },
      },
    },
  },
  functions(terraformName):: {
    '#withApplicationObjectId':: { 'function': { help: |||
      Application object ID for an existing service principal that is managed by the static role. 
    ||| } },
    withApplicationObjectId(value):: self {
      resource+: {
        vault_azure_secret_backend_static_role+: { [terraformName]+: { application_object_id: value } },
      },
    },
    '#withBackend':: { 'function': { help: |||
      The path where the Azure secrets backend is mounted. 
    ||| } },
    withBackend(value):: self {
      resource+: {
        vault_azure_secret_backend_static_role+: { [terraformName]+: { backend: value } },
      },
    },
    '#withClientSecret':: { 'function': { help: |||
      The plaintext secret value of the credential you want to import. 
    ||| } },
    withClientSecret(value):: self {
      resource+: {
        vault_azure_secret_backend_static_role+: { [terraformName]+: { client_secret: value } },
      },
    },
    '#withDeferInitialCreds':: { 'function': { help: |||
      If true, the initial creation of credentials will be deferred until first static-creds read. 
    ||| } },
    withDeferInitialCreds(value):: self {
      resource+: {
        vault_azure_secret_backend_static_role+: { [terraformName]+: { defer_initial_creds: value } },
      },
    },
    '#withExpiration':: { 'function': { help: |||
      A future expiration time for the imported credential, in RFC3339 format. 
    ||| } },
    withExpiration(value):: self {
      resource+: {
        vault_azure_secret_backend_static_role+: { [terraformName]+: { expiration: value } },
      },
    },
    '#withMetadata':: { 'function': { help: |||
      A map of string key/value pairs that will be stored as metadata on the secret. 
    ||| } },
    withMetadata(value):: self {
      resource+: {
        vault_azure_secret_backend_static_role+: { [terraformName]+: { metadata: value } },
      },
    },
    '#withNamespace':: { 'function': { help: |||
      Target namespace. (requires Enterprise) 
    ||| } },
    withNamespace(value):: self {
      resource+: {
        vault_azure_secret_backend_static_role+: { [terraformName]+: { namespace: value } },
      },
    },
    '#withRole':: { 'function': { help: |||
      Name of the static role to create. 
    ||| } },
    withRole(value):: self {
      resource+: {
        vault_azure_secret_backend_static_role+: { [terraformName]+: { role: value } },
      },
    },
    '#withSecretId':: { 'function': { help: |||
      The secret ID of the Azure password credential you want to import. 
    ||| } },
    withSecretId(value):: self {
      resource+: {
        vault_azure_secret_backend_static_role+: { [terraformName]+: { secret_id: value } },
      },
    },
    '#withSkipImportRotation':: { 'function': { help: |||
      If true, skip rotation of the client secret on import. 
    ||| } },
    withSkipImportRotation(value):: self {
      resource+: {
        vault_azure_secret_backend_static_role+: { [terraformName]+: { skip_import_rotation: value } },
      },
    },
    '#withTtl':: { 'function': { help: |||
      Timespan of 1 month or more during which the role credentials are valid. 
    ||| } },
    withTtl(value):: self {
      resource+: {
        vault_azure_secret_backend_static_role+: { [terraformName]+: { ttl: value } },
      },
    },
  },
  ref(terraformName):: {
    local refSelf = self,
    plain(suffix=''):: '${ vault_azure_secret_backend_static_role.%s%s }' % [terraformName, suffix],
    fields:: {
      '#application_object_id':: { 'function': { help: |||
        Application object ID for an existing service principal that is managed by the static role. 
      ||| } },
      application_object_id(suffix=''):: refSelf.plain('.application_object_id%s' % suffix),
      '#backend':: { 'function': { help: |||
        The path where the Azure secrets backend is mounted. 
      ||| } },
      backend(suffix=''):: refSelf.plain('.backend%s' % suffix),
      '#client_secret':: { 'function': { help: |||
        The plaintext secret value of the credential you want to import. 
      ||| } },
      client_secret(suffix=''):: refSelf.plain('.client_secret%s' % suffix),
      '#defer_initial_creds':: { 'function': { help: |||
        If true, the initial creation of credentials will be deferred until first static-creds read. 
      ||| } },
      defer_initial_creds(suffix=''):: refSelf.plain('.defer_initial_creds%s' % suffix),
      '#expiration':: { 'function': { help: |||
        A future expiration time for the imported credential, in RFC3339 format. 
      ||| } },
      expiration(suffix=''):: refSelf.plain('.expiration%s' % suffix),
      id(suffix=''):: refSelf.plain('.id%s' % suffix),
      '#metadata':: { 'function': { help: |||
        A map of string key/value pairs that will be stored as metadata on the secret. 
      ||| } },
      metadata(suffix=''):: refSelf.plain('.metadata%s' % suffix),
      '#namespace':: { 'function': { help: |||
        Target namespace. (requires Enterprise) 
      ||| } },
      namespace(suffix=''):: refSelf.plain('.namespace%s' % suffix),
      '#role':: { 'function': { help: |||
        Name of the static role to create. 
      ||| } },
      role(suffix=''):: refSelf.plain('.role%s' % suffix),
      '#secret_id':: { 'function': { help: |||
        The secret ID of the Azure password credential you want to import. 
      ||| } },
      secret_id(suffix=''):: refSelf.plain('.secret_id%s' % suffix),
      '#skip_import_rotation':: { 'function': { help: |||
        If true, skip rotation of the client secret on import. 
      ||| } },
      skip_import_rotation(suffix=''):: refSelf.plain('.skip_import_rotation%s' % suffix),
      '#ttl':: { 'function': { help: |||
        Timespan of 1 month or more during which the role credentials are valid. 
      ||| } },
      ttl(suffix=''):: refSelf.plain('.ttl%s' % suffix),
    },
  },
}
