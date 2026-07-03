{
  new(terraformName, path):: {
    _type:: 'tf',
    data+: {
      vault_auth_backend+: { [terraformName]+: {
        path: path,
      } },
    },
    withId(value):: self {
      data+: {
        vault_auth_backend+: { [terraformName]+: { id: value } },
      },
    },
    withLocal(value):: self {
      data+: {
        vault_auth_backend+: { [terraformName]+: { 'local': value } },
      },
    },
    withType(value):: self {
      data+: {
        vault_auth_backend+: { [terraformName]+: { type: value } },
      },
    },
    withDefaultLeaseTtlSeconds(value):: self {
      data+: {
        vault_auth_backend+: { [terraformName]+: { default_lease_ttl_seconds: value } },
      },
    },
    withMaxLeaseTtlSeconds(value):: self {
      data+: {
        vault_auth_backend+: { [terraformName]+: { max_lease_ttl_seconds: value } },
      },
    },
    withListingVisibility(value):: self {
      data+: {
        vault_auth_backend+: { [terraformName]+: { listing_visibility: value } },
      },
    },
    withNamespace(value):: self {
      data+: {
        vault_auth_backend+: { [terraformName]+: { namespace: value } },
      },
    },
    withDescription(value):: self {
      data+: {
        vault_auth_backend+: { [terraformName]+: { description: value } },
      },
    },
    withPath(value):: self {
      data+: {
        vault_auth_backend+: { [terraformName]+: { path: value } },
      },
    },
    withAccessor(value):: self {
      data+: {
        vault_auth_backend+: { [terraformName]+: { accessor: value } },
      },
    },
  },
}
