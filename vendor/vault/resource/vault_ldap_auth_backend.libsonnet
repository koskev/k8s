{
  new(terraformName, url):: {
    _type:: 'tf',
    resource+: {
      vault_ldap_auth_backend+: { [terraformName]+: {
        url: url,
      } },
    },
    withTokenTtl(value):: self {
      resource+: {
        vault_ldap_auth_backend+: { [terraformName]+: { token_ttl: value } },
      },
    },
    withUsernameAsAlias(value):: self {
      resource+: {
        vault_ldap_auth_backend+: { [terraformName]+: { username_as_alias: value } },
      },
    },
    withTune(value):: self {
      resource+: {
        vault_ldap_auth_backend+: { [terraformName]+: { tune: value } },
      },
    },
    withConnectionTimeout(value):: self {
      resource+: {
        vault_ldap_auth_backend+: { [terraformName]+: { connection_timeout: value } },
      },
    },
    withGroupdn(value):: self {
      resource+: {
        vault_ldap_auth_backend+: { [terraformName]+: { groupdn: value } },
      },
    },
    withNamespace(value):: self {
      resource+: {
        vault_ldap_auth_backend+: { [terraformName]+: { namespace: value } },
      },
    },
    withDisableAutomatedRotation(value):: self {
      resource+: {
        vault_ldap_auth_backend+: { [terraformName]+: { disable_automated_rotation: value } },
      },
    },
    withBindpassWo(value):: self {
      resource+: {
        vault_ldap_auth_backend+: { [terraformName]+: { bindpass_wo: value } },
      },
    },
    withLocal(value):: self {
      resource+: {
        vault_ldap_auth_backend+: { [terraformName]+: { 'local': value } },
      },
    },
    withMaxPageSize(value):: self {
      resource+: {
        vault_ldap_auth_backend+: { [terraformName]+: { max_page_size: value } },
      },
    },
    withRequestTimeout(value):: self {
      resource+: {
        vault_ldap_auth_backend+: { [terraformName]+: { request_timeout: value } },
      },
    },
    withRotationPeriod(value):: self {
      resource+: {
        vault_ldap_auth_backend+: { [terraformName]+: { rotation_period: value } },
      },
    },
    withRotationSchedule(value):: self {
      resource+: {
        vault_ldap_auth_backend+: { [terraformName]+: { rotation_schedule: value } },
      },
    },
    withGroupattr(value):: self {
      resource+: {
        vault_ldap_auth_backend+: { [terraformName]+: { groupattr: value } },
      },
    },
    withTlsMinVersion(value):: self {
      resource+: {
        vault_ldap_auth_backend+: { [terraformName]+: { tls_min_version: value } },
      },
    },
    withAnonymousGroupSearch(value):: self {
      resource+: {
        vault_ldap_auth_backend+: { [terraformName]+: { anonymous_group_search: value } },
      },
    },
    withUseTokenGroups(value):: self {
      resource+: {
        vault_ldap_auth_backend+: { [terraformName]+: { use_token_groups: value } },
      },
    },
    withUserfilter(value):: self {
      resource+: {
        vault_ldap_auth_backend+: { [terraformName]+: { userfilter: value } },
      },
    },
    withTokenPeriod(value):: self {
      resource+: {
        vault_ldap_auth_backend+: { [terraformName]+: { token_period: value } },
      },
    },
    withGroupfilter(value):: self {
      resource+: {
        vault_ldap_auth_backend+: { [terraformName]+: { groupfilter: value } },
      },
    },
    withDereferenceAliases(value):: self {
      resource+: {
        vault_ldap_auth_backend+: { [terraformName]+: { dereference_aliases: value } },
      },
    },
    withAccessor(value):: self {
      resource+: {
        vault_ldap_auth_backend+: { [terraformName]+: { accessor: value } },
      },
    },
    withBindpassWoVersion(value):: self {
      resource+: {
        vault_ldap_auth_backend+: { [terraformName]+: { bindpass_wo_version: value } },
      },
    },
    withDisableRemount(value):: self {
      resource+: {
        vault_ldap_auth_backend+: { [terraformName]+: { disable_remount: value } },
      },
    },
    withTokenBoundCidrs(value):: self {
      resource+: {
        vault_ldap_auth_backend+: { [terraformName]+: { token_bound_cidrs: value } },
      },
    },
    withTokenPolicies(value):: self {
      resource+: {
        vault_ldap_auth_backend+: { [terraformName]+: { token_policies: value } },
      },
    },
    withId(value):: self {
      resource+: {
        vault_ldap_auth_backend+: { [terraformName]+: { id: value } },
      },
    },
    withCaseSensitiveNames(value):: self {
      resource+: {
        vault_ldap_auth_backend+: { [terraformName]+: { case_sensitive_names: value } },
      },
    },
    withTokenExplicitMaxTtl(value):: self {
      resource+: {
        vault_ldap_auth_backend+: { [terraformName]+: { token_explicit_max_ttl: value } },
      },
    },
    withTlsMaxVersion(value):: self {
      resource+: {
        vault_ldap_auth_backend+: { [terraformName]+: { tls_max_version: value } },
      },
    },
    withCertificate(value):: self {
      resource+: {
        vault_ldap_auth_backend+: { [terraformName]+: { certificate: value } },
      },
    },
    withUpndomain(value):: self {
      resource+: {
        vault_ldap_auth_backend+: { [terraformName]+: { upndomain: value } },
      },
    },
    withTokenType(value):: self {
      resource+: {
        vault_ldap_auth_backend+: { [terraformName]+: { token_type: value } },
      },
    },
    withClientTlsKey(value):: self {
      resource+: {
        vault_ldap_auth_backend+: { [terraformName]+: { client_tls_key: value } },
      },
    },
    withUserdn(value):: self {
      resource+: {
        vault_ldap_auth_backend+: { [terraformName]+: { userdn: value } },
      },
    },
    withBindpass(value):: self {
      resource+: {
        vault_ldap_auth_backend+: { [terraformName]+: { bindpass: value } },
      },
    },
    withEnableSamaccountnameLogin(value):: self {
      resource+: {
        vault_ldap_auth_backend+: { [terraformName]+: { enable_samaccountname_login: value } },
      },
    },
    withInsecureTls(value):: self {
      resource+: {
        vault_ldap_auth_backend+: { [terraformName]+: { insecure_tls: value } },
      },
    },
    withDenyNullBind(value):: self {
      resource+: {
        vault_ldap_auth_backend+: { [terraformName]+: { deny_null_bind: value } },
      },
    },
    withUserattr(value):: self {
      resource+: {
        vault_ldap_auth_backend+: { [terraformName]+: { userattr: value } },
      },
    },
    withClientTlsCert(value):: self {
      resource+: {
        vault_ldap_auth_backend+: { [terraformName]+: { client_tls_cert: value } },
      },
    },
    withDiscoverdn(value):: self {
      resource+: {
        vault_ldap_auth_backend+: { [terraformName]+: { discoverdn: value } },
      },
    },
    withUrl(value):: self {
      resource+: {
        vault_ldap_auth_backend+: { [terraformName]+: { url: value } },
      },
    },
    withPath(value):: self {
      resource+: {
        vault_ldap_auth_backend+: { [terraformName]+: { path: value } },
      },
    },
    withTokenNoDefaultPolicy(value):: self {
      resource+: {
        vault_ldap_auth_backend+: { [terraformName]+: { token_no_default_policy: value } },
      },
    },
    withAliasMetadata(value):: self {
      resource+: {
        vault_ldap_auth_backend+: { [terraformName]+: { alias_metadata: value } },
      },
    },
    withBinddn(value):: self {
      resource+: {
        vault_ldap_auth_backend+: { [terraformName]+: { binddn: value } },
      },
    },
    withRotationWindow(value):: self {
      resource+: {
        vault_ldap_auth_backend+: { [terraformName]+: { rotation_window: value } },
      },
    },
    withTokenNumUses(value):: self {
      resource+: {
        vault_ldap_auth_backend+: { [terraformName]+: { token_num_uses: value } },
      },
    },
    withStarttls(value):: self {
      resource+: {
        vault_ldap_auth_backend+: { [terraformName]+: { starttls: value } },
      },
    },
    withDescription(value):: self {
      resource+: {
        vault_ldap_auth_backend+: { [terraformName]+: { description: value } },
      },
    },
    withTokenMaxTtl(value):: self {
      resource+: {
        vault_ldap_auth_backend+: { [terraformName]+: { token_max_ttl: value } },
      },
    },
  },
}
