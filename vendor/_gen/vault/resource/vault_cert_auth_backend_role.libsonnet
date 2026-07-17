{
  local outerSelf = self,
  new(terraformName, certificate, name):: self.functions(terraformName) + {
    _type:: 'tf',
    ref():: outerSelf.ref(terraformName),
    resource+: {
      vault_cert_auth_backend_role+: { [terraformName]+: {
        certificate: certificate,
        name: name,
      } },
    },
  }
  ,
  functions(terraformName):: {
    withForEach(value):: self { resource+: {
      vault_cert_auth_backend_role+: { [terraformName]+: { for_each: value } },
    } },
    withDependsOn(value):: self { resource+: {
      vault_cert_auth_backend_role+: { [terraformName]+: { depends_on: value } },
    } },
    withCount(value):: self { resource+: {
      vault_cert_auth_backend_role+: { [terraformName]+: { count: value } },
    } },
    withLifecycle(value):: self { resource+: {
      vault_cert_auth_backend_role+: { [terraformName]+: { lifecycle: value } },
    } },
    withProvider(value):: self { resource+: {
      vault_cert_auth_backend_role+: { [terraformName]+: { provider: value } },
    } },
    withProviders(value):: self { resource+: {
      vault_cert_auth_backend_role+: { [terraformName]+: { providers: value } },
    } },
    addCustomData(name, value):: self { resource+: {
      vault_cert_auth_backend_role+: { [terraformName]+: { [name]: value } },
    } },
    '#withAliasMetadata':: { 'function': {
      help:
        |||
          The metadata to be tied to generated entity alias.
            This should be a list or map containing the metadata in key value pairs.
        |||,
    } },
    withAliasMetadata(value):: self { resource+: {
      vault_cert_auth_backend_role+: { [terraformName]+: { alias_metadata: value } },
    } },
    withAllowedCommonNames(value):: self { resource+: {
      vault_cert_auth_backend_role+: { [terraformName]+: { allowed_common_names: value } },
    } },
    withAllowedDnsSans(value):: self { resource+: {
      vault_cert_auth_backend_role+: { [terraformName]+: { allowed_dns_sans: value } },
    } },
    withAllowedEmailSans(value):: self { resource+: {
      vault_cert_auth_backend_role+: { [terraformName]+: { allowed_email_sans: value } },
    } },
    withAllowedNames(value):: self { resource+: {
      vault_cert_auth_backend_role+: { [terraformName]+: { allowed_names: value } },
    } },
    withAllowedOrganizationalUnits(value):: self { resource+: {
      vault_cert_auth_backend_role+: { [terraformName]+: { allowed_organizational_units: value } },
    } },
    withAllowedUriSans(value):: self { resource+: {
      vault_cert_auth_backend_role+: { [terraformName]+: { allowed_uri_sans: value } },
    } },
    withBackend(value):: self { resource+: {
      vault_cert_auth_backend_role+: { [terraformName]+: { backend: value } },
    } },
    withCertificate(value):: self { resource+: {
      vault_cert_auth_backend_role+: { [terraformName]+: { certificate: value } },
    } },
    withDisplayName(value):: self { resource+: {
      vault_cert_auth_backend_role+: { [terraformName]+: { display_name: value } },
    } },
    withId(value):: self { resource+: {
      vault_cert_auth_backend_role+: { [terraformName]+: { id: value } },
    } },
    withName(value):: self { resource+: {
      vault_cert_auth_backend_role+: { [terraformName]+: { name: value } },
    } },
    '#withNamespace':: { 'function': {
      help:
        |||
          Target namespace. (requires Enterprise)
        |||,
    } },
    withNamespace(value):: self { resource+: {
      vault_cert_auth_backend_role+: { [terraformName]+: { namespace: value } },
    } },
    '#withOcspCaCertificates':: { 'function': {
      help:
        |||
          Any additional CA certificates needed to verify OCSP responses. Provided as base64 encoded PEM data.
        |||,
    } },
    withOcspCaCertificates(value):: self { resource+: {
      vault_cert_auth_backend_role+: { [terraformName]+: { ocsp_ca_certificates: value } },
    } },
    '#withOcspEnabled':: { 'function': {
      help:
        |||
          If enabled, validate certificates' revocation status using OCSP.
        |||,
    } },
    withOcspEnabled(value):: self { resource+: {
      vault_cert_auth_backend_role+: { [terraformName]+: { ocsp_enabled: value } },
    } },
    '#withOcspFailOpen':: { 'function': {
      help:
        |||
          If true and an OCSP response cannot be fetched or is of an unknown status, the login will proceed as if the certificate has not been revoked.
        |||,
    } },
    withOcspFailOpen(value):: self { resource+: {
      vault_cert_auth_backend_role+: { [terraformName]+: { ocsp_fail_open: value } },
    } },
    '#withOcspMaxRetries':: { 'function': {
      help:
        |||
          The number of retries to attempt when connecting to an OCSP server. Defaults to 4 retries. Must be a non-negative value.
        |||,
    } },
    withOcspMaxRetries(value):: self { resource+: {
      vault_cert_auth_backend_role+: { [terraformName]+: { ocsp_max_retries: value } },
    } },
    '#withOcspQueryAllServers':: { 'function': {
      help:
        |||
          If set to true, rather than accepting the first successful OCSP response, query all servers and consider the certificate valid only if all servers agree.
        |||,
    } },
    withOcspQueryAllServers(value):: self { resource+: {
      vault_cert_auth_backend_role+: { [terraformName]+: { ocsp_query_all_servers: value } },
    } },
    '#withOcspServersOverride':: { 'function': {
      help:
        |||
          A comma-separated list of OCSP server addresses. If unset, the OCSP server is determined from the AuthorityInformationAccess extension on the certificate being inspected.
        |||,
    } },
    withOcspServersOverride(value):: self { resource+: {
      vault_cert_auth_backend_role+: { [terraformName]+: { ocsp_servers_override: value } },
    } },
    '#withOcspThisUpdateMaxAge':: { 'function': {
      help:
        |||
          The maximum age in seconds of the 'thisUpdate' field in an OCSP response before it is considered too old. Defaults to 0 (disabled). Must be a non-negative value.
        |||,
    } },
    withOcspThisUpdateMaxAge(value):: self { resource+: {
      vault_cert_auth_backend_role+: { [terraformName]+: { ocsp_this_update_max_age: value } },
    } },
    withRequiredExtensions(value):: self { resource+: {
      vault_cert_auth_backend_role+: { [terraformName]+: { required_extensions: value } },
    } },
    '#withTokenBoundCidrs':: { 'function': {
      help:
        |||
          Specifies the blocks of IP addresses which are allowed to use the generated token
        |||,
    } },
    withTokenBoundCidrs(value):: self { resource+: {
      vault_cert_auth_backend_role+: { [terraformName]+: { token_bound_cidrs: value } },
    } },
    '#withTokenExplicitMaxTtl':: { 'function': {
      help:
        |||
          Generated Token's Explicit Maximum TTL in seconds
        |||,
    } },
    withTokenExplicitMaxTtl(value):: self { resource+: {
      vault_cert_auth_backend_role+: { [terraformName]+: { token_explicit_max_ttl: value } },
    } },
    '#withTokenMaxTtl':: { 'function': {
      help:
        |||
          The maximum lifetime of the generated token
        |||,
    } },
    withTokenMaxTtl(value):: self { resource+: {
      vault_cert_auth_backend_role+: { [terraformName]+: { token_max_ttl: value } },
    } },
    '#withTokenNoDefaultPolicy':: { 'function': {
      help:
        |||
          If true, the 'default' policy will not automatically be added to generated tokens
        |||,
    } },
    withTokenNoDefaultPolicy(value):: self { resource+: {
      vault_cert_auth_backend_role+: { [terraformName]+: { token_no_default_policy: value } },
    } },
    '#withTokenNumUses':: { 'function': {
      help:
        |||
          The maximum number of times a token may be used, a value of zero means unlimited
        |||,
    } },
    withTokenNumUses(value):: self { resource+: {
      vault_cert_auth_backend_role+: { [terraformName]+: { token_num_uses: value } },
    } },
    '#withTokenPeriod':: { 'function': {
      help:
        |||
          Generated Token's Period
        |||,
    } },
    withTokenPeriod(value):: self { resource+: {
      vault_cert_auth_backend_role+: { [terraformName]+: { token_period: value } },
    } },
    '#withTokenPolicies':: { 'function': {
      help:
        |||
          Generated Token's Policies
        |||,
    } },
    withTokenPolicies(value):: self { resource+: {
      vault_cert_auth_backend_role+: { [terraformName]+: { token_policies: value } },
    } },
    '#withTokenTtl':: { 'function': {
      help:
        |||
          The initial ttl of the token to generate in seconds
        |||,
    } },
    withTokenTtl(value):: self { resource+: {
      vault_cert_auth_backend_role+: { [terraformName]+: { token_ttl: value } },
    } },
    '#withTokenType':: { 'function': {
      help:
        |||
          The type of token to generate, service or batch
        |||,
    } },
    withTokenType(value):: self { resource+: {
      vault_cert_auth_backend_role+: { [terraformName]+: { token_type: value } },
    } },

  }
  ,
  ref(terraformName):: {
    local refSelf = self,
    plain(suffix=''):: '${ vault_cert_auth_backend_role.%s%s }' % [terraformName, suffix],
    fields:: {
      '#alias_metadata':: { 'function': {
        help:
          |||
            The metadata to be tied to generated entity alias.
              This should be a list or map containing the metadata in key value pairs.
          |||,
      } },
      alias_metadata(suffix=''):: refSelf.plain('.alias_metadata%s' % suffix),
      allowed_common_names(suffix=''):: refSelf.plain('.allowed_common_names%s' % suffix),
      allowed_dns_sans(suffix=''):: refSelf.plain('.allowed_dns_sans%s' % suffix),
      allowed_email_sans(suffix=''):: refSelf.plain('.allowed_email_sans%s' % suffix),
      allowed_names(suffix=''):: refSelf.plain('.allowed_names%s' % suffix),
      allowed_organizational_units(suffix=''):: refSelf.plain('.allowed_organizational_units%s' % suffix),
      allowed_uri_sans(suffix=''):: refSelf.plain('.allowed_uri_sans%s' % suffix),
      backend(suffix=''):: refSelf.plain('.backend%s' % suffix),
      certificate(suffix=''):: refSelf.plain('.certificate%s' % suffix),
      display_name(suffix=''):: refSelf.plain('.display_name%s' % suffix),
      id(suffix=''):: refSelf.plain('.id%s' % suffix),
      name(suffix=''):: refSelf.plain('.name%s' % suffix),
      '#namespace':: { 'function': {
        help:
          |||
            Target namespace. (requires Enterprise)
          |||,
      } },
      namespace(suffix=''):: refSelf.plain('.namespace%s' % suffix),
      '#ocsp_ca_certificates':: { 'function': {
        help:
          |||
            Any additional CA certificates needed to verify OCSP responses. Provided as base64 encoded PEM data.
          |||,
      } },
      ocsp_ca_certificates(suffix=''):: refSelf.plain('.ocsp_ca_certificates%s' % suffix),
      '#ocsp_enabled':: { 'function': {
        help:
          |||
            If enabled, validate certificates' revocation status using OCSP.
          |||,
      } },
      ocsp_enabled(suffix=''):: refSelf.plain('.ocsp_enabled%s' % suffix),
      '#ocsp_fail_open':: { 'function': {
        help:
          |||
            If true and an OCSP response cannot be fetched or is of an unknown status, the login will proceed as if the certificate has not been revoked.
          |||,
      } },
      ocsp_fail_open(suffix=''):: refSelf.plain('.ocsp_fail_open%s' % suffix),
      '#ocsp_max_retries':: { 'function': {
        help:
          |||
            The number of retries to attempt when connecting to an OCSP server. Defaults to 4 retries. Must be a non-negative value.
          |||,
      } },
      ocsp_max_retries(suffix=''):: refSelf.plain('.ocsp_max_retries%s' % suffix),
      '#ocsp_query_all_servers':: { 'function': {
        help:
          |||
            If set to true, rather than accepting the first successful OCSP response, query all servers and consider the certificate valid only if all servers agree.
          |||,
      } },
      ocsp_query_all_servers(suffix=''):: refSelf.plain('.ocsp_query_all_servers%s' % suffix),
      '#ocsp_servers_override':: { 'function': {
        help:
          |||
            A comma-separated list of OCSP server addresses. If unset, the OCSP server is determined from the AuthorityInformationAccess extension on the certificate being inspected.
          |||,
      } },
      ocsp_servers_override(suffix=''):: refSelf.plain('.ocsp_servers_override%s' % suffix),
      '#ocsp_this_update_max_age':: { 'function': {
        help:
          |||
            The maximum age in seconds of the 'thisUpdate' field in an OCSP response before it is considered too old. Defaults to 0 (disabled). Must be a non-negative value.
          |||,
      } },
      ocsp_this_update_max_age(suffix=''):: refSelf.plain('.ocsp_this_update_max_age%s' % suffix),
      required_extensions(suffix=''):: refSelf.plain('.required_extensions%s' % suffix),
      '#token_bound_cidrs':: { 'function': {
        help:
          |||
            Specifies the blocks of IP addresses which are allowed to use the generated token
          |||,
      } },
      token_bound_cidrs(suffix=''):: refSelf.plain('.token_bound_cidrs%s' % suffix),
      '#token_explicit_max_ttl':: { 'function': {
        help:
          |||
            Generated Token's Explicit Maximum TTL in seconds
          |||,
      } },
      token_explicit_max_ttl(suffix=''):: refSelf.plain('.token_explicit_max_ttl%s' % suffix),
      '#token_max_ttl':: { 'function': {
        help:
          |||
            The maximum lifetime of the generated token
          |||,
      } },
      token_max_ttl(suffix=''):: refSelf.plain('.token_max_ttl%s' % suffix),
      '#token_no_default_policy':: { 'function': {
        help:
          |||
            If true, the 'default' policy will not automatically be added to generated tokens
          |||,
      } },
      token_no_default_policy(suffix=''):: refSelf.plain('.token_no_default_policy%s' % suffix),
      '#token_num_uses':: { 'function': {
        help:
          |||
            The maximum number of times a token may be used, a value of zero means unlimited
          |||,
      } },
      token_num_uses(suffix=''):: refSelf.plain('.token_num_uses%s' % suffix),
      '#token_period':: { 'function': {
        help:
          |||
            Generated Token's Period
          |||,
      } },
      token_period(suffix=''):: refSelf.plain('.token_period%s' % suffix),
      '#token_policies':: { 'function': {
        help:
          |||
            Generated Token's Policies
          |||,
      } },
      token_policies(suffix=''):: refSelf.plain('.token_policies%s' % suffix),
      '#token_ttl':: { 'function': {
        help:
          |||
            The initial ttl of the token to generate in seconds
          |||,
      } },
      token_ttl(suffix=''):: refSelf.plain('.token_ttl%s' % suffix),
      '#token_type':: { 'function': {
        help:
          |||
            The type of token to generate, service or batch
          |||,
      } },
      token_type(suffix=''):: refSelf.plain('.token_type%s' % suffix),

    },

  },

}
