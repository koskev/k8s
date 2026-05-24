local k8s = import 'k8s.libsonnet';
local tf = import 'tf/tf.libsonnet';
local chart = (import 'images.libsonnet').helm.vault_unsealer;

// XXX: Yes security and stuff, but this should be a fine in this case
{
  resources(name, namespace):: [
    k8s.builder.argocd.helm.new(
      name='%s-unsealer' % name,
      targetnamespace=namespace,
      chart=chart,
      releaseName='%s-unsealer' % name,
    )
    .withValues({
      image: {
        repository: 'ghcr.io/koskev/vault-unsealer',
        tag: '0.3.4',
      },
    })
    .withAutoSync()
    ,
    k8s.v1.secret('%s-unsealer-config' % name, namespace, data={
      role: 'vault-unsealer',
      mountPath: 'kubernetes',
      secretPath: 'system/unseal-keys',
    }, labels={
      'vault-unsealer.bakito.net/stateful-set': name,
    }),
    tf.resource('vault_policy', 'unsealer', {
      name: 'vault-unsealer',
      policy: |||
        path "system/+/unseal-keys" {
          capabilities = ["read"]
        }
        # allow access to read the mounts (used to check the kv version of the secret engine)
        path "sys/mounts" {
          capabilities = ["read"]
        }
      |||,
    }),
    tf.resource('vault_kubernetes_auth_backend_role', 'unsealer', {
      backend: '${vault_auth_backend.kubernetes.path}',
      role_name: 'vault-unsealer',
      bound_service_account_names: ['openbao-unsealer-vault-unsealer'],
      bound_service_account_namespaces: ['openbao'],
      token_ttl: 3600,
      token_policies: ['vault-unsealer'],
    }),
  ],
}
