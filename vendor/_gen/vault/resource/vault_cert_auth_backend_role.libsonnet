{
  new(terraformName, certificate, name):: {
    _type:: 'tf',
    resource+: {
      vault_cert_auth_backend_role+: { [terraformName]+: {
        certificate: certificate,
        name: name,
      } },
    },
    '#withAliasMetadata': { 'function': { help: |||
      The metadata to be tied to generated entity alias.
       This should be a list or map containing the metadata in key value pairs. 
    ||| } },
    withAliasMetadata(value):: self {
      resource+: {
        vault_cert_auth_backend_role+: { [terraformName]+: { alias_metadata: value } },
      },
    },
    withAllowedCommonNames(value):: self {
      resource+: {
        vault_cert_auth_backend_role+: { [terraformName]+: { allowed_common_names: value } },
      },
    },
    withAllowedDnsSans(value):: self {
      resource+: {
        vault_cert_auth_backend_role+: { [terraformName]+: { allowed_dns_sans: value } },
      },
    },
    withAllowedEmailSans(value):: self {
      resource+: {
        vault_cert_auth_backend_role+: { [terraformName]+: { allowed_email_sans: value } },
      },
    },
    withAllowedNames(value):: self {
      resource+: {
        vault_cert_auth_backend_role+: { [terraformName]+: { allowed_names: value } },
      },
    },
    withAllowedOrganizationalUnits(value):: self {
      resource+: {
        vault_cert_auth_backend_role+: { [terraformName]+: { allowed_organizational_units: value } },
      },
    },
    withAllowedUriSans(value):: self {
      resource+: {
        vault_cert_auth_backend_role+: { [terraformName]+: { allowed_uri_sans: value } },
      },
    },
    withBackend(value):: self {
      resource+: {
        vault_cert_auth_backend_role+: { [terraformName]+: { backend: value } },
      },
    },
    withCertificate(value):: self {
      resource+: {
        vault_cert_auth_backend_role+: { [terraformName]+: { certificate: value } },
      },
    },
    withDisplayName(value):: self {
      resource+: {
        vault_cert_auth_backend_role+: { [terraformName]+: { display_name: value } },
      },
    },
    withId(value):: self {
      resource+: {
        vault_cert_auth_backend_role+: { [terraformName]+: { id: value } },
      },
    },
    withName(value):: self {
      resource+: {
        vault_cert_auth_backend_role+: { [terraformName]+: { name: value } },
      },
    },
    '#withNamespace': { 'function': { help: |||
      Target namespace. (requires Enterprise) 
    ||| } },
    withNamespace(value):: self {
      resource+: {
        vault_cert_auth_backend_role+: { [terraformName]+: { namespace: value } },
      },
    },
    '#withOcspCaCertificates': { 'function': { help: |||
      Any additional CA certificates needed to verify OCSP responses. Provided as base64 encoded PEM data. 
    ||| } },
    withOcspCaCertificates(value):: self {
      resource+: {
        vault_cert_auth_backend_role+: { [terraformName]+: { ocsp_ca_certificates: value } },
      },
    },
    '#withOcspEnabled': { 'function': { help: |||
      If enabled, validate certificates' revocation status using OCSP. 
    ||| } },
    withOcspEnabled(value):: self {
      resource+: {
        vault_cert_auth_backend_role+: { [terraformName]+: { ocsp_enabled: value } },
      },
    },
    '#withOcspFailOpen': { 'function': { help: |||
      If true and an OCSP response cannot be fetched or is of an unknown status, the login will proceed as if the certificate has not been revoked. 
    ||| } },
    withOcspFailOpen(value):: self {
      resource+: {
        vault_cert_auth_backend_role+: { [terraformName]+: { ocsp_fail_open: value } },
      },
    },
    '#withOcspMaxRetries': { 'function': { help: |||
      The number of retries to attempt when connecting to an OCSP server. Defaults to 4 retries. Must be a non-negative value. 
    ||| } },
    withOcspMaxRetries(value):: self {
      resource+: {
        vault_cert_auth_backend_role+: { [terraformName]+: { ocsp_max_retries: value } },
      },
    },
    '#withOcspQueryAllServers': { 'function': { help: |||
      If set to true, rather than accepting the first successful OCSP response, query all servers and consider the certificate valid only if all servers agree. 
    ||| } },
    withOcspQueryAllServers(value):: self {
      resource+: {
        vault_cert_auth_backend_role+: { [terraformName]+: { ocsp_query_all_servers: value } },
      },
    },
    '#withOcspServersOverride': { 'function': { help: |||
      A comma-separated list of OCSP server addresses. If unset, the OCSP server is determined from the AuthorityInformationAccess extension on the certificate being inspected. 
    ||| } },
    withOcspServersOverride(value):: self {
      resource+: {
        vault_cert_auth_backend_role+: { [terraformName]+: { ocsp_servers_override: value } },
      },
    },
    '#withOcspThisUpdateMaxAge': { 'function': { help: |||
      The maximum age in seconds of the 'thisUpdate' field in an OCSP response before it is considered too old. Defaults to 0 (disabled). Must be a non-negative value. 
    ||| } },
    withOcspThisUpdateMaxAge(value):: self {
      resource+: {
        vault_cert_auth_backend_role+: { [terraformName]+: { ocsp_this_update_max_age: value } },
      },
    },
    withRequiredExtensions(value):: self {
      resource+: {
        vault_cert_auth_backend_role+: { [terraformName]+: { required_extensions: value } },
      },
    },
    '#withTokenBoundCidrs': { 'function': { help: |||
      Specifies the blocks of IP addresses which are allowed to use the generated token 
    ||| } },
    withTokenBoundCidrs(value):: self {
      resource+: {
        vault_cert_auth_backend_role+: { [terraformName]+: { token_bound_cidrs: value } },
      },
    },
    '#withTokenExplicitMaxTtl': { 'function': { help: |||
      Generated Token's Explicit Maximum TTL in seconds 
    ||| } },
    withTokenExplicitMaxTtl(value):: self {
      resource+: {
        vault_cert_auth_backend_role+: { [terraformName]+: { token_explicit_max_ttl: value } },
      },
    },
    '#withTokenMaxTtl': { 'function': { help: |||
      The maximum lifetime of the generated token 
    ||| } },
    withTokenMaxTtl(value):: self {
      resource+: {
        vault_cert_auth_backend_role+: { [terraformName]+: { token_max_ttl: value } },
      },
    },
    '#withTokenNoDefaultPolicy': { 'function': { help: |||
      If true, the 'default' policy will not automatically be added to generated tokens 
    ||| } },
    withTokenNoDefaultPolicy(value):: self {
      resource+: {
        vault_cert_auth_backend_role+: { [terraformName]+: { token_no_default_policy: value } },
      },
    },
    '#withTokenNumUses': { 'function': { help: |||
      The maximum number of times a token may be used, a value of zero means unlimited 
    ||| } },
    withTokenNumUses(value):: self {
      resource+: {
        vault_cert_auth_backend_role+: { [terraformName]+: { token_num_uses: value } },
      },
    },
    '#withTokenPeriod': { 'function': { help: |||
      Generated Token's Period 
    ||| } },
    withTokenPeriod(value):: self {
      resource+: {
        vault_cert_auth_backend_role+: { [terraformName]+: { token_period: value } },
      },
    },
    '#withTokenPolicies': { 'function': { help: |||
      Generated Token's Policies 
    ||| } },
    withTokenPolicies(value):: self {
      resource+: {
        vault_cert_auth_backend_role+: { [terraformName]+: { token_policies: value } },
      },
    },
    '#withTokenTtl': { 'function': { help: |||
      The initial ttl of the token to generate in seconds 
    ||| } },
    withTokenTtl(value):: self {
      resource+: {
        vault_cert_auth_backend_role+: { [terraformName]+: { token_ttl: value } },
      },
    },
    '#withTokenType': { 'function': { help: |||
      The type of token to generate, service or batch 
    ||| } },
    withTokenType(value):: self {
      resource+: {
        vault_cert_auth_backend_role+: { [terraformName]+: { token_type: value } },
      },
    },
  },
}
