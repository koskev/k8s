{
  local outerSelf = self,
  new(terraformName, backend, key_type, name):: self.functions(terraformName) + {
    _type:: 'tf',
    ref():: outerSelf.ref(terraformName),
    resource+: {
      vault_ssh_secret_backend_role+: { [terraformName]+: {
        backend: backend,
        key_type: key_type,
        name: name,
      } },
    },
  }
  ,
  functions(terraformName):: {
    withForEach(value):: self { resource+: {
      vault_ssh_secret_backend_role+: { [terraformName]+: { for_each: value } },
    } },
    withDependsOn(value):: self { resource+: {
      vault_ssh_secret_backend_role+: { [terraformName]+: { depends_on: value } },
    } },
    withCount(value):: self { resource+: {
      vault_ssh_secret_backend_role+: { [terraformName]+: { count: value } },
    } },
    withLifecycle(value):: self { resource+: {
      vault_ssh_secret_backend_role+: { [terraformName]+: { lifecycle: value } },
    } },
    withProvider(value):: self { resource+: {
      vault_ssh_secret_backend_role+: { [terraformName]+: { provider: value } },
    } },
    withProviders(value):: self { resource+: {
      vault_ssh_secret_backend_role+: { [terraformName]+: { providers: value } },
    } },
    addCustomData(name, value):: self { resource+: {
      vault_ssh_secret_backend_role+: { [terraformName]+: { [name]: value } },
    } },
    withAlgorithmSigner(value):: self { resource+: {
      vault_ssh_secret_backend_role+: { [terraformName]+: { algorithm_signer: value } },
    } },
    withAllowBareDomains(value):: self { resource+: {
      vault_ssh_secret_backend_role+: { [terraformName]+: { allow_bare_domains: value } },
    } },
    withAllowEmptyPrincipals(value):: self { resource+: {
      vault_ssh_secret_backend_role+: { [terraformName]+: { allow_empty_principals: value } },
    } },
    withAllowHostCertificates(value):: self { resource+: {
      vault_ssh_secret_backend_role+: { [terraformName]+: { allow_host_certificates: value } },
    } },
    withAllowSubdomains(value):: self { resource+: {
      vault_ssh_secret_backend_role+: { [terraformName]+: { allow_subdomains: value } },
    } },
    withAllowUserCertificates(value):: self { resource+: {
      vault_ssh_secret_backend_role+: { [terraformName]+: { allow_user_certificates: value } },
    } },
    withAllowUserKeyIds(value):: self { resource+: {
      vault_ssh_secret_backend_role+: { [terraformName]+: { allow_user_key_ids: value } },
    } },
    withAllowedCriticalOptions(value):: self { resource+: {
      vault_ssh_secret_backend_role+: { [terraformName]+: { allowed_critical_options: value } },
    } },
    withAllowedDomains(value):: self { resource+: {
      vault_ssh_secret_backend_role+: { [terraformName]+: { allowed_domains: value } },
    } },
    withAllowedDomainsTemplate(value):: self { resource+: {
      vault_ssh_secret_backend_role+: { [terraformName]+: { allowed_domains_template: value } },
    } },
    withAllowedExtensions(value):: self { resource+: {
      vault_ssh_secret_backend_role+: { [terraformName]+: { allowed_extensions: value } },
    } },
    withAllowedUsers(value):: self { resource+: {
      vault_ssh_secret_backend_role+: { [terraformName]+: { allowed_users: value } },
    } },
    withAllowedUsersTemplate(value):: self { resource+: {
      vault_ssh_secret_backend_role+: { [terraformName]+: { allowed_users_template: value } },
    } },
    withBackend(value):: self { resource+: {
      vault_ssh_secret_backend_role+: { [terraformName]+: { backend: value } },
    } },
    withCidrList(value):: self { resource+: {
      vault_ssh_secret_backend_role+: { [terraformName]+: { cidr_list: value } },
    } },
    withDefaultCriticalOptions(value):: self { resource+: {
      vault_ssh_secret_backend_role+: { [terraformName]+: { default_critical_options: value } },
    } },
    '#withDefaultExtensions':: { 'function': {
      help:
        |||
          Default extensions to include in SSH certificates. Only applicable for CA key type.
        |||,
    } },
    withDefaultExtensions(value):: self { resource+: {
      vault_ssh_secret_backend_role+: { [terraformName]+: { default_extensions: value } },
    } },
    '#withDefaultExtensionsTemplate':: { 'function': {
      help:
        |||
          Specifies if the default_extensions field supports templating. Only applicable for CA key type.
        |||,
    } },
    withDefaultExtensionsTemplate(value):: self { resource+: {
      vault_ssh_secret_backend_role+: { [terraformName]+: { default_extensions_template: value } },
    } },
    withDefaultUser(value):: self { resource+: {
      vault_ssh_secret_backend_role+: { [terraformName]+: { default_user: value } },
    } },
    withDefaultUserTemplate(value):: self { resource+: {
      vault_ssh_secret_backend_role+: { [terraformName]+: { default_user_template: value } },
    } },
    '#withExcludeCidrList':: { 'function': {
      help:
        |||
          List of CIDR blocks for which credentials cannot be created. Applicable for OTP and dynamic key types.
        |||,
    } },
    withExcludeCidrList(value):: self { resource+: {
      vault_ssh_secret_backend_role+: { [terraformName]+: { exclude_cidr_list: value } },
    } },
    withId(value):: self { resource+: {
      vault_ssh_secret_backend_role+: { [terraformName]+: { id: value } },
    } },
    withKeyIdFormat(value):: self { resource+: {
      vault_ssh_secret_backend_role+: { [terraformName]+: { key_id_format: value } },
    } },
    withKeyType(value):: self { resource+: {
      vault_ssh_secret_backend_role+: { [terraformName]+: { key_type: value } },
    } },
    withMaxTtl(value):: self { resource+: {
      vault_ssh_secret_backend_role+: { [terraformName]+: { max_ttl: value } },
    } },
    '#withName':: { 'function': {
      help:
        |||
          Unique name for the role.
        |||,
    } },
    withName(value):: self { resource+: {
      vault_ssh_secret_backend_role+: { [terraformName]+: { name: value } },
    } },
    '#withNamespace':: { 'function': {
      help:
        |||
          Target namespace. (requires Enterprise)
        |||,
    } },
    withNamespace(value):: self { resource+: {
      vault_ssh_secret_backend_role+: { [terraformName]+: { namespace: value } },
    } },
    '#withNotBeforeDuration':: { 'function': {
      help:
        |||
          Specifies the duration by which to backdate the ValidAfter property. Uses duration format strings.
        |||,
    } },
    withNotBeforeDuration(value):: self { resource+: {
      vault_ssh_secret_backend_role+: { [terraformName]+: { not_before_duration: value } },
    } },
    '#withPort':: { 'function': {
      help:
        |||
          Specifies the port number for SSH connections (default 22). Applicable for OTP and dynamic key types.
        |||,
    } },
    withPort(value):: self { resource+: {
      vault_ssh_secret_backend_role+: { [terraformName]+: { port: value } },
    } },
    withTtl(value):: self { resource+: {
      vault_ssh_secret_backend_role+: { [terraformName]+: { ttl: value } },
    } },

  }
  ,
  ref(terraformName):: {
    local refSelf = self,
    plain(suffix=''):: '${ vault_ssh_secret_backend_role.%s%s }' % [terraformName, suffix],
    fields:: {
      algorithm_signer(suffix=''):: refSelf.plain('.algorithm_signer%s' % suffix),
      allow_bare_domains(suffix=''):: refSelf.plain('.allow_bare_domains%s' % suffix),
      allow_empty_principals(suffix=''):: refSelf.plain('.allow_empty_principals%s' % suffix),
      allow_host_certificates(suffix=''):: refSelf.plain('.allow_host_certificates%s' % suffix),
      allow_subdomains(suffix=''):: refSelf.plain('.allow_subdomains%s' % suffix),
      allow_user_certificates(suffix=''):: refSelf.plain('.allow_user_certificates%s' % suffix),
      allow_user_key_ids(suffix=''):: refSelf.plain('.allow_user_key_ids%s' % suffix),
      allowed_critical_options(suffix=''):: refSelf.plain('.allowed_critical_options%s' % suffix),
      allowed_domains(suffix=''):: refSelf.plain('.allowed_domains%s' % suffix),
      allowed_domains_template(suffix=''):: refSelf.plain('.allowed_domains_template%s' % suffix),
      allowed_extensions(suffix=''):: refSelf.plain('.allowed_extensions%s' % suffix),
      allowed_users(suffix=''):: refSelf.plain('.allowed_users%s' % suffix),
      allowed_users_template(suffix=''):: refSelf.plain('.allowed_users_template%s' % suffix),
      backend(suffix=''):: refSelf.plain('.backend%s' % suffix),
      cidr_list(suffix=''):: refSelf.plain('.cidr_list%s' % suffix),
      default_critical_options(suffix=''):: refSelf.plain('.default_critical_options%s' % suffix),
      '#default_extensions':: { 'function': {
        help:
          |||
            Default extensions to include in SSH certificates. Only applicable for CA key type.
          |||,
      } },
      default_extensions(suffix=''):: refSelf.plain('.default_extensions%s' % suffix),
      '#default_extensions_template':: { 'function': {
        help:
          |||
            Specifies if the default_extensions field supports templating. Only applicable for CA key type.
          |||,
      } },
      default_extensions_template(suffix=''):: refSelf.plain('.default_extensions_template%s' % suffix),
      default_user(suffix=''):: refSelf.plain('.default_user%s' % suffix),
      default_user_template(suffix=''):: refSelf.plain('.default_user_template%s' % suffix),
      '#exclude_cidr_list':: { 'function': {
        help:
          |||
            List of CIDR blocks for which credentials cannot be created. Applicable for OTP and dynamic key types.
          |||,
      } },
      exclude_cidr_list(suffix=''):: refSelf.plain('.exclude_cidr_list%s' % suffix),
      id(suffix=''):: refSelf.plain('.id%s' % suffix),
      key_id_format(suffix=''):: refSelf.plain('.key_id_format%s' % suffix),
      key_type(suffix=''):: refSelf.plain('.key_type%s' % suffix),
      max_ttl(suffix=''):: refSelf.plain('.max_ttl%s' % suffix),
      '#name':: { 'function': {
        help:
          |||
            Unique name for the role.
          |||,
      } },
      name(suffix=''):: refSelf.plain('.name%s' % suffix),
      '#namespace':: { 'function': {
        help:
          |||
            Target namespace. (requires Enterprise)
          |||,
      } },
      namespace(suffix=''):: refSelf.plain('.namespace%s' % suffix),
      '#not_before_duration':: { 'function': {
        help:
          |||
            Specifies the duration by which to backdate the ValidAfter property. Uses duration format strings.
          |||,
      } },
      not_before_duration(suffix=''):: refSelf.plain('.not_before_duration%s' % suffix),
      '#port':: { 'function': {
        help:
          |||
            Specifies the port number for SSH connections (default 22). Applicable for OTP and dynamic key types.
          |||,
      } },
      port(suffix=''):: refSelf.plain('.port%s' % suffix),
      ttl(suffix=''):: refSelf.plain('.ttl%s' % suffix),

    },

  },

}
