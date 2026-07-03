{
  new(terraformName, mount, template, name):: {
    _type:: 'tf',
    resource+: {
      vault_spiffe_secret_backend_role+: { [terraformName]+: {
        mount: mount,
        template: template,
        name: name,
      } },
    },
    withTtl(value):: self {
      resource+: {
        vault_spiffe_secret_backend_role+: { [terraformName]+: { ttl: value } },
      },
    },
    withMount(value):: self {
      resource+: {
        vault_spiffe_secret_backend_role+: { [terraformName]+: { mount: value } },
      },
    },
    withTemplate(value):: self {
      resource+: {
        vault_spiffe_secret_backend_role+: { [terraformName]+: { template: value } },
      },
    },
    withName(value):: self {
      resource+: {
        vault_spiffe_secret_backend_role+: { [terraformName]+: { name: value } },
      },
    },
    withNamespace(value):: self {
      resource+: {
        vault_spiffe_secret_backend_role+: { [terraformName]+: { namespace: value } },
      },
    },
    withUseJtiClaim(value):: self {
      resource+: {
        vault_spiffe_secret_backend_role+: { [terraformName]+: { use_jti_claim: value } },
      },
    },
  },
}
