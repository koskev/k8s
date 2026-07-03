{
  new(terraformName, key_type, name, backend):: {
    _type:: 'tf',
    resource+: {
      vault_ssh_secret_backend_role+: { [terraformName]+: {
        key_type: key_type,
        name: name,
        backend: backend,
      } },
    },
    withMaxTtl(value):: self {
      resource+: {
        vault_ssh_secret_backend_role+: { [terraformName]+: { max_ttl: value } },
      },
    },
    withAllowedDomains(value):: self {
      resource+: {
        vault_ssh_secret_backend_role+: { [terraformName]+: { allowed_domains: value } },
      },
    },
    withKeyType(value):: self {
      resource+: {
        vault_ssh_secret_backend_role+: { [terraformName]+: { key_type: value } },
      },
    },
    withAllowUserKeyIds(value):: self {
      resource+: {
        vault_ssh_secret_backend_role+: { [terraformName]+: { allow_user_key_ids: value } },
      },
    },
    withName(value):: self {
      resource+: {
        vault_ssh_secret_backend_role+: { [terraformName]+: { name: value } },
      },
    },
    withExcludeCidrList(value):: self {
      resource+: {
        vault_ssh_secret_backend_role+: { [terraformName]+: { exclude_cidr_list: value } },
      },
    },
    withAllowedUsers(value):: self {
      resource+: {
        vault_ssh_secret_backend_role+: { [terraformName]+: { allowed_users: value } },
      },
    },
    withAlgorithmSigner(value):: self {
      resource+: {
        vault_ssh_secret_backend_role+: { [terraformName]+: { algorithm_signer: value } },
      },
    },
    withPort(value):: self {
      resource+: {
        vault_ssh_secret_backend_role+: { [terraformName]+: { port: value } },
      },
    },
    withAllowedExtensions(value):: self {
      resource+: {
        vault_ssh_secret_backend_role+: { [terraformName]+: { allowed_extensions: value } },
      },
    },
    withDefaultExtensions(value):: self {
      resource+: {
        vault_ssh_secret_backend_role+: { [terraformName]+: { default_extensions: value } },
      },
    },
    withKeyIdFormat(value):: self {
      resource+: {
        vault_ssh_secret_backend_role+: { [terraformName]+: { key_id_format: value } },
      },
    },
    withNotBeforeDuration(value):: self {
      resource+: {
        vault_ssh_secret_backend_role+: { [terraformName]+: { not_before_duration: value } },
      },
    },
    withCidrList(value):: self {
      resource+: {
        vault_ssh_secret_backend_role+: { [terraformName]+: { cidr_list: value } },
      },
    },
    withAllowHostCertificates(value):: self {
      resource+: {
        vault_ssh_secret_backend_role+: { [terraformName]+: { allow_host_certificates: value } },
      },
    },
    withDefaultCriticalOptions(value):: self {
      resource+: {
        vault_ssh_secret_backend_role+: { [terraformName]+: { default_critical_options: value } },
      },
    },
    withAllowedDomainsTemplate(value):: self {
      resource+: {
        vault_ssh_secret_backend_role+: { [terraformName]+: { allowed_domains_template: value } },
      },
    },
    withAllowUserCertificates(value):: self {
      resource+: {
        vault_ssh_secret_backend_role+: { [terraformName]+: { allow_user_certificates: value } },
      },
    },
    withAllowSubdomains(value):: self {
      resource+: {
        vault_ssh_secret_backend_role+: { [terraformName]+: { allow_subdomains: value } },
      },
    },
    withAllowEmptyPrincipals(value):: self {
      resource+: {
        vault_ssh_secret_backend_role+: { [terraformName]+: { allow_empty_principals: value } },
      },
    },
    withAllowedUsersTemplate(value):: self {
      resource+: {
        vault_ssh_secret_backend_role+: { [terraformName]+: { allowed_users_template: value } },
      },
    },
    withTtl(value):: self {
      resource+: {
        vault_ssh_secret_backend_role+: { [terraformName]+: { ttl: value } },
      },
    },
    withAllowBareDomains(value):: self {
      resource+: {
        vault_ssh_secret_backend_role+: { [terraformName]+: { allow_bare_domains: value } },
      },
    },
    withDefaultExtensionsTemplate(value):: self {
      resource+: {
        vault_ssh_secret_backend_role+: { [terraformName]+: { default_extensions_template: value } },
      },
    },
    withDefaultUser(value):: self {
      resource+: {
        vault_ssh_secret_backend_role+: { [terraformName]+: { default_user: value } },
      },
    },
    withId(value):: self {
      resource+: {
        vault_ssh_secret_backend_role+: { [terraformName]+: { id: value } },
      },
    },
    withNamespace(value):: self {
      resource+: {
        vault_ssh_secret_backend_role+: { [terraformName]+: { namespace: value } },
      },
    },
    withDefaultUserTemplate(value):: self {
      resource+: {
        vault_ssh_secret_backend_role+: { [terraformName]+: { default_user_template: value } },
      },
    },
    withAllowedCriticalOptions(value):: self {
      resource+: {
        vault_ssh_secret_backend_role+: { [terraformName]+: { allowed_critical_options: value } },
      },
    },
    withBackend(value):: self {
      resource+: {
        vault_ssh_secret_backend_role+: { [terraformName]+: { backend: value } },
      },
    },
  },
}
