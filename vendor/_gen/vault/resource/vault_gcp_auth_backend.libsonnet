{
  new(terraformName):: {
    _type:: 'tf',
    resource+: {
      vault_gcp_auth_backend+: { [terraformName]+: {
      } },
    },
    '#withAccessor':: { 'function': { help: |||
      The accessor of the auth backend 
    ||| } },
    withAccessor(value):: self {
      resource+: {
        vault_gcp_auth_backend+: { [terraformName]+: { accessor: value } },
      },
    },
    withClientEmail(value):: self {
      resource+: {
        vault_gcp_auth_backend+: { [terraformName]+: { client_email: value } },
      },
    },
    withClientId(value):: self {
      resource+: {
        vault_gcp_auth_backend+: { [terraformName]+: { client_id: value } },
      },
    },
    withCredentials(value):: self {
      resource+: {
        vault_gcp_auth_backend+: { [terraformName]+: { credentials: value } },
      },
    },
    '#withCredentialsWo':: { 'function': { help: |||
      JSON-encoded credentials to use to connect to GCP. This field is write-only and the value cannot be read back. 
    ||| } },
    withCredentialsWo(value):: self {
      resource+: {
        vault_gcp_auth_backend+: { [terraformName]+: { credentials_wo: value } },
      },
    },
    '#withCredentialsWoVersion':: { 'function': { help: |||
      A version counter for write-only credentials. Incrementing this value will cause the provider to send the credentials to Vault. 
    ||| } },
    withCredentialsWoVersion(value):: self {
      resource+: {
        vault_gcp_auth_backend+: { [terraformName]+: { credentials_wo_version: value } },
      },
    },
    withDescription(value):: self {
      resource+: {
        vault_gcp_auth_backend+: { [terraformName]+: { description: value } },
      },
    },
    '#withDisableAutomatedRotation':: { 'function': { help: |||
      Stops rotation of the root credential until set to false. 
    ||| } },
    withDisableAutomatedRotation(value):: self {
      resource+: {
        vault_gcp_auth_backend+: { [terraformName]+: { disable_automated_rotation: value } },
      },
    },
    '#withDisableRemount':: { 'function': { help: |||
      If set, opts out of mount migration on path updates. 
    ||| } },
    withDisableRemount(value):: self {
      resource+: {
        vault_gcp_auth_backend+: { [terraformName]+: { disable_remount: value } },
      },
    },
    '#withGceAlias':: { 'function': { help: |||
      Defines what alias needs to be used during login and refelects the same in token metadata and audit logs. 
    ||| } },
    withGceAlias(value):: self {
      resource+: {
        vault_gcp_auth_backend+: { [terraformName]+: { gce_alias: value } },
      },
    },
    '#withGceMetadata':: { 'function': { help: |||
      Controls which instance metadata fields from the GCE login are captured into Vault's token metadata or audit logs. 
    ||| } },
    withGceMetadata(value):: self {
      resource+: {
        vault_gcp_auth_backend+: { [terraformName]+: { gce_metadata: value } },
      },
    },
    '#withIamAlias':: { 'function': { help: |||
      Defines what alias needs to be used during login and refelects the same in token metadata and audit logs. 
    ||| } },
    withIamAlias(value):: self {
      resource+: {
        vault_gcp_auth_backend+: { [terraformName]+: { iam_alias: value } },
      },
    },
    '#withIamMetadata':: { 'function': { help: |||
      Controls the metadata to include on the token returned by the login endpoint. 
    ||| } },
    withIamMetadata(value):: self {
      resource+: {
        vault_gcp_auth_backend+: { [terraformName]+: { iam_metadata: value } },
      },
    },
    withId(value):: self {
      resource+: {
        vault_gcp_auth_backend+: { [terraformName]+: { id: value } },
      },
    },
    '#withIdentityTokenAudience':: { 'function': { help: |||
      The audience claim value for plugin identity tokens. 
    ||| } },
    withIdentityTokenAudience(value):: self {
      resource+: {
        vault_gcp_auth_backend+: { [terraformName]+: { identity_token_audience: value } },
      },
    },
    '#withIdentityTokenKey':: { 'function': { help: |||
      The key to use for signing identity tokens. 
    ||| } },
    withIdentityTokenKey(value):: self {
      resource+: {
        vault_gcp_auth_backend+: { [terraformName]+: { identity_token_key: value } },
      },
    },
    '#withIdentityTokenTtl':: { 'function': { help: |||
      The TTL of generated tokens. 
    ||| } },
    withIdentityTokenTtl(value):: self {
      resource+: {
        vault_gcp_auth_backend+: { [terraformName]+: { identity_token_ttl: value } },
      },
    },
    '#withLocal':: { 'function': { help: |||
      Specifies if the auth method is local only 
    ||| } },
    withLocal(value):: self {
      resource+: {
        vault_gcp_auth_backend+: { [terraformName]+: { 'local': value } },
      },
    },
    '#withNamespace':: { 'function': { help: |||
      Target namespace. (requires Enterprise) 
    ||| } },
    withNamespace(value):: self {
      resource+: {
        vault_gcp_auth_backend+: { [terraformName]+: { namespace: value } },
      },
    },
    withPath(value):: self {
      resource+: {
        vault_gcp_auth_backend+: { [terraformName]+: { path: value } },
      },
    },
    withPrivateKeyId(value):: self {
      resource+: {
        vault_gcp_auth_backend+: { [terraformName]+: { private_key_id: value } },
      },
    },
    withProjectId(value):: self {
      resource+: {
        vault_gcp_auth_backend+: { [terraformName]+: { project_id: value } },
      },
    },
    '#withRotationPeriod':: { 'function': { help: |||
      The period of time in seconds between each rotation of the root credential. Cannot be used with rotation_schedule. 
    ||| } },
    withRotationPeriod(value):: self {
      resource+: {
        vault_gcp_auth_backend+: { [terraformName]+: { rotation_period: value } },
      },
    },
    '#withRotationSchedule':: { 'function': { help: |||
      The cron-style schedule for the root credential to be rotated on. Cannot be used with rotation_period. 
    ||| } },
    withRotationSchedule(value):: self {
      resource+: {
        vault_gcp_auth_backend+: { [terraformName]+: { rotation_schedule: value } },
      },
    },
    '#withRotationWindow':: { 'function': { help: |||
      The maximum amount of time in seconds Vault is allowed to complete a rotation once a scheduled rotation is triggered. Can only be used with rotation_schedule. 
    ||| } },
    withRotationWindow(value):: self {
      resource+: {
        vault_gcp_auth_backend+: { [terraformName]+: { rotation_window: value } },
      },
    },
    '#withServiceAccountEmail':: { 'function': { help: |||
      Service Account to impersonate for plugin workload identity federation. 
    ||| } },
    withServiceAccountEmail(value):: self {
      resource+: {
        vault_gcp_auth_backend+: { [terraformName]+: { service_account_email: value } },
      },
    },
    withTune(value):: self {
      resource+: {
        vault_gcp_auth_backend+: { [terraformName]+: { tune: value } },
      },
    },
  },
}
