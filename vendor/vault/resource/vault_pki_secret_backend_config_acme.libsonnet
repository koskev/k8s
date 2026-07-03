{
  new(terraformName, backend, enabled):: {
    _type:: 'tf',
    resource+: {
      vault_pki_secret_backend_config_acme+: { [terraformName]+: {
        backend: backend,
        enabled: enabled,
      } },
    },
    withAllowedRoles(value):: self {
      resource+: {
        vault_pki_secret_backend_config_acme+: { [terraformName]+: { allowed_roles: value } },
      },
    },
    withChallengeExcludedIpRanges(value):: self {
      resource+: {
        vault_pki_secret_backend_config_acme+: { [terraformName]+: { challenge_excluded_ip_ranges: value } },
      },
    },
    withBackend(value):: self {
      resource+: {
        vault_pki_secret_backend_config_acme+: { [terraformName]+: { backend: value } },
      },
    },
    withChallengePermittedIpRanges(value):: self {
      resource+: {
        vault_pki_secret_backend_config_acme+: { [terraformName]+: { challenge_permitted_ip_ranges: value } },
      },
    },
    withDefaultDirectoryPolicy(value):: self {
      resource+: {
        vault_pki_secret_backend_config_acme+: { [terraformName]+: { default_directory_policy: value } },
      },
    },
    withMaxTtl(value):: self {
      resource+: {
        vault_pki_secret_backend_config_acme+: { [terraformName]+: { max_ttl: value } },
      },
    },
    withNamespace(value):: self {
      resource+: {
        vault_pki_secret_backend_config_acme+: { [terraformName]+: { namespace: value } },
      },
    },
    withId(value):: self {
      resource+: {
        vault_pki_secret_backend_config_acme+: { [terraformName]+: { id: value } },
      },
    },
    withAllowedIssuers(value):: self {
      resource+: {
        vault_pki_secret_backend_config_acme+: { [terraformName]+: { allowed_issuers: value } },
      },
    },
    withAllowRoleExtKeyUsage(value):: self {
      resource+: {
        vault_pki_secret_backend_config_acme+: { [terraformName]+: { allow_role_ext_key_usage: value } },
      },
    },
    withEabPolicy(value):: self {
      resource+: {
        vault_pki_secret_backend_config_acme+: { [terraformName]+: { eab_policy: value } },
      },
    },
    withEnabled(value):: self {
      resource+: {
        vault_pki_secret_backend_config_acme+: { [terraformName]+: { enabled: value } },
      },
    },
    withDnsResolver(value):: self {
      resource+: {
        vault_pki_secret_backend_config_acme+: { [terraformName]+: { dns_resolver: value } },
      },
    },
  },
}
