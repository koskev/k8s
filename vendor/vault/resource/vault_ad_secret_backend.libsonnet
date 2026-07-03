{
  new(terraformName, bindpass, binddn):: {
    _type:: 'tf',
    resource+: {
      vault_ad_secret_backend+: { [terraformName]+: {
        bindpass: bindpass,
        binddn: binddn,
      } },
    },
    withTlsMinVersion(value):: self {
      resource+: {
        vault_ad_secret_backend+: { [terraformName]+: { tls_min_version: value } },
      },
    },
    withCertificate(value):: self {
      resource+: {
        vault_ad_secret_backend+: { [terraformName]+: { certificate: value } },
      },
    },
    withMaxTtl(value):: self {
      resource+: {
        vault_ad_secret_backend+: { [terraformName]+: { max_ttl: value } },
      },
    },
    withUserattr(value):: self {
      resource+: {
        vault_ad_secret_backend+: { [terraformName]+: { userattr: value } },
      },
    },
    withBindpass(value):: self {
      resource+: {
        vault_ad_secret_backend+: { [terraformName]+: { bindpass: value } },
      },
    },
    withLocal(value):: self {
      resource+: {
        vault_ad_secret_backend+: { [terraformName]+: { 'local': value } },
      },
    },
    withTlsMaxVersion(value):: self {
      resource+: {
        vault_ad_secret_backend+: { [terraformName]+: { tls_max_version: value } },
      },
    },
    withGroupattr(value):: self {
      resource+: {
        vault_ad_secret_backend+: { [terraformName]+: { groupattr: value } },
      },
    },
    withDefaultLeaseTtlSeconds(value):: self {
      resource+: {
        vault_ad_secret_backend+: { [terraformName]+: { default_lease_ttl_seconds: value } },
      },
    },
    withGroupdn(value):: self {
      resource+: {
        vault_ad_secret_backend+: { [terraformName]+: { groupdn: value } },
      },
    },
    withStarttls(value):: self {
      resource+: {
        vault_ad_secret_backend+: { [terraformName]+: { starttls: value } },
      },
    },
    withAnonymousGroupSearch(value):: self {
      resource+: {
        vault_ad_secret_backend+: { [terraformName]+: { anonymous_group_search: value } },
      },
    },
    withUpndomain(value):: self {
      resource+: {
        vault_ad_secret_backend+: { [terraformName]+: { upndomain: value } },
      },
    },
    withUrl(value):: self {
      resource+: {
        vault_ad_secret_backend+: { [terraformName]+: { url: value } },
      },
    },
    withId(value):: self {
      resource+: {
        vault_ad_secret_backend+: { [terraformName]+: { id: value } },
      },
    },
    withTtl(value):: self {
      resource+: {
        vault_ad_secret_backend+: { [terraformName]+: { ttl: value } },
      },
    },
    withUseTokenGroups(value):: self {
      resource+: {
        vault_ad_secret_backend+: { [terraformName]+: { use_token_groups: value } },
      },
    },
    withRequestTimeout(value):: self {
      resource+: {
        vault_ad_secret_backend+: { [terraformName]+: { request_timeout: value } },
      },
    },
    withBinddn(value):: self {
      resource+: {
        vault_ad_secret_backend+: { [terraformName]+: { binddn: value } },
      },
    },
    withDescription(value):: self {
      resource+: {
        vault_ad_secret_backend+: { [terraformName]+: { description: value } },
      },
    },
    withUserdn(value):: self {
      resource+: {
        vault_ad_secret_backend+: { [terraformName]+: { userdn: value } },
      },
    },
    withBackend(value):: self {
      resource+: {
        vault_ad_secret_backend+: { [terraformName]+: { backend: value } },
      },
    },
    withDisableRemount(value):: self {
      resource+: {
        vault_ad_secret_backend+: { [terraformName]+: { disable_remount: value } },
      },
    },
    withUsePre111GroupCnBehavior(value):: self {
      resource+: {
        vault_ad_secret_backend+: { [terraformName]+: { use_pre111_group_cn_behavior: value } },
      },
    },
    withDiscoverdn(value):: self {
      resource+: {
        vault_ad_secret_backend+: { [terraformName]+: { discoverdn: value } },
      },
    },
    withMaxLeaseTtlSeconds(value):: self {
      resource+: {
        vault_ad_secret_backend+: { [terraformName]+: { max_lease_ttl_seconds: value } },
      },
    },
    withInsecureTls(value):: self {
      resource+: {
        vault_ad_secret_backend+: { [terraformName]+: { insecure_tls: value } },
      },
    },
    withNamespace(value):: self {
      resource+: {
        vault_ad_secret_backend+: { [terraformName]+: { namespace: value } },
      },
    },
    withClientTlsKey(value):: self {
      resource+: {
        vault_ad_secret_backend+: { [terraformName]+: { client_tls_key: value } },
      },
    },
    withDenyNullBind(value):: self {
      resource+: {
        vault_ad_secret_backend+: { [terraformName]+: { deny_null_bind: value } },
      },
    },
    withCaseSensitiveNames(value):: self {
      resource+: {
        vault_ad_secret_backend+: { [terraformName]+: { case_sensitive_names: value } },
      },
    },
    withClientTlsCert(value):: self {
      resource+: {
        vault_ad_secret_backend+: { [terraformName]+: { client_tls_cert: value } },
      },
    },
    withLastRotationTolerance(value):: self {
      resource+: {
        vault_ad_secret_backend+: { [terraformName]+: { last_rotation_tolerance: value } },
      },
    },
    withGroupfilter(value):: self {
      resource+: {
        vault_ad_secret_backend+: { [terraformName]+: { groupfilter: value } },
      },
    },
    withPasswordPolicy(value):: self {
      resource+: {
        vault_ad_secret_backend+: { [terraformName]+: { password_policy: value } },
      },
    },
  },
}
