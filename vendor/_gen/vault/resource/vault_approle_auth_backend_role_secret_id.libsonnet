{
  new(terraformName, role_name):: {
    _type:: 'tf',
    resource+: {
      vault_approle_auth_backend_role_secret_id+: { [terraformName]+: {
        role_name: role_name,
      } },
    },
    '#withAccessor': { 'function': { help: |||
      The unique ID used to access this SecretID. 
    ||| } },
    withAccessor(value):: self {
      resource+: {
        vault_approle_auth_backend_role_secret_id+: { [terraformName]+: { accessor: value } },
      },
    },
    '#withBackend': { 'function': { help: |||
      Unique name of the auth backend to configure. 
    ||| } },
    withBackend(value):: self {
      resource+: {
        vault_approle_auth_backend_role_secret_id+: { [terraformName]+: { backend: value } },
      },
    },
    '#withCidrList': { 'function': { help: |||
      List of CIDR blocks that can log in using the SecretID. 
    ||| } },
    withCidrList(value):: self {
      resource+: {
        vault_approle_auth_backend_role_secret_id+: { [terraformName]+: { cidr_list: value } },
      },
    },
    withId(value):: self {
      resource+: {
        vault_approle_auth_backend_role_secret_id+: { [terraformName]+: { id: value } },
      },
    },
    '#withMetadata': { 'function': { help: |||
      JSON-encoded secret data to write. 
    ||| } },
    withMetadata(value):: self {
      resource+: {
        vault_approle_auth_backend_role_secret_id+: { [terraformName]+: { metadata: value } },
      },
    },
    '#withNamespace': { 'function': { help: |||
      Target namespace. (requires Enterprise) 
    ||| } },
    withNamespace(value):: self {
      resource+: {
        vault_approle_auth_backend_role_secret_id+: { [terraformName]+: { namespace: value } },
      },
    },
    '#withNumUses': { 'function': { help: |||
      The number of uses for the secret-id. 
    ||| } },
    withNumUses(value):: self {
      resource+: {
        vault_approle_auth_backend_role_secret_id+: { [terraformName]+: { num_uses: value } },
      },
    },
    '#withRoleName': { 'function': { help: |||
      Name of the role. 
    ||| } },
    withRoleName(value):: self {
      resource+: {
        vault_approle_auth_backend_role_secret_id+: { [terraformName]+: { role_name: value } },
      },
    },
    '#withSecretId': { 'function': { help: |||
      The SecretID to be managed. If not specified, Vault auto-generates one. 
    ||| } },
    withSecretId(value):: self {
      resource+: {
        vault_approle_auth_backend_role_secret_id+: { [terraformName]+: { secret_id: value } },
      },
    },
    '#withTokenBoundCidrs': { 'function': { help: |||
      Specifies the blocks of IP addresses which are allowed to use the generated token. 
    ||| } },
    withTokenBoundCidrs(value):: self {
      resource+: {
        vault_approle_auth_backend_role_secret_id+: { [terraformName]+: { token_bound_cidrs: value } },
      },
    },
    '#withTtl': { 'function': { help: |||
      The TTL duration of the SecretID. 
    ||| } },
    withTtl(value):: self {
      resource+: {
        vault_approle_auth_backend_role_secret_id+: { [terraformName]+: { ttl: value } },
      },
    },
    '#withWithWrappedAccessor': { 'function': { help: |||
      Use the wrapped secret-id accessor as the id of this resource. If false, a fresh secret-id will be regenerated whenever the wrapping token is expired or invalidated through unwrapping. 
    ||| } },
    withWithWrappedAccessor(value):: self {
      resource+: {
        vault_approle_auth_backend_role_secret_id+: { [terraformName]+: { with_wrapped_accessor: value } },
      },
    },
    '#withWrappingAccessor': { 'function': { help: |||
      The wrapped SecretID accessor. 
    ||| } },
    withWrappingAccessor(value):: self {
      resource+: {
        vault_approle_auth_backend_role_secret_id+: { [terraformName]+: { wrapping_accessor: value } },
      },
    },
    '#withWrappingToken': { 'function': { help: |||
      The wrapped SecretID token. 
    ||| } },
    withWrappingToken(value):: self {
      resource+: {
        vault_approle_auth_backend_role_secret_id+: { [terraformName]+: { wrapping_token: value } },
      },
    },
    '#withWrappingTtl': { 'function': { help: |||
      The TTL duration of the wrapped SecretID. 
    ||| } },
    withWrappingTtl(value):: self {
      resource+: {
        vault_approle_auth_backend_role_secret_id+: { [terraformName]+: { wrapping_ttl: value } },
      },
    },
  },
}
