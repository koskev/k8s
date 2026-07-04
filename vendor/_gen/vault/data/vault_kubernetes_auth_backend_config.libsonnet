{
  local outerSelf = self,
  new(terraformName):: self.functions(terraformName) {
    ref():: outerSelf.ref(terraformName),
    _type:: 'tf',
    data+: {
      vault_kubernetes_auth_backend_config+: {
        [terraformName]+: {
        },
      },
    },
  },
  functions(terraformName):: {
    '#withBackend':: { 'function': { help: |||
      Unique name of the kubernetes backend to configure.
    ||| } },
    withBackend(value):: self {
      data+: {
        vault_kubernetes_auth_backend_config+: { [terraformName]+: { backend: value } },
      },
    },
    '#withDisableIssValidation':: { 'function': { help: |||
      Optional disable JWT issuer validation. Allows to skip ISS validation.
    ||| } },
    withDisableIssValidation(value):: self {
      data+: {
        vault_kubernetes_auth_backend_config+: { [terraformName]+: { disable_iss_validation: value } },
      },
    },
    '#withDisableLocalCaJwt':: { 'function': { help: |||
      Optional disable defaulting to the local CA cert and service account JWT when running in a Kubernetes pod.
    ||| } },
    withDisableLocalCaJwt(value):: self {
      data+: {
        vault_kubernetes_auth_backend_config+: { [terraformName]+: { disable_local_ca_jwt: value } },
      },
    },
    withId(value):: self {
      data+: {
        vault_kubernetes_auth_backend_config+: { [terraformName]+: { id: value } },
      },
    },
    '#withIssuer':: { 'function': { help: |||
      Optional JWT issuer. If no issuer is specified, kubernetes.io/serviceaccount will be used as the default issuer.
    ||| } },
    withIssuer(value):: self {
      data+: {
        vault_kubernetes_auth_backend_config+: { [terraformName]+: { issuer: value } },
      },
    },
    '#withKubernetesCaCert':: { 'function': { help: |||
      PEM encoded CA cert for use by the TLS client used to talk with the Kubernetes API.
    ||| } },
    withKubernetesCaCert(value):: self {
      data+: {
        vault_kubernetes_auth_backend_config+: { [terraformName]+: { kubernetes_ca_cert: value } },
      },
    },
    '#withKubernetesHost':: { 'function': { help: |||
      Host must be a host string, a host:port pair, or a URL to the base of the Kubernetes API server.
    ||| } },
    withKubernetesHost(value):: self {
      data+: {
        vault_kubernetes_auth_backend_config+: { [terraformName]+: { kubernetes_host: value } },
      },
    },
    '#withNamespace':: { 'function': { help: |||
      Target namespace. (requires Enterprise)
    ||| } },
    withNamespace(value):: self {
      data+: {
        vault_kubernetes_auth_backend_config+: { [terraformName]+: { namespace: value } },
      },
    },
    '#withPemKeys':: { 'function': { help: |||
      Optional list of PEM-formatted public keys or certificates used to verify the signatures of Kubernetes service account JWTs. If a certificate is given, its public key will be extracted. Not every installation of Kubernetes exposes these keys.
    ||| } },
    withPemKeys(value):: self {
      data+: {
        vault_kubernetes_auth_backend_config+: { [terraformName]+: { pem_keys: value } },
      },
    },
    '#withUseAnnotationsAsAliasMetadata':: { 'function': { help: |||
      Use annotations from the client token's associated service account as alias metadata for the Vault entity.
    ||| } },
    withUseAnnotationsAsAliasMetadata(value):: self {
      data+: {
        vault_kubernetes_auth_backend_config+: { [terraformName]+: { use_annotations_as_alias_metadata: value } },
      },
    },
  },
  ref(terraformName):: {
    local refSelf = self,
    plain(suffix=''):: '${ data.vault_kubernetes_auth_backend_config.%s%s }' % [terraformName, suffix],
    fields:: {
      '#backend':: { 'function': { help: |||
        Unique name of the kubernetes backend to configure.
      ||| } },
      backend(suffix=''):: refSelf.plain('.backend%s' % suffix),
      '#disable_iss_validation':: { 'function': { help: |||
        Optional disable JWT issuer validation. Allows to skip ISS validation.
      ||| } },
      disable_iss_validation(suffix=''):: refSelf.plain('.disable_iss_validation%s' % suffix),
      '#disable_local_ca_jwt':: { 'function': { help: |||
        Optional disable defaulting to the local CA cert and service account JWT when running in a Kubernetes pod.
      ||| } },
      disable_local_ca_jwt(suffix=''):: refSelf.plain('.disable_local_ca_jwt%s' % suffix),
      id(suffix=''):: refSelf.plain('.id%s' % suffix),
      '#issuer':: { 'function': { help: |||
        Optional JWT issuer. If no issuer is specified, kubernetes.io/serviceaccount will be used as the default issuer.
      ||| } },
      issuer(suffix=''):: refSelf.plain('.issuer%s' % suffix),
      '#kubernetes_ca_cert':: { 'function': { help: |||
        PEM encoded CA cert for use by the TLS client used to talk with the Kubernetes API.
      ||| } },
      kubernetes_ca_cert(suffix=''):: refSelf.plain('.kubernetes_ca_cert%s' % suffix),
      '#kubernetes_host':: { 'function': { help: |||
        Host must be a host string, a host:port pair, or a URL to the base of the Kubernetes API server.
      ||| } },
      kubernetes_host(suffix=''):: refSelf.plain('.kubernetes_host%s' % suffix),
      '#namespace':: { 'function': { help: |||
        Target namespace. (requires Enterprise)
      ||| } },
      namespace(suffix=''):: refSelf.plain('.namespace%s' % suffix),
      '#pem_keys':: { 'function': { help: |||
        Optional list of PEM-formatted public keys or certificates used to verify the signatures of Kubernetes service account JWTs. If a certificate is given, its public key will be extracted. Not every installation of Kubernetes exposes these keys.
      ||| } },
      pem_keys(suffix=''):: refSelf.plain('.pem_keys%s' % suffix),
      '#use_annotations_as_alias_metadata':: { 'function': { help: |||
        Use annotations from the client token's associated service account as alias metadata for the Vault entity.
      ||| } },
      use_annotations_as_alias_metadata(suffix=''):: refSelf.plain('.use_annotations_as_alias_metadata%s' % suffix),
    },
  },
}
