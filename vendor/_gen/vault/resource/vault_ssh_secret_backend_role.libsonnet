{
  new(terraformName, backend, key_type, name):: {
    _type:: 'tf',
    resource+: {
      vault_ssh_secret_backend_role+: { [terraformName]+: {
        backend: backend,
        key_type: key_type,
        name: name,
      } },
    },
    withAlgorithmSigner(value):: self {
      resource+: {
        vault_ssh_secret_backend_role+: { [terraformName]+: { algorithm_signer: value } },
      },
    },
    withAllowBareDomains(value):: self {
      resource+: {
        vault_ssh_secret_backend_role+: { [terraformName]+: { allow_bare_domains: value } },
      },
    },
    withAllowEmptyPrincipals(value):: self {
      resource+: {
        vault_ssh_secret_backend_role+: { [terraformName]+: { allow_empty_principals: value } },
      },
    },
    withAllowHostCertificates(value):: self {
      resource+: {
        vault_ssh_secret_backend_role+: { [terraformName]+: { allow_host_certificates: value } },
      },
    },
    withAllowSubdomains(value):: self {
      resource+: {
        vault_ssh_secret_backend_role+: { [terraformName]+: { allow_subdomains: value } },
      },
    },
    withAllowUserCertificates(value):: self {
      resource+: {
        vault_ssh_secret_backend_role+: { [terraformName]+: { allow_user_certificates: value } },
      },
    },
    withAllowUserKeyIds(value):: self {
      resource+: {
        vault_ssh_secret_backend_role+: { [terraformName]+: { allow_user_key_ids: value } },
      },
    },
    withAllowedCriticalOptions(value):: self {
      resource+: {
        vault_ssh_secret_backend_role+: { [terraformName]+: { allowed_critical_options: value } },
      },
    },
    withAllowedDomains(value):: self {
      resource+: {
        vault_ssh_secret_backend_role+: { [terraformName]+: { allowed_domains: value } },
      },
    },
    withAllowedDomainsTemplate(value):: self {
      resource+: {
        vault_ssh_secret_backend_role+: { [terraformName]+: { allowed_domains_template: value } },
      },
    },
    withAllowedExtensions(value):: self {
      resource+: {
        vault_ssh_secret_backend_role+: { [terraformName]+: { allowed_extensions: value } },
      },
    },
    withAllowedUsers(value):: self {
      resource+: {
        vault_ssh_secret_backend_role+: { [terraformName]+: { allowed_users: value } },
      },
    },
    withAllowedUsersTemplate(value):: self {
      resource+: {
        vault_ssh_secret_backend_role+: { [terraformName]+: { allowed_users_template: value } },
      },
    },
    withBackend(value):: self {
      resource+: {
        vault_ssh_secret_backend_role+: { [terraformName]+: { backend: value } },
      },
    },
    withCidrList(value):: self {
      resource+: {
        vault_ssh_secret_backend_role+: { [terraformName]+: { cidr_list: value } },
      },
    },
    withDefaultCriticalOptions(value):: self {
      resource+: {
        vault_ssh_secret_backend_role+: { [terraformName]+: { default_critical_options: value } },
      },
    },
    '#withDefaultExtensions': { 'function': { help: |||
      Default extensions to include in SSH certificates. Only applicable for CA key type. 
    ||| } },
    withDefaultExtensions(value):: self {
      resource+: {
        vault_ssh_secret_backend_role+: { [terraformName]+: { default_extensions: value } },
      },
    },
    '#withDefaultExtensionsTemplate': { 'function': { help: |||
      Specifies if the default_extensions field supports templating. Only applicable for CA key type. 
    ||| } },
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
    withDefaultUserTemplate(value):: self {
      resource+: {
        vault_ssh_secret_backend_role+: { [terraformName]+: { default_user_template: value } },
      },
    },
    '#withExcludeCidrList': { 'function': { help: |||
      List of CIDR blocks for which credentials cannot be created. Applicable for OTP and dynamic key types. 
    ||| } },
    withExcludeCidrList(value):: self {
      resource+: {
        vault_ssh_secret_backend_role+: { [terraformName]+: { exclude_cidr_list: value } },
      },
    },
    withId(value):: self {
      resource+: {
        vault_ssh_secret_backend_role+: { [terraformName]+: { id: value } },
      },
    },
    withKeyIdFormat(value):: self {
      resource+: {
        vault_ssh_secret_backend_role+: { [terraformName]+: { key_id_format: value } },
      },
    },
    withKeyType(value):: self {
      resource+: {
        vault_ssh_secret_backend_role+: { [terraformName]+: { key_type: value } },
      },
    },
    withMaxTtl(value):: self {
      resource+: {
        vault_ssh_secret_backend_role+: { [terraformName]+: { max_ttl: value } },
      },
    },
    '#withName': { 'function': { help: |||
      Unique name for the role. 
    ||| } },
    withName(value):: self {
      resource+: {
        vault_ssh_secret_backend_role+: { [terraformName]+: { name: value } },
      },
    },
    '#withNamespace': { 'function': { help: |||
      Target namespace. (requires Enterprise) 
    ||| } },
    withNamespace(value):: self {
      resource+: {
        vault_ssh_secret_backend_role+: { [terraformName]+: { namespace: value } },
      },
    },
    '#withNotBeforeDuration': { 'function': { help: |||
      Specifies the duration by which to backdate the ValidAfter property. Uses duration format strings. 
    ||| } },
    withNotBeforeDuration(value):: self {
      resource+: {
        vault_ssh_secret_backend_role+: { [terraformName]+: { not_before_duration: value } },
      },
    },
    '#withPort': { 'function': { help: |||
      Specifies the port number for SSH connections (default 22). Applicable for OTP and dynamic key types. 
    ||| } },
    withPort(value):: self {
      resource+: {
        vault_ssh_secret_backend_role+: { [terraformName]+: { port: value } },
      },
    },
    withTtl(value):: self {
      resource+: {
        vault_ssh_secret_backend_role+: { [terraformName]+: { ttl: value } },
      },
    },
  },
}
