{
  '#new':: { 'function': { help: |||
    Provides an ephemeral resource to generate GCP service account keys from Vault.
  ||| } },
  local outerSelf = self,
  new(terraformName, mount):: self.functions(terraformName) {
    ref():: outerSelf.ref(terraformName),
    _type:: 'tf',
    ephemeral+: {
      vault_gcp_service_account_key+: {
        [terraformName]+: {
          mount: mount,
        },
      },
    },
  },
  functions(terraformName):: {
    withForEach(value):: self {
      ephemeral+: {
        vault_gcp_service_account_key+: { [terraformName]+: { for_each: value } },
      },
    },
    withDependsOn(value):: self {
      ephemeral+: {
        vault_gcp_service_account_key+: { [terraformName]+: { depends_on: value } },
      },
    },
    withCount(value):: self {
      ephemeral+: {
        vault_gcp_service_account_key+: { [terraformName]+: { count: value } },
      },
    },
    withLifecycle(value):: self {
      ephemeral+: {
        vault_gcp_service_account_key+: { [terraformName]+: { lifecycle: value } },
      },
    },
    withProvider(value):: self {
      ephemeral+: {
        vault_gcp_service_account_key+: { [terraformName]+: { provider: value } },
      },
    },
    withProviders(value):: self {
      ephemeral+: {
        vault_gcp_service_account_key+: { [terraformName]+: { providers: value } },
      },
    },
    '#key_algorithm':: { 'function': { help: |||
      Key algorithm used to generate key. Defaults to 2k RSA key. Accepted values: `KEY_ALG_UNSPECIFIED`, `KEY_ALG_RSA_1024`, `KEY_ALG_RSA_2048`.
    ||| } },
    withKeyAlgorithm(value):: self {
      ephemeral+: {
        vault_gcp_service_account_key+: { [terraformName]+: { key_algorithm: value } },
      },
    },
    '#key_type':: { 'function': { help: |||
      Private key type to generate. Defaults to JSON credentials file. Accepted values: `TYPE_UNSPECIFIED`, `TYPE_PKCS12_FILE`, `TYPE_GOOGLE_CREDENTIALS_FILE`.
    ||| } },
    withKeyType(value):: self {
      ephemeral+: {
        vault_gcp_service_account_key+: { [terraformName]+: { key_type: value } },
      },
    },
    '#mount':: { 'function': { help: |||
      Mount path for the GCP Secret Backend to read credentials from.
    ||| } },
    withMount(value):: self {
      ephemeral+: {
        vault_gcp_service_account_key+: { [terraformName]+: { mount: value } },
      },
    },
    '#mount_id':: { 'function': { help: |||
      Terraform ID of the mount resource. Used to defer the provisioning of the ephemeral resource till the apply stage.
    ||| } },
    withMountId(value):: self {
      ephemeral+: {
        vault_gcp_service_account_key+: { [terraformName]+: { mount_id: value } },
      },
    },
    '#namespace':: { 'function': { help: |||
      Target namespace. (requires Enterprise)
    ||| } },
    withNamespace(value):: self {
      ephemeral+: {
        vault_gcp_service_account_key+: { [terraformName]+: { namespace: value } },
      },
    },
    '#roleset':: { 'function': { help: |||
      GCP Secret Roleset to generate credentials for. Mutually exclusive with `static_account`.
    ||| } },
    withRoleset(value):: self {
      ephemeral+: {
        vault_gcp_service_account_key+: { [terraformName]+: { roleset: value } },
      },
    },
    '#static_account':: { 'function': { help: |||
      GCP Secret Static Account to generate credentials for. Mutually exclusive with `roleset`.
    ||| } },
    withStaticAccount(value):: self {
      ephemeral+: {
        vault_gcp_service_account_key+: { [terraformName]+: { static_account: value } },
      },
    },
  },
  ref(terraformName):: {
    local refSelf = self,
    plain(suffix=''):: '${ vault_gcp_service_account_key.%s%s }' % [terraformName, suffix],
    fields:: {
      '#key_algorithm':: { 'function': { help: |||
        Key algorithm used to generate key. Defaults to 2k RSA key. Accepted values: `KEY_ALG_UNSPECIFIED`, `KEY_ALG_RSA_1024`, `KEY_ALG_RSA_2048`.
      ||| } },
      key_algorithm(suffix=''):: refSelf.plain('.key_algorithm%s' % suffix),
      '#key_type':: { 'function': { help: |||
        Private key type to generate. Defaults to JSON credentials file. Accepted values: `TYPE_UNSPECIFIED`, `TYPE_PKCS12_FILE`, `TYPE_GOOGLE_CREDENTIALS_FILE`.
      ||| } },
      key_type(suffix=''):: refSelf.plain('.key_type%s' % suffix),
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
      '#private_key_data':: { 'function': { help: |||
        The private key data in JSON format.
      ||| } },
      private_key_data(suffix=''):: refSelf.plain('.private_key_data%s' % suffix),
      '#private_key_type':: { 'function': { help: |||
        The type of the private key.
      ||| } },
      private_key_type(suffix=''):: refSelf.plain('.private_key_type%s' % suffix),
      '#roleset':: { 'function': { help: |||
        GCP Secret Roleset to generate credentials for. Mutually exclusive with `static_account`.
      ||| } },
      roleset(suffix=''):: refSelf.plain('.roleset%s' % suffix),
      '#service_account_email':: { 'function': { help: |||
        The email of the service account.
      ||| } },
      service_account_email(suffix=''):: refSelf.plain('.service_account_email%s' % suffix),
      '#static_account':: { 'function': { help: |||
        GCP Secret Static Account to generate credentials for. Mutually exclusive with `roleset`.
      ||| } },
      static_account(suffix=''):: refSelf.plain('.static_account%s' % suffix),
    },
  },
}
