{
  '#new':: { 'function': { help: |||
    Provides an ephemeral resource to generate GCP OAuth2 access tokens from Vault.
  ||| } },
  local outerSelf = self,
  new(terraformName, mount):: self.functions(terraformName) {
    ref():: outerSelf.ref(terraformName),
    _type:: 'tf',
    ephemeral+: {
      vault_gcp_oauth2_access_token+: {
        [terraformName]+: {
          mount: mount,
        },
      },
    },
  },
  functions(terraformName):: {
    withForEach(value):: self {
      ephemeral+: {
        vault_gcp_oauth2_access_token+: { [terraformName]+: { for_each: value } },
      },
    },
    withDependsOn(value):: self {
      ephemeral+: {
        vault_gcp_oauth2_access_token+: { [terraformName]+: { depends_on: value } },
      },
    },
    withCount(value):: self {
      ephemeral+: {
        vault_gcp_oauth2_access_token+: { [terraformName]+: { count: value } },
      },
    },
    withLifecycle(value):: self {
      ephemeral+: {
        vault_gcp_oauth2_access_token+: { [terraformName]+: { lifecycle: value } },
      },
    },
    withProvider(value):: self {
      ephemeral+: {
        vault_gcp_oauth2_access_token+: { [terraformName]+: { provider: value } },
      },
    },
    withProviders(value):: self {
      ephemeral+: {
        vault_gcp_oauth2_access_token+: { [terraformName]+: { providers: value } },
      },
    },
    '#impersonated_account':: { 'function': { help: |||
      GCP Secret Impersonated Account to generate OAuth2 access token for. Mutually exclusive with `roleset` and `static_account`.
    ||| } },
    withImpersonatedAccount(value):: self {
      ephemeral+: {
        vault_gcp_oauth2_access_token+: { [terraformName]+: { impersonated_account: value } },
      },
    },
    '#max_retries':: { 'function': { help: |||
      Maximum number of retries when the GCP service account or key is not yet ready. Each retry waits 1 second. Defaults to 10.
    ||| } },
    withMaxRetries(value):: self {
      ephemeral+: {
        vault_gcp_oauth2_access_token+: { [terraformName]+: { max_retries: value } },
      },
    },
    '#mount':: { 'function': { help: |||
      Mount path for the GCP Secret Backend to read credentials from.
    ||| } },
    withMount(value):: self {
      ephemeral+: {
        vault_gcp_oauth2_access_token+: { [terraformName]+: { mount: value } },
      },
    },
    '#mount_id':: { 'function': { help: |||
      Terraform ID of the mount resource. Used to defer the provisioning of the ephemeral resource till the apply stage.
    ||| } },
    withMountId(value):: self {
      ephemeral+: {
        vault_gcp_oauth2_access_token+: { [terraformName]+: { mount_id: value } },
      },
    },
    '#namespace':: { 'function': { help: |||
      Target namespace. (requires Enterprise)
    ||| } },
    withNamespace(value):: self {
      ephemeral+: {
        vault_gcp_oauth2_access_token+: { [terraformName]+: { namespace: value } },
      },
    },
    '#roleset':: { 'function': { help: |||
      GCP Secret Roleset to generate OAuth2 access token for. Mutually exclusive with `static_account` and `impersonated_account`.
    ||| } },
    withRoleset(value):: self {
      ephemeral+: {
        vault_gcp_oauth2_access_token+: { [terraformName]+: { roleset: value } },
      },
    },
    '#static_account':: { 'function': { help: |||
      GCP Secret Static Account to generate OAuth2 access token for. Mutually exclusive with `roleset` and `impersonated_account`.
    ||| } },
    withStaticAccount(value):: self {
      ephemeral+: {
        vault_gcp_oauth2_access_token+: { [terraformName]+: { static_account: value } },
      },
    },
  },
  ref(terraformName):: {
    local refSelf = self,
    plain(suffix=''):: '${ vault_gcp_oauth2_access_token.%s%s }' % [terraformName, suffix],
    fields:: {
      '#impersonated_account':: { 'function': { help: |||
        GCP Secret Impersonated Account to generate OAuth2 access token for. Mutually exclusive with `roleset` and `static_account`.
      ||| } },
      impersonated_account(suffix=''):: refSelf.plain('.impersonated_account%s' % suffix),
      '#lease_duration':: { 'function': { help: |||
        Lease duration in seconds relative to the time in lease_start_time.
      ||| } },
      lease_duration(suffix=''):: refSelf.plain('.lease_duration%s' % suffix),
      '#lease_id':: { 'function': { help: |||
        Lease identifier assigned by vault.
      ||| } },
      lease_id(suffix=''):: refSelf.plain('.lease_id%s' % suffix),
      '#lease_renewable':: { 'function': { help: |||
        True if the duration of this lease can be extended through renewal.
      ||| } },
      lease_renewable(suffix=''):: refSelf.plain('.lease_renewable%s' % suffix),
      '#lease_start_time':: { 'function': { help: |||
        Time at which the lease was read, using the clock of the system where Terraform was running.
      ||| } },
      lease_start_time(suffix=''):: refSelf.plain('.lease_start_time%s' % suffix),
      '#max_retries':: { 'function': { help: |||
        Maximum number of retries when the GCP service account or key is not yet ready. Each retry waits 1 second. Defaults to 10.
      ||| } },
      max_retries(suffix=''):: refSelf.plain('.max_retries%s' % suffix),
      '#mount':: { 'function': { help: |||
        Mount path for the GCP Secret Backend to read credentials from.
      ||| } },
      mount(suffix=''):: refSelf.plain('.mount%s' % suffix),
      '#mount_id':: { 'function': { help: |||
        Terraform ID of the mount resource. Used to defer the provisioning of the ephemeral resource till the apply stage.
      ||| } },
      mount_id(suffix=''):: refSelf.plain('.mount_id%s' % suffix),
      '#namespace':: { 'function': { help: |||
        Target namespace. (requires Enterprise)
      ||| } },
      namespace(suffix=''):: refSelf.plain('.namespace%s' % suffix),
      '#roleset':: { 'function': { help: |||
        GCP Secret Roleset to generate OAuth2 access token for. Mutually exclusive with `static_account` and `impersonated_account`.
      ||| } },
      roleset(suffix=''):: refSelf.plain('.roleset%s' % suffix),
      '#static_account':: { 'function': { help: |||
        GCP Secret Static Account to generate OAuth2 access token for. Mutually exclusive with `roleset` and `impersonated_account`.
      ||| } },
      static_account(suffix=''):: refSelf.plain('.static_account%s' % suffix),
      '#token':: { 'function': { help: |||
        The OAuth2 access token.
      ||| } },
      token(suffix=''):: refSelf.plain('.token%s' % suffix),
      '#token_ttl':: { 'function': { help: |||
        The TTL of the token in seconds.
      ||| } },
      token_ttl(suffix=''):: refSelf.plain('.token_ttl%s' % suffix),
    },
  },
}
