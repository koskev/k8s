{
  new(terraformName, name, db_name, backend, creation_statements):: {
    _type:: 'tf',
    resource+: {
      vault_database_secret_backend_role+: { [terraformName]+: {
        name: name,
        db_name: db_name,
        backend: backend,
        creation_statements: creation_statements,
      } },
    },
    withCredentialConfig(value):: self {
      resource+: {
        vault_database_secret_backend_role+: { [terraformName]+: { credential_config: value } },
      },
    },
    withName(value):: self {
      resource+: {
        vault_database_secret_backend_role+: { [terraformName]+: { name: value } },
      },
    },
    withNamespace(value):: self {
      resource+: {
        vault_database_secret_backend_role+: { [terraformName]+: { namespace: value } },
      },
    },
    withMaxTtl(value):: self {
      resource+: {
        vault_database_secret_backend_role+: { [terraformName]+: { max_ttl: value } },
      },
    },
    withDefaultTtl(value):: self {
      resource+: {
        vault_database_secret_backend_role+: { [terraformName]+: { default_ttl: value } },
      },
    },
    withRenewStatements(value):: self {
      resource+: {
        vault_database_secret_backend_role+: { [terraformName]+: { renew_statements: value } },
      },
    },
    withDbName(value):: self {
      resource+: {
        vault_database_secret_backend_role+: { [terraformName]+: { db_name: value } },
      },
    },
    withCredentialType(value):: self {
      resource+: {
        vault_database_secret_backend_role+: { [terraformName]+: { credential_type: value } },
      },
    },
    withRevocationStatements(value):: self {
      resource+: {
        vault_database_secret_backend_role+: { [terraformName]+: { revocation_statements: value } },
      },
    },
    withRollbackStatements(value):: self {
      resource+: {
        vault_database_secret_backend_role+: { [terraformName]+: { rollback_statements: value } },
      },
    },
    withBackend(value):: self {
      resource+: {
        vault_database_secret_backend_role+: { [terraformName]+: { backend: value } },
      },
    },
    withId(value):: self {
      resource+: {
        vault_database_secret_backend_role+: { [terraformName]+: { id: value } },
      },
    },
    withCreationStatements(value):: self {
      resource+: {
        vault_database_secret_backend_role+: { [terraformName]+: { creation_statements: value } },
      },
    },
  },
}
