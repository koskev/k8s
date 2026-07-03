{
  new(terraformName, mount, trust_domain):: {
    _type:: 'tf',
    resource+: {
      vault_spiffe_secret_backend_config+: { [terraformName]+: {
        mount: mount,
        trust_domain: trust_domain,
      } },
    },
    withNamespace(value):: self {
      resource+: {
        vault_spiffe_secret_backend_config+: { [terraformName]+: { namespace: value } },
      },
    },
    withJwtSigningAlgorithm(value):: self {
      resource+: {
        vault_spiffe_secret_backend_config+: { [terraformName]+: { jwt_signing_algorithm: value } },
      },
    },
    withJwtIssuerUrl(value):: self {
      resource+: {
        vault_spiffe_secret_backend_config+: { [terraformName]+: { jwt_issuer_url: value } },
      },
    },
    withMount(value):: self {
      resource+: {
        vault_spiffe_secret_backend_config+: { [terraformName]+: { mount: value } },
      },
    },
    withJwtOidcCompatibilityMode(value):: self {
      resource+: {
        vault_spiffe_secret_backend_config+: { [terraformName]+: { jwt_oidc_compatibility_mode: value } },
      },
    },
    withKeyLifetime(value):: self {
      resource+: {
        vault_spiffe_secret_backend_config+: { [terraformName]+: { key_lifetime: value } },
      },
    },
    withBundleRefreshHint(value):: self {
      resource+: {
        vault_spiffe_secret_backend_config+: { [terraformName]+: { bundle_refresh_hint: value } },
      },
    },
    withTrustDomain(value):: self {
      resource+: {
        vault_spiffe_secret_backend_config+: { [terraformName]+: { trust_domain: value } },
      },
    },
  },
}
