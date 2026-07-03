{
  new(terraformName, mount, trust_domain):: {
    _type:: 'tf',
    resource+: {
      vault_spiffe_secret_backend_config+: { [terraformName]+: {
        mount: mount,
        trust_domain: trust_domain,
      } },
    },
    '#withBundleRefreshHint': { 'function': { help: |||
      Refresh hint to use in trust bundles. 
    ||| } },
    withBundleRefreshHint(value):: self {
      resource+: {
        vault_spiffe_secret_backend_config+: { [terraformName]+: { bundle_refresh_hint: value } },
      },
    },
    '#withJwtIssuerUrl': { 'function': { help: |||
      Base URL to use for JWT iss claim. 
    ||| } },
    withJwtIssuerUrl(value):: self {
      resource+: {
        vault_spiffe_secret_backend_config+: { [terraformName]+: { jwt_issuer_url: value } },
      },
    },
    '#withJwtOidcCompatibilityMode': { 'function': { help: |||
      If true, SPIFFE IDs in JWT SVIDs must not exceed 255 bytes, the limit for the sub claim in OIDC. 
    ||| } },
    withJwtOidcCompatibilityMode(value):: self {
      resource+: {
        vault_spiffe_secret_backend_config+: { [terraformName]+: { jwt_oidc_compatibility_mode: value } },
      },
    },
    '#withJwtSigningAlgorithm': { 'function': { help: |||
      Signing algorithm to use for JWTs. 
    ||| } },
    withJwtSigningAlgorithm(value):: self {
      resource+: {
        vault_spiffe_secret_backend_config+: { [terraformName]+: { jwt_signing_algorithm: value } },
      },
    },
    '#withKeyLifetime': { 'function': { help: |||
      How long a signing key will live for once it starts being used to sign. 
    ||| } },
    withKeyLifetime(value):: self {
      resource+: {
        vault_spiffe_secret_backend_config+: { [terraformName]+: { key_lifetime: value } },
      },
    },
    '#withMount': { 'function': { help: |||
      Mount path for the SPIFFE secrets engine in Vault. 
    ||| } },
    withMount(value):: self {
      resource+: {
        vault_spiffe_secret_backend_config+: { [terraformName]+: { mount: value } },
      },
    },
    '#withNamespace': { 'function': { help: |||
      Target namespace. (requires Enterprise) 
    ||| } },
    withNamespace(value):: self {
      resource+: {
        vault_spiffe_secret_backend_config+: { [terraformName]+: { namespace: value } },
      },
    },
    '#withTrustDomain': { 'function': { help: |||
      The SPIFFE trust domain for this backend. 
    ||| } },
    withTrustDomain(value):: self {
      resource+: {
        vault_spiffe_secret_backend_config+: { [terraformName]+: { trust_domain: value } },
      },
    },
  },
}
