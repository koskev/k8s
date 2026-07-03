{
  new(terraformName, backend, application_object_id, role):: {
    _type:: 'tf',
    resource+: {
      vault_azure_secret_backend_static_role+: { [terraformName]+: {
        backend: backend,
        application_object_id: application_object_id,
        role: role,
      } },
    },
    withDeferInitialCreds(value):: self {
      resource+: {
        vault_azure_secret_backend_static_role+: { [terraformName]+: { defer_initial_creds: value } },
      },
    },
    withId(value):: self {
      resource+: {
        vault_azure_secret_backend_static_role+: { [terraformName]+: { id: value } },
      },
    },
    withBackend(value):: self {
      resource+: {
        vault_azure_secret_backend_static_role+: { [terraformName]+: { backend: value } },
      },
    },
    withApplicationObjectId(value):: self {
      resource+: {
        vault_azure_secret_backend_static_role+: { [terraformName]+: { application_object_id: value } },
      },
    },
    withClientSecret(value):: self {
      resource+: {
        vault_azure_secret_backend_static_role+: { [terraformName]+: { client_secret: value } },
      },
    },
    withRole(value):: self {
      resource+: {
        vault_azure_secret_backend_static_role+: { [terraformName]+: { role: value } },
      },
    },
    withSkipImportRotation(value):: self {
      resource+: {
        vault_azure_secret_backend_static_role+: { [terraformName]+: { skip_import_rotation: value } },
      },
    },
    withSecretId(value):: self {
      resource+: {
        vault_azure_secret_backend_static_role+: { [terraformName]+: { secret_id: value } },
      },
    },
    withNamespace(value):: self {
      resource+: {
        vault_azure_secret_backend_static_role+: { [terraformName]+: { namespace: value } },
      },
    },
    withExpiration(value):: self {
      resource+: {
        vault_azure_secret_backend_static_role+: { [terraformName]+: { expiration: value } },
      },
    },
    withTtl(value):: self {
      resource+: {
        vault_azure_secret_backend_static_role+: { [terraformName]+: { ttl: value } },
      },
    },
    withMetadata(value):: self {
      resource+: {
        vault_azure_secret_backend_static_role+: { [terraformName]+: { metadata: value } },
      },
    },
  },
}
