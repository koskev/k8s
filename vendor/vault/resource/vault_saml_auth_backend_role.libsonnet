{
  new(terraformName, path, name):: {
    _type:: 'tf',
    resource+: {
      vault_saml_auth_backend_role+: { [terraformName]+: {
        path: path,
        name: name,
      } },
    },
    withTokenPeriod(value):: self {
      resource+: {
        vault_saml_auth_backend_role+: { [terraformName]+: { token_period: value } },
      },
    },
    withTokenExplicitMaxTtl(value):: self {
      resource+: {
        vault_saml_auth_backend_role+: { [terraformName]+: { token_explicit_max_ttl: value } },
      },
    },
    withId(value):: self {
      resource+: {
        vault_saml_auth_backend_role+: { [terraformName]+: { id: value } },
      },
    },
    withTokenTtl(value):: self {
      resource+: {
        vault_saml_auth_backend_role+: { [terraformName]+: { token_ttl: value } },
      },
    },
    withTokenNoDefaultPolicy(value):: self {
      resource+: {
        vault_saml_auth_backend_role+: { [terraformName]+: { token_no_default_policy: value } },
      },
    },
    withTokenType(value):: self {
      resource+: {
        vault_saml_auth_backend_role+: { [terraformName]+: { token_type: value } },
      },
    },
    withPath(value):: self {
      resource+: {
        vault_saml_auth_backend_role+: { [terraformName]+: { path: value } },
      },
    },
    withGroupsAttribute(value):: self {
      resource+: {
        vault_saml_auth_backend_role+: { [terraformName]+: { groups_attribute: value } },
      },
    },
    withTokenNumUses(value):: self {
      resource+: {
        vault_saml_auth_backend_role+: { [terraformName]+: { token_num_uses: value } },
      },
    },
    withBoundSubjectsType(value):: self {
      resource+: {
        vault_saml_auth_backend_role+: { [terraformName]+: { bound_subjects_type: value } },
      },
    },
    withAliasMetadata(value):: self {
      resource+: {
        vault_saml_auth_backend_role+: { [terraformName]+: { alias_metadata: value } },
      },
    },
    withBoundAttributes(value):: self {
      resource+: {
        vault_saml_auth_backend_role+: { [terraformName]+: { bound_attributes: value } },
      },
    },
    withTokenMaxTtl(value):: self {
      resource+: {
        vault_saml_auth_backend_role+: { [terraformName]+: { token_max_ttl: value } },
      },
    },
    withBoundSubjects(value):: self {
      resource+: {
        vault_saml_auth_backend_role+: { [terraformName]+: { bound_subjects: value } },
      },
    },
    withBoundAttributesType(value):: self {
      resource+: {
        vault_saml_auth_backend_role+: { [terraformName]+: { bound_attributes_type: value } },
      },
    },
    withName(value):: self {
      resource+: {
        vault_saml_auth_backend_role+: { [terraformName]+: { name: value } },
      },
    },
    withNamespace(value):: self {
      resource+: {
        vault_saml_auth_backend_role+: { [terraformName]+: { namespace: value } },
      },
    },
    withTokenBoundCidrs(value):: self {
      resource+: {
        vault_saml_auth_backend_role+: { [terraformName]+: { token_bound_cidrs: value } },
      },
    },
    withTokenPolicies(value):: self {
      resource+: {
        vault_saml_auth_backend_role+: { [terraformName]+: { token_policies: value } },
      },
    },
  },
}
