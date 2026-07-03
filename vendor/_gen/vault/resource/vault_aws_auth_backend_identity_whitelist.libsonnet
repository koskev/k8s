{
  new(terraformName):: {
    _type:: 'tf',
    resource+: {
      vault_aws_auth_backend_identity_whitelist+: { [terraformName]+: {
      } },
    },
    '#withBackend': { 'function': { help: |||
      Unique name of the auth backend to configure. 
    ||| } },
    withBackend(value):: self {
      resource+: {
        vault_aws_auth_backend_identity_whitelist+: { [terraformName]+: { backend: value } },
      },
    },
    '#withDisablePeriodicTidy': { 'function': { help: |||
      If true, disables the periodic tidying of the identiy whitelist entries. 
    ||| } },
    withDisablePeriodicTidy(value):: self {
      resource+: {
        vault_aws_auth_backend_identity_whitelist+: { [terraformName]+: { disable_periodic_tidy: value } },
      },
    },
    withId(value):: self {
      resource+: {
        vault_aws_auth_backend_identity_whitelist+: { [terraformName]+: { id: value } },
      },
    },
    '#withNamespace': { 'function': { help: |||
      Target namespace. (requires Enterprise) 
    ||| } },
    withNamespace(value):: self {
      resource+: {
        vault_aws_auth_backend_identity_whitelist+: { [terraformName]+: { namespace: value } },
      },
    },
    '#withSafetyBuffer': { 'function': { help: |||
      The amount of extra time that must have passed beyond the roletag expiration, before it's removed from backend storage. 
    ||| } },
    withSafetyBuffer(value):: self {
      resource+: {
        vault_aws_auth_backend_identity_whitelist+: { [terraformName]+: { safety_buffer: value } },
      },
    },
  },
}
