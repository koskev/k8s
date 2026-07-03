{
  new(terraformName, url):: {
    _type:: 'tf',
    resource+: {
      vault_ldap_auth_backend+: { [terraformName]+: {
        url: url,
      } },
    },
    '#withAccessor': { 'function': { help: |||
      The accessor of the LDAP auth backend 
    ||| } },
    withAccessor(value):: self {
      resource+: {
        vault_ldap_auth_backend+: { [terraformName]+: { accessor: value } },
      },
    },
    '#withAliasMetadata': { 'function': { help: |||
      The metadata to be tied to generated entity alias.
       This should be a list or map containing the metadata in key value pairs. 
    ||| } },
    withAliasMetadata(value):: self {
      resource+: {
        vault_ldap_auth_backend+: { [terraformName]+: { alias_metadata: value } },
      },
    },
    '#withAnonymousGroupSearch': { 'function': { help: |||
      Allows anonymous group searches. 
    ||| } },
    withAnonymousGroupSearch(value):: self {
      resource+: {
        vault_ldap_auth_backend+: { [terraformName]+: { anonymous_group_search: value } },
      },
    },
    withBinddn(value):: self {
      resource+: {
        vault_ldap_auth_backend+: { [terraformName]+: { binddn: value } },
      },
    },
    withBindpass(value):: self {
      resource+: {
        vault_ldap_auth_backend+: { [terraformName]+: { bindpass: value } },
      },
    },
    '#withBindpassWo': { 'function': { help: |||
      Write-only bind password to use for LDAP authentication. 
    ||| } },
    withBindpassWo(value):: self {
      resource+: {
        vault_ldap_auth_backend+: { [terraformName]+: { bindpass_wo: value } },
      },
    },
    '#withBindpassWoVersion': { 'function': { help: |||
      Version counter for write-only bind password. 
    ||| } },
    withBindpassWoVersion(value):: self {
      resource+: {
        vault_ldap_auth_backend+: { [terraformName]+: { bindpass_wo_version: value } },
      },
    },
    withCaseSensitiveNames(value):: self {
      resource+: {
        vault_ldap_auth_backend+: { [terraformName]+: { case_sensitive_names: value } },
      },
    },
    withCertificate(value):: self {
      resource+: {
        vault_ldap_auth_backend+: { [terraformName]+: { certificate: value } },
      },
    },
    withClientTlsCert(value):: self {
      resource+: {
        vault_ldap_auth_backend+: { [terraformName]+: { client_tls_cert: value } },
      },
    },
    withClientTlsKey(value):: self {
      resource+: {
        vault_ldap_auth_backend+: { [terraformName]+: { client_tls_key: value } },
      },
    },
    withConnectionTimeout(value):: self {
      resource+: {
        vault_ldap_auth_backend+: { [terraformName]+: { connection_timeout: value } },
      },
    },
    withDenyNullBind(value):: self {
      resource+: {
        vault_ldap_auth_backend+: { [terraformName]+: { deny_null_bind: value } },
      },
    },
    '#withDereferenceAliases': { 'function': { help: |||
      Specifies how aliases are dereferenced during LDAP searches. Valid values are 'never','searching','finding', and 'always'. 
    ||| } },
    withDereferenceAliases(value):: self {
      resource+: {
        vault_ldap_auth_backend+: { [terraformName]+: { dereference_aliases: value } },
      },
    },
    withDescription(value):: self {
      resource+: {
        vault_ldap_auth_backend+: { [terraformName]+: { description: value } },
      },
    },
    '#withDisableAutomatedRotation': { 'function': { help: |||
      Stops rotation of the root credential until set to false. 
    ||| } },
    withDisableAutomatedRotation(value):: self {
      resource+: {
        vault_ldap_auth_backend+: { [terraformName]+: { disable_automated_rotation: value } },
      },
    },
    '#withDisableRemount': { 'function': { help: |||
      If set, opts out of mount migration on path updates. 
    ||| } },
    withDisableRemount(value):: self {
      resource+: {
        vault_ldap_auth_backend+: { [terraformName]+: { disable_remount: value } },
      },
    },
    withDiscoverdn(value):: self {
      resource+: {
        vault_ldap_auth_backend+: { [terraformName]+: { discoverdn: value } },
      },
    },
    '#withEnableSamaccountnameLogin': { 'function': { help: |||
      Enables login using the sAMAccountName attribute. 
    ||| } },
    withEnableSamaccountnameLogin(value):: self {
      resource+: {
        vault_ldap_auth_backend+: { [terraformName]+: { enable_samaccountname_login: value } },
      },
    },
    withGroupattr(value):: self {
      resource+: {
        vault_ldap_auth_backend+: { [terraformName]+: { groupattr: value } },
      },
    },
    withGroupdn(value):: self {
      resource+: {
        vault_ldap_auth_backend+: { [terraformName]+: { groupdn: value } },
      },
    },
    withGroupfilter(value):: self {
      resource+: {
        vault_ldap_auth_backend+: { [terraformName]+: { groupfilter: value } },
      },
    },
    withId(value):: self {
      resource+: {
        vault_ldap_auth_backend+: { [terraformName]+: { id: value } },
      },
    },
    withInsecureTls(value):: self {
      resource+: {
        vault_ldap_auth_backend+: { [terraformName]+: { insecure_tls: value } },
      },
    },
    '#withLocal': { 'function': { help: |||
      Specifies if the auth method is local only 
    ||| } },
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
    '#withNamespace': { 'function': { help: |||
      Target namespace. (requires Enterprise) 
    ||| } },
    withNamespace(value):: self {
      resource+: {
        vault_ldap_auth_backend+: { [terraformName]+: { namespace: value } },
      },
    },
    withPath(value):: self {
      resource+: {
        vault_ldap_auth_backend+: { [terraformName]+: { path: value } },
      },
    },
    '#withRequestTimeout': { 'function': { help: |||
      The timeout(in sec) for requests to the LDAP server. 
    ||| } },
    withRequestTimeout(value):: self {
      resource+: {
        vault_ldap_auth_backend+: { [terraformName]+: { request_timeout: value } },
      },
    },
    '#withRotationPeriod': { 'function': { help: |||
      The period of time in seconds between each rotation of the root credential. Cannot be used with rotation_schedule. 
    ||| } },
    withRotationPeriod(value):: self {
      resource+: {
        vault_ldap_auth_backend+: { [terraformName]+: { rotation_period: value } },
      },
    },
    '#withRotationSchedule': { 'function': { help: |||
      The cron-style schedule for the root credential to be rotated on. Cannot be used with rotation_period. 
    ||| } },
    withRotationSchedule(value):: self {
      resource+: {
        vault_ldap_auth_backend+: { [terraformName]+: { rotation_schedule: value } },
      },
    },
    '#withRotationWindow': { 'function': { help: |||
      The maximum amount of time in seconds Vault is allowed to complete a rotation once a scheduled rotation is triggered. Can only be used with rotation_schedule. 
    ||| } },
    withRotationWindow(value):: self {
      resource+: {
        vault_ldap_auth_backend+: { [terraformName]+: { rotation_window: value } },
      },
    },
    withStarttls(value):: self {
      resource+: {
        vault_ldap_auth_backend+: { [terraformName]+: { starttls: value } },
      },
    },
    withTlsMaxVersion(value):: self {
      resource+: {
        vault_ldap_auth_backend+: { [terraformName]+: { tls_max_version: value } },
      },
    },
    withTlsMinVersion(value):: self {
      resource+: {
        vault_ldap_auth_backend+: { [terraformName]+: { tls_min_version: value } },
      },
    },
    '#withTokenBoundCidrs': { 'function': { help: |||
      Specifies the blocks of IP addresses which are allowed to use the generated token 
    ||| } },
    withTokenBoundCidrs(value):: self {
      resource+: {
        vault_ldap_auth_backend+: { [terraformName]+: { token_bound_cidrs: value } },
      },
    },
    '#withTokenExplicitMaxTtl': { 'function': { help: |||
      Generated Token's Explicit Maximum TTL in seconds 
    ||| } },
    withTokenExplicitMaxTtl(value):: self {
      resource+: {
        vault_ldap_auth_backend+: { [terraformName]+: { token_explicit_max_ttl: value } },
      },
    },
    '#withTokenMaxTtl': { 'function': { help: |||
      The maximum lifetime of the generated token 
    ||| } },
    withTokenMaxTtl(value):: self {
      resource+: {
        vault_ldap_auth_backend+: { [terraformName]+: { token_max_ttl: value } },
      },
    },
    '#withTokenNoDefaultPolicy': { 'function': { help: |||
      If true, the 'default' policy will not automatically be added to generated tokens 
    ||| } },
    withTokenNoDefaultPolicy(value):: self {
      resource+: {
        vault_ldap_auth_backend+: { [terraformName]+: { token_no_default_policy: value } },
      },
    },
    '#withTokenNumUses': { 'function': { help: |||
      The maximum number of times a token may be used, a value of zero means unlimited 
    ||| } },
    withTokenNumUses(value):: self {
      resource+: {
        vault_ldap_auth_backend+: { [terraformName]+: { token_num_uses: value } },
      },
    },
    '#withTokenPeriod': { 'function': { help: |||
      Generated Token's Period 
    ||| } },
    withTokenPeriod(value):: self {
      resource+: {
        vault_ldap_auth_backend+: { [terraformName]+: { token_period: value } },
      },
    },
    '#withTokenPolicies': { 'function': { help: |||
      Generated Token's Policies 
    ||| } },
    withTokenPolicies(value):: self {
      resource+: {
        vault_ldap_auth_backend+: { [terraformName]+: { token_policies: value } },
      },
    },
    '#withTokenTtl': { 'function': { help: |||
      The initial ttl of the token to generate in seconds 
    ||| } },
    withTokenTtl(value):: self {
      resource+: {
        vault_ldap_auth_backend+: { [terraformName]+: { token_ttl: value } },
      },
    },
    '#withTokenType': { 'function': { help: |||
      The type of token to generate, service or batch 
    ||| } },
    withTokenType(value):: self {
      resource+: {
        vault_ldap_auth_backend+: { [terraformName]+: { token_type: value } },
      },
    },
    withTune(value):: self {
      resource+: {
        vault_ldap_auth_backend+: { [terraformName]+: { tune: value } },
      },
    },
    withUpndomain(value):: self {
      resource+: {
        vault_ldap_auth_backend+: { [terraformName]+: { upndomain: value } },
      },
    },
    withUrl(value):: self {
      resource+: {
        vault_ldap_auth_backend+: { [terraformName]+: { url: value } },
      },
    },
    withUseTokenGroups(value):: self {
      resource+: {
        vault_ldap_auth_backend+: { [terraformName]+: { use_token_groups: value } },
      },
    },
    withUserattr(value):: self {
      resource+: {
        vault_ldap_auth_backend+: { [terraformName]+: { userattr: value } },
      },
    },
    withUserdn(value):: self {
      resource+: {
        vault_ldap_auth_backend+: { [terraformName]+: { userdn: value } },
      },
    },
    withUserfilter(value):: self {
      resource+: {
        vault_ldap_auth_backend+: { [terraformName]+: { userfilter: value } },
      },
    },
    '#withUsernameAsAlias': { 'function': { help: |||
      Force the auth method to use the username passed by the user as the alias name. 
    ||| } },
    withUsernameAsAlias(value):: self {
      resource+: {
        vault_ldap_auth_backend+: { [terraformName]+: { username_as_alias: value } },
      },
    },
  },
}
