{
  local outerSelf = self,
  new(terraformName, backend, impersonated_account, service_account_email):: self.functions(terraformName) {
    ref():: outerSelf.ref(terraformName),
    _type:: 'tf',
    resource+: {
      vault_gcp_secret_impersonated_account+: {
        [terraformName]+: {
          backend: backend,
          impersonated_account: impersonated_account,
          service_account_email: service_account_email,
        },
      },
    },
  },
  functions(terraformName):: {
    withForEach(value):: self {
      resource+: {
        vault_gcp_secret_impersonated_account+: { [terraformName]+: { for_each: value } },
      },
    },
    withDependsOn(value):: self {
      resource+: {
        vault_gcp_secret_impersonated_account+: { [terraformName]+: { depends_on: value } },
      },
    },
    withCount(value):: self {
      resource+: {
        vault_gcp_secret_impersonated_account+: { [terraformName]+: { count: value } },
      },
    },
    withLifecycle(value):: self {
      resource+: {
        vault_gcp_secret_impersonated_account+: { [terraformName]+: { lifecycle: value } },
      },
    },
    withProvider(value):: self {
      resource+: {
        vault_gcp_secret_impersonated_account+: { [terraformName]+: { provider: value } },
      },
    },
    withProviders(value):: self {
      resource+: {
        vault_gcp_secret_impersonated_account+: { [terraformName]+: { providers: value } },
      },
    },
    '#backend':: { 'function': { help: |||
      Path where the GCP secrets engine is mounted.
    ||| } },
    withBackend(value):: self {
      resource+: {
        vault_gcp_secret_impersonated_account+: { [terraformName]+: { backend: value } },
      },
    },
    withId(value):: self {
      resource+: {
        vault_gcp_secret_impersonated_account+: { [terraformName]+: { id: value } },
      },
    },
    '#impersonated_account':: { 'function': { help: |||
      Name of the Impersonated Account to create
    ||| } },
    withImpersonatedAccount(value):: self {
      resource+: {
        vault_gcp_secret_impersonated_account+: { [terraformName]+: { impersonated_account: value } },
      },
    },
    '#namespace':: { 'function': { help: |||
      Target namespace. (requires Enterprise)
    ||| } },
    withNamespace(value):: self {
      resource+: {
        vault_gcp_secret_impersonated_account+: { [terraformName]+: { namespace: value } },
      },
    },
    '#service_account_email':: { 'function': { help: |||
      Email of the GCP service account.
    ||| } },
    withServiceAccountEmail(value):: self {
      resource+: {
        vault_gcp_secret_impersonated_account+: { [terraformName]+: { service_account_email: value } },
      },
    },
    '#token_scopes':: { 'function': { help: |||
      List of OAuth scopes to assign to `access_token` secrets generated under this impersonated account (`access_token` impersonated accounts only) 
    ||| } },
    withTokenScopes(value):: self {
      resource+: {
        vault_gcp_secret_impersonated_account+: { [terraformName]+: { token_scopes: value } },
      },
    },
    '#ttl':: { 'function': { help: |||
      Time to live.
    ||| } },
    withTtl(value):: self {
      resource+: {
        vault_gcp_secret_impersonated_account+: { [terraformName]+: { ttl: value } },
      },
    },
  },
  ref(terraformName):: {
    local refSelf = self,
    plain(suffix=''):: '${ vault_gcp_secret_impersonated_account.%s%s }' % [terraformName, suffix],
    fields:: {
      '#backend':: { 'function': { help: |||
        Path where the GCP secrets engine is mounted.
      ||| } },
      backend(suffix=''):: refSelf.plain('.backend%s' % suffix),
      id(suffix=''):: refSelf.plain('.id%s' % suffix),
      '#impersonated_account':: { 'function': { help: |||
        Name of the Impersonated Account to create
      ||| } },
      impersonated_account(suffix=''):: refSelf.plain('.impersonated_account%s' % suffix),
      '#namespace':: { 'function': { help: |||
        Target namespace. (requires Enterprise)
      ||| } },
      namespace(suffix=''):: refSelf.plain('.namespace%s' % suffix),
      '#service_account_email':: { 'function': { help: |||
        Email of the GCP service account.
      ||| } },
      service_account_email(suffix=''):: refSelf.plain('.service_account_email%s' % suffix),
      '#service_account_project':: { 'function': { help: |||
        Project of the GCP Service Account managed by this impersonated account
      ||| } },
      service_account_project(suffix=''):: refSelf.plain('.service_account_project%s' % suffix),
      '#token_scopes':: { 'function': { help: |||
        List of OAuth scopes to assign to `access_token` secrets generated under this impersonated account (`access_token` impersonated accounts only) 
      ||| } },
      token_scopes(suffix=''):: refSelf.plain('.token_scopes%s' % suffix),
      '#ttl':: { 'function': { help: |||
        Time to live.
      ||| } },
      ttl(suffix=''):: refSelf.plain('.ttl%s' % suffix),
    },
  },
}
