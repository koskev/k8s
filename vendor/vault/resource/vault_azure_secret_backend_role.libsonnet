{
  new(terraformName, role):: {
    _type:: 'tf',
    resource+: {
      vault_azure_secret_backend_role+: { [terraformName]+: {
        role: role,
      } },
    },
    withPersistApp(value):: self {
      resource+: {
        vault_azure_secret_backend_role+: { [terraformName]+: { persist_app: value } },
      },
    },
    withPermanentlyDelete(value):: self {
      resource+: {
        vault_azure_secret_backend_role+: { [terraformName]+: { permanently_delete: value } },
      },
    },
    withExplicitMaxTtl(value):: self {
      resource+: {
        vault_azure_secret_backend_role+: { [terraformName]+: { explicit_max_ttl: value } },
      },
    },
    withTags(value):: self {
      resource+: {
        vault_azure_secret_backend_role+: { [terraformName]+: { tags: value } },
      },
    },
    withBackend(value):: self {
      resource+: {
        vault_azure_secret_backend_role+: { [terraformName]+: { backend: value } },
      },
    },
    withMaxTtl(value):: self {
      resource+: {
        vault_azure_secret_backend_role+: { [terraformName]+: { max_ttl: value } },
      },
    },
    withApplicationObjectId(value):: self {
      resource+: {
        vault_azure_secret_backend_role+: { [terraformName]+: { application_object_id: value } },
      },
    },
    withMetadata(value):: self {
      resource+: {
        vault_azure_secret_backend_role+: { [terraformName]+: { metadata: value } },
      },
    },
    withNamespace(value):: self {
      resource+: {
        vault_azure_secret_backend_role+: { [terraformName]+: { namespace: value } },
      },
    },
    withSignInAudience(value):: self {
      resource+: {
        vault_azure_secret_backend_role+: { [terraformName]+: { sign_in_audience: value } },
      },
    },
    withTtl(value):: self {
      resource+: {
        vault_azure_secret_backend_role+: { [terraformName]+: { ttl: value } },
      },
    },
    withRole(value):: self {
      resource+: {
        vault_azure_secret_backend_role+: { [terraformName]+: { role: value } },
      },
    },
    withId(value):: self {
      resource+: {
        vault_azure_secret_backend_role+: { [terraformName]+: { id: value } },
      },
    },
    withDescription(value):: self {
      resource+: {
        vault_azure_secret_backend_role+: { [terraformName]+: { description: value } },
      },
    },
  },
}
