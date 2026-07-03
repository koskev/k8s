{
  new(terraformName, mount, trust_domain, profile):: {
    _type:: 'tf',
    resource+: {
      vault_spiffe_auth_backend_config+: { [terraformName]+: {
        mount: mount,
        trust_domain: trust_domain,
        profile: profile,
      } },
    },
    withEndpointSpiffeId(value):: self {
      resource+: {
        vault_spiffe_auth_backend_config+: { [terraformName]+: { endpoint_spiffe_id: value } },
      },
    },
    withEndpointUrl(value):: self {
      resource+: {
        vault_spiffe_auth_backend_config+: { [terraformName]+: { endpoint_url: value } },
      },
    },
    withDeferBundleFetch(value):: self {
      resource+: {
        vault_spiffe_auth_backend_config+: { [terraformName]+: { defer_bundle_fetch: value } },
      },
    },
    withMount(value):: self {
      resource+: {
        vault_spiffe_auth_backend_config+: { [terraformName]+: { mount: value } },
      },
    },
    withAudience(value):: self {
      resource+: {
        vault_spiffe_auth_backend_config+: { [terraformName]+: { audience: value } },
      },
    },
    withBundle(value):: self {
      resource+: {
        vault_spiffe_auth_backend_config+: { [terraformName]+: { bundle: value } },
      },
    },
    withEndpointRootCaTruststorePem(value):: self {
      resource+: {
        vault_spiffe_auth_backend_config+: { [terraformName]+: { endpoint_root_ca_truststore_pem: value } },
      },
    },
    withTrustDomain(value):: self {
      resource+: {
        vault_spiffe_auth_backend_config+: { [terraformName]+: { trust_domain: value } },
      },
    },
    withProfile(value):: self {
      resource+: {
        vault_spiffe_auth_backend_config+: { [terraformName]+: { profile: value } },
      },
    },
    withNamespace(value):: self {
      resource+: {
        vault_spiffe_auth_backend_config+: { [terraformName]+: { namespace: value } },
      },
    },
  },
}
