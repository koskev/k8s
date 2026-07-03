{
  new(terraformName, kubernetes_host):: {
    _type:: 'tf',
    resource+: {
      vault_kubernetes_auth_backend_config+: { [terraformName]+: {
        kubernetes_host: kubernetes_host,
      } },
    },
    withPemKeys(value):: self {
      resource+: {
        vault_kubernetes_auth_backend_config+: { [terraformName]+: { pem_keys: value } },
      },
    },
    withBackend(value):: self {
      resource+: {
        vault_kubernetes_auth_backend_config+: { [terraformName]+: { backend: value } },
      },
    },
    withTokenReviewerJwtWo(value):: self {
      resource+: {
        vault_kubernetes_auth_backend_config+: { [terraformName]+: { token_reviewer_jwt_wo: value } },
      },
    },
    withDisableLocalCaJwt(value):: self {
      resource+: {
        vault_kubernetes_auth_backend_config+: { [terraformName]+: { disable_local_ca_jwt: value } },
      },
    },
    withId(value):: self {
      resource+: {
        vault_kubernetes_auth_backend_config+: { [terraformName]+: { id: value } },
      },
    },
    withKubernetesCaCert(value):: self {
      resource+: {
        vault_kubernetes_auth_backend_config+: { [terraformName]+: { kubernetes_ca_cert: value } },
      },
    },
    withTokenReviewerJwtWoVersion(value):: self {
      resource+: {
        vault_kubernetes_auth_backend_config+: { [terraformName]+: { token_reviewer_jwt_wo_version: value } },
      },
    },
    withKubernetesHost(value):: self {
      resource+: {
        vault_kubernetes_auth_backend_config+: { [terraformName]+: { kubernetes_host: value } },
      },
    },
    withDisableIssValidation(value):: self {
      resource+: {
        vault_kubernetes_auth_backend_config+: { [terraformName]+: { disable_iss_validation: value } },
      },
    },
    withTokenReviewerJwt(value):: self {
      resource+: {
        vault_kubernetes_auth_backend_config+: { [terraformName]+: { token_reviewer_jwt: value } },
      },
    },
    withIssuer(value):: self {
      resource+: {
        vault_kubernetes_auth_backend_config+: { [terraformName]+: { issuer: value } },
      },
    },
    withUseAnnotationsAsAliasMetadata(value):: self {
      resource+: {
        vault_kubernetes_auth_backend_config+: { [terraformName]+: { use_annotations_as_alias_metadata: value } },
      },
    },
    withNamespace(value):: self {
      resource+: {
        vault_kubernetes_auth_backend_config+: { [terraformName]+: { namespace: value } },
      },
    },
  },
}
