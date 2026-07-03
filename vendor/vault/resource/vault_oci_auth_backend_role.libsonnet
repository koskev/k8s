{
  new(terraformName, name):: {
    _type:: 'tf',
    resource+: {
      vault_oci_auth_backend_role+: { [terraformName]+: {
        name: name,
      } },
    },
    withNamespace(value):: self {
      resource+: {
        vault_oci_auth_backend_role+: { [terraformName]+: { namespace: value } },
      },
    },
    withTokenExplicitMaxTtl(value):: self {
      resource+: {
        vault_oci_auth_backend_role+: { [terraformName]+: { token_explicit_max_ttl: value } },
      },
    },
    withTokenTtl(value):: self {
      resource+: {
        vault_oci_auth_backend_role+: { [terraformName]+: { token_ttl: value } },
      },
    },
    withName(value):: self {
      resource+: {
        vault_oci_auth_backend_role+: { [terraformName]+: { name: value } },
      },
    },
    withTokenPeriod(value):: self {
      resource+: {
        vault_oci_auth_backend_role+: { [terraformName]+: { token_period: value } },
      },
    },
    withOcidList(value):: self {
      resource+: {
        vault_oci_auth_backend_role+: { [terraformName]+: { ocid_list: value } },
      },
    },
    withTokenNoDefaultPolicy(value):: self {
      resource+: {
        vault_oci_auth_backend_role+: { [terraformName]+: { token_no_default_policy: value } },
      },
    },
    withTokenBoundCidrs(value):: self {
      resource+: {
        vault_oci_auth_backend_role+: { [terraformName]+: { token_bound_cidrs: value } },
      },
    },
    withTokenMaxTtl(value):: self {
      resource+: {
        vault_oci_auth_backend_role+: { [terraformName]+: { token_max_ttl: value } },
      },
    },
    withTokenNumUses(value):: self {
      resource+: {
        vault_oci_auth_backend_role+: { [terraformName]+: { token_num_uses: value } },
      },
    },
    withId(value):: self {
      resource+: {
        vault_oci_auth_backend_role+: { [terraformName]+: { id: value } },
      },
    },
    withTokenPolicies(value):: self {
      resource+: {
        vault_oci_auth_backend_role+: { [terraformName]+: { token_policies: value } },
      },
    },
    withTokenType(value):: self {
      resource+: {
        vault_oci_auth_backend_role+: { [terraformName]+: { token_type: value } },
      },
    },
    withBackend(value):: self {
      resource+: {
        vault_oci_auth_backend_role+: { [terraformName]+: { backend: value } },
      },
    },
    withAliasMetadata(value):: self {
      resource+: {
        vault_oci_auth_backend_role+: { [terraformName]+: { alias_metadata: value } },
      },
    },
  },
}
