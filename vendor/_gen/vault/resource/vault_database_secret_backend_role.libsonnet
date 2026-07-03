{
  new(terraformName, backend, creation_statements, db_name, name):: {
    _type:: 'tf',
    resource+: {
      vault_database_secret_backend_role+: { [terraformName]+: {
        backend: backend,
        creation_statements: creation_statements,
        db_name: db_name,
        name: name,
      } },
    },
    '#withBackend': { 'function': { help: |||
      The path of the Database Secret Backend the role belongs to. 
    ||| } },
    withBackend(value):: self {
      resource+: {
        vault_database_secret_backend_role+: { [terraformName]+: { backend: value } },
      },
    },
    '#withCreationStatements': { 'function': { help: |||
      Database statements to execute to create and configure a user. 
    ||| } },
    withCreationStatements(value):: self {
      resource+: {
        vault_database_secret_backend_role+: { [terraformName]+: { creation_statements: value } },
      },
    },
    '#withCredentialConfig': { 'function': { help: |||
      Specifies the configuration for the given credential_type. 
    ||| } },
    withCredentialConfig(value):: self {
      resource+: {
        vault_database_secret_backend_role+: { [terraformName]+: { credential_config: value } },
      },
    },
    '#withCredentialType': { 'function': { help: |||
      Specifies the type of credential that will be generated for the role. 
    ||| } },
    withCredentialType(value):: self {
      resource+: {
        vault_database_secret_backend_role+: { [terraformName]+: { credential_type: value } },
      },
    },
    '#withDbName': { 'function': { help: |||
      Database connection to use for this role. 
    ||| } },
    withDbName(value):: self {
      resource+: {
        vault_database_secret_backend_role+: { [terraformName]+: { db_name: value } },
      },
    },
    '#withDefaultTtl': { 'function': { help: |||
      Default TTL for leases associated with this role, in seconds. 
    ||| } },
    withDefaultTtl(value):: self {
      resource+: {
        vault_database_secret_backend_role+: { [terraformName]+: { default_ttl: value } },
      },
    },
    withId(value):: self {
      resource+: {
        vault_database_secret_backend_role+: { [terraformName]+: { id: value } },
      },
    },
    '#withMaxTtl': { 'function': { help: |||
      Maximum TTL for leases associated with this role, in seconds. 
    ||| } },
    withMaxTtl(value):: self {
      resource+: {
        vault_database_secret_backend_role+: { [terraformName]+: { max_ttl: value } },
      },
    },
    '#withName': { 'function': { help: |||
      Unique name for the role. 
    ||| } },
    withName(value):: self {
      resource+: {
        vault_database_secret_backend_role+: { [terraformName]+: { name: value } },
      },
    },
    '#withNamespace': { 'function': { help: |||
      Target namespace. (requires Enterprise) 
    ||| } },
    withNamespace(value):: self {
      resource+: {
        vault_database_secret_backend_role+: { [terraformName]+: { namespace: value } },
      },
    },
    '#withRenewStatements': { 'function': { help: |||
      Database statements to execute to renew a user. 
    ||| } },
    withRenewStatements(value):: self {
      resource+: {
        vault_database_secret_backend_role+: { [terraformName]+: { renew_statements: value } },
      },
    },
    '#withRevocationStatements': { 'function': { help: |||
      Database statements to execute to revoke a user. 
    ||| } },
    withRevocationStatements(value):: self {
      resource+: {
        vault_database_secret_backend_role+: { [terraformName]+: { revocation_statements: value } },
      },
    },
    '#withRollbackStatements': { 'function': { help: |||
      Database statements to execute to rollback a create operation in the event of an error. 
    ||| } },
    withRollbackStatements(value):: self {
      resource+: {
        vault_database_secret_backend_role+: { [terraformName]+: { rollback_statements: value } },
      },
    },
  },
}
