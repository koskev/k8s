{
  new(terraformName):: {
    _type:: 'tf',
    data+: {
      vault_kubernetes_auth_backend_config+: { [terraformName]+: {
      } },
    },
    withNamespace(value):: self {
      data+: {
        vault_kubernetes_auth_backend_config+: { [terraformName]+: { namespace: value } },
      },
    },
    withDisableIssValidation(value):: self {
      data+: {
        vault_kubernetes_auth_backend_config+: { [terraformName]+: { disable_iss_validation: value } },
      },
    },
    withId(value):: self {
      data+: {
        vault_kubernetes_auth_backend_config+: { [terraformName]+: { id: value } },
      },
    },
    withKubernetesCaCert(value):: self {
      data+: {
        vault_kubernetes_auth_backend_config+: { [terraformName]+: { kubernetes_ca_cert: value } },
      },
    },
    withKubernetesHost(value):: self {
      data+: {
        vault_kubernetes_auth_backend_config+: { [terraformName]+: { kubernetes_host: value } },
      },
    },
    withBackend(value):: self {
      data+: {
        vault_kubernetes_auth_backend_config+: { [terraformName]+: { backend: value } },
      },
    },
    withPemKeys(value):: self {
      data+: {
        vault_kubernetes_auth_backend_config+: { [terraformName]+: { pem_keys: value } },
      },
    },
    withUseAnnotationsAsAliasMetadata(value):: self {
      data+: {
        vault_kubernetes_auth_backend_config+: { [terraformName]+: { use_annotations_as_alias_metadata: value } },
      },
    },
    withIssuer(value):: self {
      data+: {
        vault_kubernetes_auth_backend_config+: { [terraformName]+: { issuer: value } },
      },
    },
    withDisableLocalCaJwt(value):: self {
      data+: {
        vault_kubernetes_auth_backend_config+: { [terraformName]+: { disable_local_ca_jwt: value } },
      },
    },
  },
}
