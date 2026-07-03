{
  new(terraformName, mount, profile, trust_domain):: self.functions(terraformName) {
    _type:: 'tf',
    resource+: {
      vault_spiffe_auth_backend_config+: {
        [terraformName]+: {
          mount: mount,
          profile: profile,
          trust_domain: trust_domain,
        },
      },
    },
  },
  functions(terraformName):: {
    '#withAudience':: { 'function': { help: |||
      A list of audience values allowed to match claims in JWT-SVIDs 
    ||| } },
    withAudience(value):: self {
      resource+: {
        vault_spiffe_auth_backend_config+: { [terraformName]+: { audience: value } },
      },
    },
    '#withBundle':: { 'function': { help: |||
      When profile is 'https_spiffe_bundle', the bootstrapping bundle in SPIFFE format; when profile is 'static', either a bundle in SPIFFE format or PEM-encoded CA certificate(s) 
    ||| } },
    withBundle(value):: self {
      resource+: {
        vault_spiffe_auth_backend_config+: { [terraformName]+: { bundle: value } },
      },
    },
    '#withDeferBundleFetch':: { 'function': { help: |||
      Don't attempt to fetch a bundle immediately; only applies when profile != static 
    ||| } },
    withDeferBundleFetch(value):: self {
      resource+: {
        vault_spiffe_auth_backend_config+: { [terraformName]+: { defer_bundle_fetch: value } },
      },
    },
    '#withEndpointRootCaTruststorePem':: { 'function': { help: |||
      PEM-encoded CA certificate(s) to validate the server reached by 'endpoint_url', if set this will override the default TLS trust store 
    ||| } },
    withEndpointRootCaTruststorePem(value):: self {
      resource+: {
        vault_spiffe_auth_backend_config+: { [terraformName]+: { endpoint_root_ca_truststore_pem: value } },
      },
    },
    '#withEndpointSpiffeId':: { 'function': { help: |||
      The server's SPIFFE ID to validate when profile is 'https_spiffe_bundle' 
    ||| } },
    withEndpointSpiffeId(value):: self {
      resource+: {
        vault_spiffe_auth_backend_config+: { [terraformName]+: { endpoint_spiffe_id: value } },
      },
    },
    '#withEndpointUrl':: { 'function': { help: |||
      The URI to be used when profile is 'https_web_bundle' or 'https_spiffe_bundle' 
    ||| } },
    withEndpointUrl(value):: self {
      resource+: {
        vault_spiffe_auth_backend_config+: { [terraformName]+: { endpoint_url: value } },
      },
    },
    '#withMount':: { 'function': { help: |||
      Mount path for the SPIFFE auth engine in Vault. 
    ||| } },
    withMount(value):: self {
      resource+: {
        vault_spiffe_auth_backend_config+: { [terraformName]+: { mount: value } },
      },
    },
    '#withNamespace':: { 'function': { help: |||
      Target namespace. (requires Enterprise) 
    ||| } },
    withNamespace(value):: self {
      resource+: {
        vault_spiffe_auth_backend_config+: { [terraformName]+: { namespace: value } },
      },
    },
    '#withProfile':: { 'function': { help: |||
      The mechanism to fetch or embed the trust bundle to use. 
    ||| } },
    withProfile(value):: self {
      resource+: {
        vault_spiffe_auth_backend_config+: { [terraformName]+: { profile: value } },
      },
    },
    '#withTrustDomain':: { 'function': { help: |||
      The SPIFFE trust domain for this backend. 
    ||| } },
    withTrustDomain(value):: self {
      resource+: {
        vault_spiffe_auth_backend_config+: { [terraformName]+: { trust_domain: value } },
      },
    },
  },
  ref(terraformName):: {
    local refSelf = self,
    plain(suffix=''):: '${ vault_spiffe_auth_backend_config.%s%s }' % [terraformName, suffix],
    fields:: {
      '#audience':: { 'function': { help: |||
        A list of audience values allowed to match claims in JWT-SVIDs 
      ||| } },
      audience(suffix=''):: refSelf.plain('.audience%s' % suffix),
      '#bundle':: { 'function': { help: |||
        When profile is 'https_spiffe_bundle', the bootstrapping bundle in SPIFFE format; when profile is 'static', either a bundle in SPIFFE format or PEM-encoded CA certificate(s) 
      ||| } },
      bundle(suffix=''):: refSelf.plain('.bundle%s' % suffix),
      '#defer_bundle_fetch':: { 'function': { help: |||
        Don't attempt to fetch a bundle immediately; only applies when profile != static 
      ||| } },
      defer_bundle_fetch(suffix=''):: refSelf.plain('.defer_bundle_fetch%s' % suffix),
      '#endpoint_root_ca_truststore_pem':: { 'function': { help: |||
        PEM-encoded CA certificate(s) to validate the server reached by 'endpoint_url', if set this will override the default TLS trust store 
      ||| } },
      endpoint_root_ca_truststore_pem(suffix=''):: refSelf.plain('.endpoint_root_ca_truststore_pem%s' % suffix),
      '#endpoint_spiffe_id':: { 'function': { help: |||
        The server's SPIFFE ID to validate when profile is 'https_spiffe_bundle' 
      ||| } },
      endpoint_spiffe_id(suffix=''):: refSelf.plain('.endpoint_spiffe_id%s' % suffix),
      '#endpoint_url':: { 'function': { help: |||
        The URI to be used when profile is 'https_web_bundle' or 'https_spiffe_bundle' 
      ||| } },
      endpoint_url(suffix=''):: refSelf.plain('.endpoint_url%s' % suffix),
      '#mount':: { 'function': { help: |||
        Mount path for the SPIFFE auth engine in Vault. 
      ||| } },
      mount(suffix=''):: refSelf.plain('.mount%s' % suffix),
      '#namespace':: { 'function': { help: |||
        Target namespace. (requires Enterprise) 
      ||| } },
      namespace(suffix=''):: refSelf.plain('.namespace%s' % suffix),
      '#profile':: { 'function': { help: |||
        The mechanism to fetch or embed the trust bundle to use. 
      ||| } },
      profile(suffix=''):: refSelf.plain('.profile%s' % suffix),
      '#trust_domain':: { 'function': { help: |||
        The SPIFFE trust domain for this backend. 
      ||| } },
      trust_domain(suffix=''):: refSelf.plain('.trust_domain%s' % suffix),
    },
  },
}
