{
  local outerSelf = self,
  new(terraformName, backend, service_account_email, static_account):: self.functions(terraformName) {
    ref():: outerSelf.ref(terraformName),
    _type:: 'tf',
    resource+: {
      vault_gcp_secret_static_account+: {
        [terraformName]+: {
          backend: backend,
          service_account_email: service_account_email,
          static_account: static_account,
        },
      },
    },
  },
  functions(terraformName):: {
    '#withBackend':: { 'function': { help: |||
      Path where the GCP secrets engine is mounted.
    ||| } },
    withBackend(value):: self {
      resource+: {
        vault_gcp_secret_static_account+: { [terraformName]+: { backend: value } },
      },
    },
    withId(value):: self {
      resource+: {
        vault_gcp_secret_static_account+: { [terraformName]+: { id: value } },
      },
    },
    '#withNamespace':: { 'function': { help: |||
      Target namespace. (requires Enterprise)
    ||| } },
    withNamespace(value):: self {
      resource+: {
        vault_gcp_secret_static_account+: { [terraformName]+: { namespace: value } },
      },
    },
    '#withSecretType':: { 'function': { help: |||
      Type of secret generated for this static account. Defaults to `access_token`. Accepted values: `access_token`, `service_account_key`
    ||| } },
    withSecretType(value):: self {
      resource+: {
        vault_gcp_secret_static_account+: { [terraformName]+: { secret_type: value } },
      },
    },
    '#withServiceAccountEmail':: { 'function': { help: |||
      Email of the GCP service account.
    ||| } },
    withServiceAccountEmail(value):: self {
      resource+: {
        vault_gcp_secret_static_account+: { [terraformName]+: { service_account_email: value } },
      },
    },
    '#withStaticAccount':: { 'function': { help: |||
      Name of the Static Account to create
    ||| } },
    withStaticAccount(value):: self {
      resource+: {
        vault_gcp_secret_static_account+: { [terraformName]+: { static_account: value } },
      },
    },
    '#withTokenScopes':: { 'function': { help: |||
      List of OAuth scopes to assign to `access_token` secrets generated under this static account (`access_token` static accounts only) 
    ||| } },
    withTokenScopes(value):: self {
      resource+: {
        vault_gcp_secret_static_account+: { [terraformName]+: { token_scopes: value } },
      },
    },
  },
  ref(terraformName):: {
    local refSelf = self,
    plain(suffix=''):: '${ vault_gcp_secret_static_account.%s%s }' % [terraformName, suffix],
    fields:: {
      '#backend':: { 'function': { help: |||
        Path where the GCP secrets engine is mounted.
      ||| } },
      backend(suffix=''):: refSelf.plain('.backend%s' % suffix),
      id(suffix=''):: refSelf.plain('.id%s' % suffix),
      '#namespace':: { 'function': { help: |||
        Target namespace. (requires Enterprise)
      ||| } },
      namespace(suffix=''):: refSelf.plain('.namespace%s' % suffix),
      '#secret_type':: { 'function': { help: |||
        Type of secret generated for this static account. Defaults to `access_token`. Accepted values: `access_token`, `service_account_key`
      ||| } },
      secret_type(suffix=''):: refSelf.plain('.secret_type%s' % suffix),
      '#service_account_email':: { 'function': { help: |||
        Email of the GCP service account.
      ||| } },
      service_account_email(suffix=''):: refSelf.plain('.service_account_email%s' % suffix),
      '#service_account_project':: { 'function': { help: |||
        Project of the GCP Service Account managed by this static account
      ||| } },
      service_account_project(suffix=''):: refSelf.plain('.service_account_project%s' % suffix),
      '#static_account':: { 'function': { help: |||
        Name of the Static Account to create
      ||| } },
      static_account(suffix=''):: refSelf.plain('.static_account%s' % suffix),
      '#token_scopes':: { 'function': { help: |||
        List of OAuth scopes to assign to `access_token` secrets generated under this static account (`access_token` static accounts only) 
      ||| } },
      token_scopes(suffix=''):: refSelf.plain('.token_scopes%s' % suffix),
    },
  },
}
