{
  '#new':: { 'function': { help: |||
    Provides an ephemeral resource to read Azure static credentials from Vault.
  ||| } },
  local outerSelf = self,
  new(terraformName, backend, role):: self.functions(terraformName) {
    ref():: outerSelf.ref(terraformName),
    _type:: 'tf',
    ephemeral+: {
      vault_azure_static_credentials+: {
        [terraformName]+: {
          backend: backend,
          role: role,
        },
      },
    },
  },
  functions(terraformName):: {
    withForEach(value):: self {
      ephemeral+: {
        vault_azure_static_credentials+: { [terraformName]+: { for_each: value } },
      },
    },
    withDependsOn(value):: self {
      ephemeral+: {
        vault_azure_static_credentials+: { [terraformName]+: { depends_on: value } },
      },
    },
    withCount(value):: self {
      ephemeral+: {
        vault_azure_static_credentials+: { [terraformName]+: { count: value } },
      },
    },
    withLifecycle(value):: self {
      ephemeral+: {
        vault_azure_static_credentials+: { [terraformName]+: { lifecycle: value } },
      },
    },
    withProvider(value):: self {
      ephemeral+: {
        vault_azure_static_credentials+: { [terraformName]+: { provider: value } },
      },
    },
    withProviders(value):: self {
      ephemeral+: {
        vault_azure_static_credentials+: { [terraformName]+: { providers: value } },
      },
    },
    '#backend':: { 'function': { help: |||
      Azure Secret Backend to read credentials from.
    ||| } },
    withBackend(value):: self {
      ephemeral+: {
        vault_azure_static_credentials+: { [terraformName]+: { backend: value } },
      },
    },
    '#mount_id':: { 'function': { help: |||
      Terraform ID of the mount resource. Used to defer the provisioning of the ephemeral resource till the apply stage.
    ||| } },
    withMountId(value):: self {
      ephemeral+: {
        vault_azure_static_credentials+: { [terraformName]+: { mount_id: value } },
      },
    },
    '#namespace':: { 'function': { help: |||
      Target namespace. (requires Enterprise)
    ||| } },
    withNamespace(value):: self {
      ephemeral+: {
        vault_azure_static_credentials+: { [terraformName]+: { namespace: value } },
      },
    },
    '#request_metadata':: { 'function': { help: |||
      Input metadata to send with the request to Vault.
    ||| } },
    withRequestMetadata(value):: self {
      ephemeral+: {
        vault_azure_static_credentials+: { [terraformName]+: { request_metadata: value } },
      },
    },
    '#role':: { 'function': { help: |||
      Static role name to fetch credentials for.
    ||| } },
    withRole(value):: self {
      ephemeral+: {
        vault_azure_static_credentials+: { [terraformName]+: { role: value } },
      },
    },
  },
  ref(terraformName):: {
    local refSelf = self,
    plain(suffix=''):: '${ vault_azure_static_credentials.%s%s }' % [terraformName, suffix],
    fields:: {
      '#backend':: { 'function': { help: |||
        Azure Secret Backend to read credentials from.
      ||| } },
      backend(suffix=''):: refSelf.plain('.backend%s' % suffix),
      '#client_id':: { 'function': { help: |||
        Client ID of the Azure application.
      ||| } },
      client_id(suffix=''):: refSelf.plain('.client_id%s' % suffix),
      '#client_secret':: { 'function': { help: |||
        Client secret of the Azure application.
      ||| } },
      client_secret(suffix=''):: refSelf.plain('.client_secret%s' % suffix),
      '#expiration':: { 'function': { help: |||
        Credential expiration time (RFC3339).
      ||| } },
      expiration(suffix=''):: refSelf.plain('.expiration%s' % suffix),
      '#metadata':: { 'function': { help: |||
        Metadata returned by Vault for the credentials.
      ||| } },
      metadata(suffix=''):: refSelf.plain('.metadata%s' % suffix),
      '#mount_id':: { 'function': { help: |||
        Terraform ID of the mount resource. Used to defer the provisioning of the ephemeral resource till the apply stage.
      ||| } },
      mount_id(suffix=''):: refSelf.plain('.mount_id%s' % suffix),
      '#namespace':: { 'function': { help: |||
        Target namespace. (requires Enterprise)
      ||| } },
      namespace(suffix=''):: refSelf.plain('.namespace%s' % suffix),
      '#request_metadata':: { 'function': { help: |||
        Input metadata to send with the request to Vault.
      ||| } },
      request_metadata(suffix=''):: refSelf.plain('.request_metadata%s' % suffix),
      '#role':: { 'function': { help: |||
        Static role name to fetch credentials for.
      ||| } },
      role(suffix=''):: refSelf.plain('.role%s' % suffix),
      '#secret_id':: { 'function': { help: |||
        Secret ID of the Azure application.
      ||| } },
      secret_id(suffix=''):: refSelf.plain('.secret_id%s' % suffix),
    },
  },
}
