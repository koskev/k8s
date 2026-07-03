{
  new(terraformName, role):: {
    _type:: 'tf',
    resource+: {
      vault_aws_auth_backend_role_tag+: { [terraformName]+: {
        role: role,
      } },
    },
    '#withAllowInstanceMigration':: { 'function': { help: |||
      Allows migration of the underlying instance where the client resides. 
    ||| } },
    withAllowInstanceMigration(value):: self {
      resource+: {
        vault_aws_auth_backend_role_tag+: { [terraformName]+: { allow_instance_migration: value } },
      },
    },
    '#withBackend':: { 'function': { help: |||
      AWS auth backend to read tags from. 
    ||| } },
    withBackend(value):: self {
      resource+: {
        vault_aws_auth_backend_role_tag+: { [terraformName]+: { backend: value } },
      },
    },
    '#withDisallowReauthentication':: { 'function': { help: |||
      Only allow a single token to be granted per instance ID. 
    ||| } },
    withDisallowReauthentication(value):: self {
      resource+: {
        vault_aws_auth_backend_role_tag+: { [terraformName]+: { disallow_reauthentication: value } },
      },
    },
    withId(value):: self {
      resource+: {
        vault_aws_auth_backend_role_tag+: { [terraformName]+: { id: value } },
      },
    },
    '#withInstanceId':: { 'function': { help: |||
      Instance ID for which this tag is intended. The created tag can only be used by the instance with the given ID. 
    ||| } },
    withInstanceId(value):: self {
      resource+: {
        vault_aws_auth_backend_role_tag+: { [terraformName]+: { instance_id: value } },
      },
    },
    '#withMaxTtl':: { 'function': { help: |||
      The maximum allowed lifetime of tokens issued using this role. 
    ||| } },
    withMaxTtl(value):: self {
      resource+: {
        vault_aws_auth_backend_role_tag+: { [terraformName]+: { max_ttl: value } },
      },
    },
    '#withNamespace':: { 'function': { help: |||
      Target namespace. (requires Enterprise) 
    ||| } },
    withNamespace(value):: self {
      resource+: {
        vault_aws_auth_backend_role_tag+: { [terraformName]+: { namespace: value } },
      },
    },
    '#withPolicies':: { 'function': { help: |||
      Policies to be associated with the tag. 
    ||| } },
    withPolicies(value):: self {
      resource+: {
        vault_aws_auth_backend_role_tag+: { [terraformName]+: { policies: value } },
      },
    },
    '#withRole':: { 'function': { help: |||
      Name of the role. 
    ||| } },
    withRole(value):: self {
      resource+: {
        vault_aws_auth_backend_role_tag+: { [terraformName]+: { role: value } },
      },
    },
    withTagKey(value):: self {
      resource+: {
        vault_aws_auth_backend_role_tag+: { [terraformName]+: { tag_key: value } },
      },
    },
    withTagValue(value):: self {
      resource+: {
        vault_aws_auth_backend_role_tag+: { [terraformName]+: { tag_value: value } },
      },
    },
  },
}
