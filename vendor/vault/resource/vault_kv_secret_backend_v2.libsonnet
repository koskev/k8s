{
  new(terraformName, mount):: {
    _type:: 'tf',
    resource+: {
      vault_kv_secret_backend_v2+: { [terraformName]+: {
        mount: mount,
      } },
    },
    withCasRequired(value):: self {
      resource+: {
        vault_kv_secret_backend_v2+: { [terraformName]+: { cas_required: value } },
      },
    },
    withMaxVersions(value):: self {
      resource+: {
        vault_kv_secret_backend_v2+: { [terraformName]+: { max_versions: value } },
      },
    },
    withMount(value):: self {
      resource+: {
        vault_kv_secret_backend_v2+: { [terraformName]+: { mount: value } },
      },
    },
    withDeleteVersionAfter(value):: self {
      resource+: {
        vault_kv_secret_backend_v2+: { [terraformName]+: { delete_version_after: value } },
      },
    },
    withNamespace(value):: self {
      resource+: {
        vault_kv_secret_backend_v2+: { [terraformName]+: { namespace: value } },
      },
    },
    withId(value):: self {
      resource+: {
        vault_kv_secret_backend_v2+: { [terraformName]+: { id: value } },
      },
    },
  },
}
