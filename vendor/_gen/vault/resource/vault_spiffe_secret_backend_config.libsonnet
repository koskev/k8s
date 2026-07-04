{
  local outerSelf = self,
  new(terraformName, mount, trust_domain):: self.functions(terraformName) {
    ref():: outerSelf.ref(terraformName),
    _type:: 'tf',
    resource+: {
      vault_spiffe_secret_backend_config+: {
        [terraformName]+: {
          mount: mount,
          trust_domain: trust_domain,
        },
      },
    },
  },
  functions(terraformName):: {
    '#withBundleRefreshHint':: { 'function': { help: |||
      Refresh hint to use in trust bundles.
    ||| } },
    withBundleRefreshHint(value):: self {
      resource+: {
        vault_spiffe_secret_backend_config+: { [terraformName]+: { bundle_refresh_hint: value } },
      },
    },
    '#withJwtIssuerUrl':: { 'function': { help: |||
      Base URL to use for JWT iss claim.
    ||| } },
    withJwtIssuerUrl(value):: self {
      resource+: {
        vault_spiffe_secret_backend_config+: { [terraformName]+: { jwt_issuer_url: value } },
      },
    },
    '#withJwtOidcCompatibilityMode':: { 'function': { help: |||
      If true, SPIFFE IDs in JWT SVIDs must not exceed 255 bytes, the limit for the sub claim in OIDC.
    ||| } },
    withJwtOidcCompatibilityMode(value):: self {
      resource+: {
        vault_spiffe_secret_backend_config+: { [terraformName]+: { jwt_oidc_compatibility_mode: value } },
      },
    },
    '#withJwtSigningAlgorithm':: { 'function': { help: |||
      Signing algorithm to use for JWTs.
    ||| } },
    withJwtSigningAlgorithm(value):: self {
      resource+: {
        vault_spiffe_secret_backend_config+: { [terraformName]+: { jwt_signing_algorithm: value } },
      },
    },
    '#withKeyLifetime':: { 'function': { help: |||
      How long a signing key will live for once it starts being used to sign.
    ||| } },
    withKeyLifetime(value):: self {
      resource+: {
        vault_spiffe_secret_backend_config+: { [terraformName]+: { key_lifetime: value } },
      },
    },
    '#withMount':: { 'function': { help: |||
      Mount path for the SPIFFE secrets engine in Vault.
    ||| } },
    withMount(value):: self {
      resource+: {
        vault_spiffe_secret_backend_config+: { [terraformName]+: { mount: value } },
      },
    },
    '#withNamespace':: { 'function': { help: |||
      Target namespace. (requires Enterprise)
    ||| } },
    withNamespace(value):: self {
      resource+: {
        vault_spiffe_secret_backend_config+: { [terraformName]+: { namespace: value } },
      },
    },
    '#withTrustDomain':: { 'function': { help: |||
      The SPIFFE trust domain for this backend.
    ||| } },
    withTrustDomain(value):: self {
      resource+: {
        vault_spiffe_secret_backend_config+: { [terraformName]+: { trust_domain: value } },
      },
    },
  },
  ref(terraformName):: {
    local refSelf = self,
    plain(suffix=''):: '${ vault_spiffe_secret_backend_config.%s%s }' % [terraformName, suffix],
    fields:: {
      '#bundle_refresh_hint':: { 'function': { help: |||
        Refresh hint to use in trust bundles.
      ||| } },
      bundle_refresh_hint(suffix=''):: refSelf.plain('.bundle_refresh_hint%s' % suffix),
      '#jwt_issuer_url':: { 'function': { help: |||
        Base URL to use for JWT iss claim.
      ||| } },
      jwt_issuer_url(suffix=''):: refSelf.plain('.jwt_issuer_url%s' % suffix),
      '#jwt_oidc_compatibility_mode':: { 'function': { help: |||
        If true, SPIFFE IDs in JWT SVIDs must not exceed 255 bytes, the limit for the sub claim in OIDC.
      ||| } },
      jwt_oidc_compatibility_mode(suffix=''):: refSelf.plain('.jwt_oidc_compatibility_mode%s' % suffix),
      '#jwt_signing_algorithm':: { 'function': { help: |||
        Signing algorithm to use for JWTs.
      ||| } },
      jwt_signing_algorithm(suffix=''):: refSelf.plain('.jwt_signing_algorithm%s' % suffix),
      '#key_lifetime':: { 'function': { help: |||
        How long a signing key will live for once it starts being used to sign.
      ||| } },
      key_lifetime(suffix=''):: refSelf.plain('.key_lifetime%s' % suffix),
      '#mount':: { 'function': { help: |||
        Mount path for the SPIFFE secrets engine in Vault.
      ||| } },
      mount(suffix=''):: refSelf.plain('.mount%s' % suffix),
      '#namespace':: { 'function': { help: |||
        Target namespace. (requires Enterprise)
      ||| } },
      namespace(suffix=''):: refSelf.plain('.namespace%s' % suffix),
      '#trust_domain':: { 'function': { help: |||
        The SPIFFE trust domain for this backend.
      ||| } },
      trust_domain(suffix=''):: refSelf.plain('.trust_domain%s' % suffix),
    },
  },
}
