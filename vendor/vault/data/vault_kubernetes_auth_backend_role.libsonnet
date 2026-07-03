{
  new(terraformName, role_name):: {
    _type:: 'tf',
    data+: {
      vault_kubernetes_auth_backend_role+: { [terraformName]+: {
        role_name: role_name,
      } },
    },
    withBoundServiceAccountNames(value):: self {
      data+: {
        vault_kubernetes_auth_backend_role+: { [terraformName]+: { bound_service_account_names: value } },
      },
    },
    withTokenNoDefaultPolicy(value):: self {
      data+: {
        vault_kubernetes_auth_backend_role+: { [terraformName]+: { token_no_default_policy: value } },
      },
    },
    withBoundServiceAccountNamespaces(value):: self {
      data+: {
        vault_kubernetes_auth_backend_role+: { [terraformName]+: { bound_service_account_namespaces: value } },
      },
    },
    withTokenBoundCidrs(value):: self {
      data+: {
        vault_kubernetes_auth_backend_role+: { [terraformName]+: { token_bound_cidrs: value } },
      },
    },
    withTokenExplicitMaxTtl(value):: self {
      data+: {
        vault_kubernetes_auth_backend_role+: { [terraformName]+: { token_explicit_max_ttl: value } },
      },
    },
    withTokenTtl(value):: self {
      data+: {
        vault_kubernetes_auth_backend_role+: { [terraformName]+: { token_ttl: value } },
      },
    },
    withBoundServiceAccountNamespaceSelector(value):: self {
      data+: {
        vault_kubernetes_auth_backend_role+: { [terraformName]+: { bound_service_account_namespace_selector: value } },
      },
    },
    withRoleName(value):: self {
      data+: {
        vault_kubernetes_auth_backend_role+: { [terraformName]+: { role_name: value } },
      },
    },
    withAudience(value):: self {
      data+: {
        vault_kubernetes_auth_backend_role+: { [terraformName]+: { audience: value } },
      },
    },
    withAliasMetadata(value):: self {
      data+: {
        vault_kubernetes_auth_backend_role+: { [terraformName]+: { alias_metadata: value } },
      },
    },
    withTokenPeriod(value):: self {
      data+: {
        vault_kubernetes_auth_backend_role+: { [terraformName]+: { token_period: value } },
      },
    },
    withNamespace(value):: self {
      data+: {
        vault_kubernetes_auth_backend_role+: { [terraformName]+: { namespace: value } },
      },
    },
    withTokenPolicies(value):: self {
      data+: {
        vault_kubernetes_auth_backend_role+: { [terraformName]+: { token_policies: value } },
      },
    },
    withAliasNameSource(value):: self {
      data+: {
        vault_kubernetes_auth_backend_role+: { [terraformName]+: { alias_name_source: value } },
      },
    },
    withId(value):: self {
      data+: {
        vault_kubernetes_auth_backend_role+: { [terraformName]+: { id: value } },
      },
    },
    withTokenNumUses(value):: self {
      data+: {
        vault_kubernetes_auth_backend_role+: { [terraformName]+: { token_num_uses: value } },
      },
    },
    withTokenMaxTtl(value):: self {
      data+: {
        vault_kubernetes_auth_backend_role+: { [terraformName]+: { token_max_ttl: value } },
      },
    },
    withBackend(value):: self {
      data+: {
        vault_kubernetes_auth_backend_role+: { [terraformName]+: { backend: value } },
      },
    },
    withTokenType(value):: self {
      data+: {
        vault_kubernetes_auth_backend_role+: { [terraformName]+: { token_type: value } },
      },
    },
  },
}
