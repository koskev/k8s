{
  new(terraformName, role_id):: {
    _type:: 'tf',
    resource+: {
      vault_approle_auth_backend_login+: { [terraformName]+: {
        role_id: role_id,
      } },
    },
    '#withAccessor':: { 'function': { help: |||
      The accessor for the token. 
    ||| } },
    withAccessor(value):: self {
      resource+: {
        vault_approle_auth_backend_login+: { [terraformName]+: { accessor: value } },
      },
    },
    '#withBackend':: { 'function': { help: |||
      Unique name of the auth backend to configure. 
    ||| } },
    withBackend(value):: self {
      resource+: {
        vault_approle_auth_backend_login+: { [terraformName]+: { backend: value } },
      },
    },
    '#withClientToken':: { 'function': { help: |||
      The token. 
    ||| } },
    withClientToken(value):: self {
      resource+: {
        vault_approle_auth_backend_login+: { [terraformName]+: { client_token: value } },
      },
    },
    withId(value):: self {
      resource+: {
        vault_approle_auth_backend_login+: { [terraformName]+: { id: value } },
      },
    },
    '#withLeaseDuration':: { 'function': { help: |||
      How long the token is valid for. 
    ||| } },
    withLeaseDuration(value):: self {
      resource+: {
        vault_approle_auth_backend_login+: { [terraformName]+: { lease_duration: value } },
      },
    },
    '#withLeaseStarted':: { 'function': { help: |||
      The timestamp the lease started on, as determined by the machine running Terraform. 
    ||| } },
    withLeaseStarted(value):: self {
      resource+: {
        vault_approle_auth_backend_login+: { [terraformName]+: { lease_started: value } },
      },
    },
    '#withMetadata':: { 'function': { help: |||
      Metadata associated with the token. 
    ||| } },
    withMetadata(value):: self {
      resource+: {
        vault_approle_auth_backend_login+: { [terraformName]+: { metadata: value } },
      },
    },
    '#withNamespace':: { 'function': { help: |||
      Target namespace. (requires Enterprise) 
    ||| } },
    withNamespace(value):: self {
      resource+: {
        vault_approle_auth_backend_login+: { [terraformName]+: { namespace: value } },
      },
    },
    '#withPolicies':: { 'function': { help: |||
      Policies set on the token. 
    ||| } },
    withPolicies(value):: self {
      resource+: {
        vault_approle_auth_backend_login+: { [terraformName]+: { policies: value } },
      },
    },
    '#withRenewable':: { 'function': { help: |||
      Whether the token is renewable or not. 
    ||| } },
    withRenewable(value):: self {
      resource+: {
        vault_approle_auth_backend_login+: { [terraformName]+: { renewable: value } },
      },
    },
    '#withRoleId':: { 'function': { help: |||
      The RoleID to log in with. 
    ||| } },
    withRoleId(value):: self {
      resource+: {
        vault_approle_auth_backend_login+: { [terraformName]+: { role_id: value } },
      },
    },
    '#withSecretId':: { 'function': { help: |||
      The SecretID to log in with. Required unless `bind_secret_id` is set to false on the role. 
    ||| } },
    withSecretId(value):: self {
      resource+: {
        vault_approle_auth_backend_login+: { [terraformName]+: { secret_id: value } },
      },
    },
    '#withSecretIdWo':: { 'function': { help: |||
      The SecretID to log in with. Write-only attribute that can accept ephemeral values. Required unless `bind_secret_id` is set to false on the role. 
    ||| } },
    withSecretIdWo(value):: self {
      resource+: {
        vault_approle_auth_backend_login+: { [terraformName]+: { secret_id_wo: value } },
      },
    },
    '#withSecretIdWoVersion':: { 'function': { help: |||
      Version counter for the write-only secret_id field. Increment this to trigger re-authentication with a new SecretID. 
    ||| } },
    withSecretIdWoVersion(value):: self {
      resource+: {
        vault_approle_auth_backend_login+: { [terraformName]+: { secret_id_wo_version: value } },
      },
    },
  },
}
