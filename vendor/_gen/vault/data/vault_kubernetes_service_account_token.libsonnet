{
  local outerSelf = self,
  new(terraformName, backend, kubernetes_namespace, role):: self.functions(terraformName) + {
    _type:: 'tf',
    ref():: outerSelf.ref(terraformName),
    data+: {
      vault_kubernetes_service_account_token+: { [terraformName]+: {
        backend: backend,
        kubernetes_namespace: kubernetes_namespace,
        role: role,
      } },
    },
  }
  ,
  functions(terraformName):: {
    withForEach(value):: self { data+: {
      vault_kubernetes_service_account_token+: { [terraformName]+: { for_each: value } },
    } },
    withDependsOn(value):: self { data+: {
      vault_kubernetes_service_account_token+: { [terraformName]+: { depends_on: value } },
    } },
    withCount(value):: self { data+: {
      vault_kubernetes_service_account_token+: { [terraformName]+: { count: value } },
    } },
    withLifecycle(value):: self { data+: {
      vault_kubernetes_service_account_token+: { [terraformName]+: { lifecycle: value } },
    } },
    withProvider(value):: self { data+: {
      vault_kubernetes_service_account_token+: { [terraformName]+: { provider: value } },
    } },
    withProviders(value):: self { data+: {
      vault_kubernetes_service_account_token+: { [terraformName]+: { providers: value } },
    } },
    addCustomData(name, value):: self { data+: {
      vault_kubernetes_service_account_token+: { [terraformName]+: { [name]: value } },
    } },
    '#withBackend':: { 'function': {
      help:
        |||
          The Kubernetes secret backend to generate service account tokens from.
        |||,
    } },
    withBackend(value):: self { data+: {
      vault_kubernetes_service_account_token+: { [terraformName]+: { backend: value } },
    } },
    '#withClusterRoleBinding':: { 'function': {
      help:
        |||
          If true, generate a ClusterRoleBinding to grant permissions across the whole cluster instead of within a namespace.
        |||,
    } },
    withClusterRoleBinding(value):: self { data+: {
      vault_kubernetes_service_account_token+: { [terraformName]+: { cluster_role_binding: value } },
    } },
    withId(value):: self { data+: {
      vault_kubernetes_service_account_token+: { [terraformName]+: { id: value } },
    } },
    '#withKubernetesNamespace':: { 'function': {
      help:
        |||
          The name of the Kubernetes namespace in which to generate the credentials.
        |||,
    } },
    withKubernetesNamespace(value):: self { data+: {
      vault_kubernetes_service_account_token+: { [terraformName]+: { kubernetes_namespace: value } },
    } },
    '#withNamespace':: { 'function': {
      help:
        |||
          Target namespace. (requires Enterprise)
        |||,
    } },
    withNamespace(value):: self { data+: {
      vault_kubernetes_service_account_token+: { [terraformName]+: { namespace: value } },
    } },
    '#withRole':: { 'function': {
      help:
        |||
          The name of the role.
        |||,
    } },
    withRole(value):: self { data+: {
      vault_kubernetes_service_account_token+: { [terraformName]+: { role: value } },
    } },
    '#withTtl':: { 'function': {
      help:
        |||
          The TTL of the generated Kubernetes service account token, specified in seconds or as a Go duration format string
        |||,
    } },
    withTtl(value):: self { data+: {
      vault_kubernetes_service_account_token+: { [terraformName]+: { ttl: value } },
    } },

  }
  ,
  ref(terraformName):: {
    local refSelf = self,
    plain(suffix=''):: '${ data.vault_kubernetes_service_account_token.%s%s }' % [terraformName, suffix],
    fields:: {
      '#backend':: { 'function': {
        help:
          |||
            The Kubernetes secret backend to generate service account tokens from.
          |||,
      } },
      backend(suffix=''):: refSelf.plain('.backend%s' % suffix),
      '#cluster_role_binding':: { 'function': {
        help:
          |||
            If true, generate a ClusterRoleBinding to grant permissions across the whole cluster instead of within a namespace.
          |||,
      } },
      cluster_role_binding(suffix=''):: refSelf.plain('.cluster_role_binding%s' % suffix),
      id(suffix=''):: refSelf.plain('.id%s' % suffix),
      '#kubernetes_namespace':: { 'function': {
        help:
          |||
            The name of the Kubernetes namespace in which to generate the credentials.
          |||,
      } },
      kubernetes_namespace(suffix=''):: refSelf.plain('.kubernetes_namespace%s' % suffix),
      '#lease_duration':: { 'function': {
        help:
          |||
            The duration of the lease in seconds.
          |||,
      } },
      lease_duration(suffix=''):: refSelf.plain('.lease_duration%s' % suffix),
      '#lease_id':: { 'function': {
        help:
          |||
            The lease identifier assigned by Vault.
          |||,
      } },
      lease_id(suffix=''):: refSelf.plain('.lease_id%s' % suffix),
      '#lease_renewable':: { 'function': {
        help:
          |||
            True if the duration of this lease can be extended through renewal.
          |||,
      } },
      lease_renewable(suffix=''):: refSelf.plain('.lease_renewable%s' % suffix),
      '#namespace':: { 'function': {
        help:
          |||
            Target namespace. (requires Enterprise)
          |||,
      } },
      namespace(suffix=''):: refSelf.plain('.namespace%s' % suffix),
      '#role':: { 'function': {
        help:
          |||
            The name of the role.
          |||,
      } },
      role(suffix=''):: refSelf.plain('.role%s' % suffix),
      '#service_account_name':: { 'function': {
        help:
          |||
            The name of the service account associated with the token.
          |||,
      } },
      service_account_name(suffix=''):: refSelf.plain('.service_account_name%s' % suffix),
      '#service_account_namespace':: { 'function': {
        help:
          |||
            The Kubernetes namespace that the service account resides in.
          |||,
      } },
      service_account_namespace(suffix=''):: refSelf.plain('.service_account_namespace%s' % suffix),
      '#service_account_token':: { 'function': {
        help:
          |||
            The Kubernetes service account token.
          |||,
      } },
      service_account_token(suffix=''):: refSelf.plain('.service_account_token%s' % suffix),
      '#ttl':: { 'function': {
        help:
          |||
            The TTL of the generated Kubernetes service account token, specified in seconds or as a Go duration format string
          |||,
      } },
      ttl(suffix=''):: refSelf.plain('.ttl%s' % suffix),

    },

  },

}
