{
  new(terraformName, role_name, bound_service_account_names):: {
    _type:: 'tf',
    resource+: {
      vault_kubernetes_auth_backend_role+: { [terraformName]+: {
        role_name: role_name,
        bound_service_account_names: bound_service_account_names,
      } },
    },
    withId(value):: self {
      resource+: {
        vault_kubernetes_auth_backend_role+: { [terraformName]+: { id: value } },
      },
    },
    withNamespace(value):: self {
      resource+: {
        vault_kubernetes_auth_backend_role+: { [terraformName]+: { namespace: value } },
      },
    },
    withRoleName(value):: self {
      resource+: {
        vault_kubernetes_auth_backend_role+: { [terraformName]+: { role_name: value } },
      },
    },
    withBackend(value):: self {
      resource+: {
        vault_kubernetes_auth_backend_role+: { [terraformName]+: { backend: value } },
      },
    },
    withAliasNameSource(value):: self {
      resource+: {
        vault_kubernetes_auth_backend_role+: { [terraformName]+: { alias_name_source: value } },
      },
    },
    withTokenNumUses(value):: self {
      resource+: {
        vault_kubernetes_auth_backend_role+: { [terraformName]+: { token_num_uses: value } },
      },
    },
    withTokenPolicies(value):: self {
      resource+: {
        vault_kubernetes_auth_backend_role+: { [terraformName]+: { token_policies: value } },
      },
    },
    withBoundServiceAccountNames(value):: self {
      resource+: {
        vault_kubernetes_auth_backend_role+: { [terraformName]+: { bound_service_account_names: value } },
      },
    },
    withTokenNoDefaultPolicy(value):: self {
      resource+: {
        vault_kubernetes_auth_backend_role+: { [terraformName]+: { token_no_default_policy: value } },
      },
    },
    withTokenBoundCidrs(value):: self {
      resource+: {
        vault_kubernetes_auth_backend_role+: { [terraformName]+: { token_bound_cidrs: value } },
      },
    },
    withBoundServiceAccountNamespaceSelector(value):: self {
      resource+: {
        vault_kubernetes_auth_backend_role+: { [terraformName]+: { bound_service_account_namespace_selector: value } },
      },
    },
    withAudience(value):: self {
      resource+: {
        vault_kubernetes_auth_backend_role+: { [terraformName]+: { audience: value } },
      },
    },
    withBoundServiceAccountNamespaces(value):: self {
      resource+: {
        vault_kubernetes_auth_backend_role+: { [terraformName]+: { bound_service_account_namespaces: value } },
      },
    },
    withTokenMaxTtl(value):: self {
      resource+: {
        vault_kubernetes_auth_backend_role+: { [terraformName]+: { token_max_ttl: value } },
      },
    },
    withTokenType(value):: self {
      resource+: {
        vault_kubernetes_auth_backend_role+: { [terraformName]+: { token_type: value } },
      },
    },
    withAliasMetadata(value):: self {
      resource+: {
        vault_kubernetes_auth_backend_role+: { [terraformName]+: { alias_metadata: value } },
      },
    },
    withTokenExplicitMaxTtl(value):: self {
      resource+: {
        vault_kubernetes_auth_backend_role+: { [terraformName]+: { token_explicit_max_ttl: value } },
      },
    },
    withTokenTtl(value):: self {
      resource+: {
        vault_kubernetes_auth_backend_role+: { [terraformName]+: { token_ttl: value } },
      },
    },
    withTokenPeriod(value):: self {
      resource+: {
        vault_kubernetes_auth_backend_role+: { [terraformName]+: { token_period: value } },
      },
    },
  },
}
