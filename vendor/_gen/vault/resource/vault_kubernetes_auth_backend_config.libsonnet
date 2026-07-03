{
  new(terraformName, kubernetes_host):: {
    _type:: 'tf',
    resource+: {
      vault_kubernetes_auth_backend_config+: { [terraformName]+: {
        kubernetes_host: kubernetes_host,
      } },
    },
    '#withBackend': { 'function': { help: |||
      Unique name of the kubernetes backend to configure. 
    ||| } },
    withBackend(value):: self {
      resource+: {
        vault_kubernetes_auth_backend_config+: { [terraformName]+: { backend: value } },
      },
    },
    '#withDisableIssValidation': { 'function': { help: |||
      Optional disable JWT issuer validation. Allows to skip ISS validation. 
    ||| } },
    withDisableIssValidation(value):: self {
      resource+: {
        vault_kubernetes_auth_backend_config+: { [terraformName]+: { disable_iss_validation: value } },
      },
    },
    '#withDisableLocalCaJwt': { 'function': { help: |||
      Optional disable defaulting to the local CA cert and service account JWT when running in a Kubernetes pod. 
    ||| } },
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
    '#withIssuer': { 'function': { help: |||
      Optional JWT issuer. If no issuer is specified, kubernetes.io/serviceaccount will be used as the default issuer. 
    ||| } },
    withIssuer(value):: self {
      resource+: {
        vault_kubernetes_auth_backend_config+: { [terraformName]+: { issuer: value } },
      },
    },
    '#withKubernetesCaCert': { 'function': { help: |||
      PEM encoded CA cert for use by the TLS client used to talk with the Kubernetes API. 
    ||| } },
    withKubernetesCaCert(value):: self {
      resource+: {
        vault_kubernetes_auth_backend_config+: { [terraformName]+: { kubernetes_ca_cert: value } },
      },
    },
    '#withKubernetesHost': { 'function': { help: |||
      Host must be a host string, a host:port pair, or a URL to the base of the Kubernetes API server. 
    ||| } },
    withKubernetesHost(value):: self {
      resource+: {
        vault_kubernetes_auth_backend_config+: { [terraformName]+: { kubernetes_host: value } },
      },
    },
    '#withNamespace': { 'function': { help: |||
      Target namespace. (requires Enterprise) 
    ||| } },
    withNamespace(value):: self {
      resource+: {
        vault_kubernetes_auth_backend_config+: { [terraformName]+: { namespace: value } },
      },
    },
    '#withPemKeys': { 'function': { help: |||
      Optional list of PEM-formatted public keys or certificates used to verify the signatures of Kubernetes service account JWTs. If a certificate is given, its public key will be extracted. Not every installation of Kubernetes exposes these keys. 
    ||| } },
    withPemKeys(value):: self {
      resource+: {
        vault_kubernetes_auth_backend_config+: { [terraformName]+: { pem_keys: value } },
      },
    },
    '#withTokenReviewerJwt': { 'function': { help: |||
      A service account JWT (or other token) used as a bearer token to access the TokenReview API to validate other JWTs during login. If not set the JWT used for login will be used to access the API. 
    ||| } },
    withTokenReviewerJwt(value):: self {
      resource+: {
        vault_kubernetes_auth_backend_config+: { [terraformName]+: { token_reviewer_jwt: value } },
      },
    },
    '#withTokenReviewerJwtWo': { 'function': { help: |||
      A write-only service account JWT (or other token) used as a bearer token to access the TokenReview API to validate other JWTs during login. If not set the JWT used for login will be used to access the API. 
    ||| } },
    withTokenReviewerJwtWo(value):: self {
      resource+: {
        vault_kubernetes_auth_backend_config+: { [terraformName]+: { token_reviewer_jwt_wo: value } },
      },
    },
    '#withTokenReviewerJwtWoVersion': { 'function': { help: |||
      The version of token_reviewer_jwt_wo to use during write operations. 
    ||| } },
    withTokenReviewerJwtWoVersion(value):: self {
      resource+: {
        vault_kubernetes_auth_backend_config+: { [terraformName]+: { token_reviewer_jwt_wo_version: value } },
      },
    },
    '#withUseAnnotationsAsAliasMetadata': { 'function': { help: |||
      Use annotations from the client token's associated service account as alias metadata for the Vault entity. 
    ||| } },
    withUseAnnotationsAsAliasMetadata(value):: self {
      resource+: {
        vault_kubernetes_auth_backend_config+: { [terraformName]+: { use_annotations_as_alias_metadata: value } },
      },
    },
  },
}
