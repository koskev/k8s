{
  local outerSelf = self,
  '#new':: { 'function': {
    help:
      |||
        Provides an ephemeral resource to generate Kubernetes service account tokens from Vault.
      |||,
  } },
  new(terraformName, backend, kubernetes_namespace, role):: self.functions(terraformName) + {
    _type:: 'tf',
    ref():: outerSelf.ref(terraformName),
    ephemeral+: {
      vault_kubernetes_service_account_token+: { [terraformName]+: {
        backend: backend,
        kubernetes_namespace: kubernetes_namespace,
        role: role,
      } },
    },
  }
  ,
  functions(terraformName):: {
    withForEach(value):: self { ephemeral+: {
      vault_kubernetes_service_account_token+: { [terraformName]+: { for_each: value } },
    } },
    withDependsOn(value):: self { ephemeral+: {
      vault_kubernetes_service_account_token+: { [terraformName]+: { depends_on: value } },
    } },
    withCount(value):: self { ephemeral+: {
      vault_kubernetes_service_account_token+: { [terraformName]+: { count: value } },
    } },
    withLifecycle(value):: self { ephemeral+: {
      vault_kubernetes_service_account_token+: { [terraformName]+: { lifecycle: value } },
    } },
    withProvider(value):: self { ephemeral+: {
      vault_kubernetes_service_account_token+: { [terraformName]+: { provider: value } },
    } },
    withProviders(value):: self { ephemeral+: {
      vault_kubernetes_service_account_token+: { [terraformName]+: { providers: value } },
    } },
    addCustomData(name, value):: self { ephemeral+: {
      vault_kubernetes_service_account_token+: { [terraformName]+: { [name]: value } },
    } },
    '#withBackend':: { 'function': {
      help:
        |||
          The Kubernetes secret backend to generate service account tokens from.
        |||,
    } },
    withBackend(value):: self { ephemeral+: {
      vault_kubernetes_service_account_token+: { [terraformName]+: { backend: value } },
    } },
    '#withClusterRoleBinding':: { 'function': {
      help:
        |||
          If true, generate a ClusterRoleBinding to grant permissions across the whole cluster instead of within a namespace.
        |||,
    } },
    withClusterRoleBinding(value):: self { ephemeral+: {
      vault_kubernetes_service_account_token+: { [terraformName]+: { cluster_role_binding: value } },
    } },
    '#withKubernetesNamespace':: { 'function': {
      help:
        |||
          The name of the Kubernetes namespace in which to generate the credentials.
        |||,
    } },
    withKubernetesNamespace(value):: self { ephemeral+: {
      vault_kubernetes_service_account_token+: { [terraformName]+: { kubernetes_namespace: value } },
    } },
    '#withMountId':: { 'function': {
      help:
        |||
          Terraform ID of the mount resource. Used to defer the provisioning of the ephemeral resource till the apply stage.
        |||,
    } },
    withMountId(value):: self { ephemeral+: {
      vault_kubernetes_service_account_token+: { [terraformName]+: { mount_id: value } },
    } },
    '#withNamespace':: { 'function': {
      help:
        |||
          Target namespace. (requires Enterprise)
        |||,
    } },
    withNamespace(value):: self { ephemeral+: {
      vault_kubernetes_service_account_token+: { [terraformName]+: { namespace: value } },
    } },
    '#withRole':: { 'function': {
      help:
        |||
          The name of the role.
        |||,
    } },
    withRole(value):: self { ephemeral+: {
      vault_kubernetes_service_account_token+: { [terraformName]+: { role: value } },
    } },
    '#withTtl':: { 'function': {
      help:
        |||
          The TTL of the generated Kubernetes service account token, specified in seconds or as a Go duration format string.
        |||,
    } },
    withTtl(value):: self { ephemeral+: {
      vault_kubernetes_service_account_token+: { [terraformName]+: { ttl: value } },
    } },

  }
  ,
  ref(terraformName):: {
    local refSelf = self,
    plain(suffix=''):: '${ vault_kubernetes_service_account_token.%s%s }' % [terraformName, suffix],
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
      '#mount_id':: { 'function': {
        help:
          |||
            Terraform ID of the mount resource. Used to defer the provisioning of the ephemeral resource till the apply stage.
          |||,
      } },
      mount_id(suffix=''):: refSelf.plain('.mount_id%s' % suffix),
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
            The TTL of the generated Kubernetes service account token, specified in seconds or as a Go duration format string.
          |||,
      } },
      ttl(suffix=''):: refSelf.plain('.ttl%s' % suffix),

    },

  },

}
