local k8s = import 'k8s.libsonnet';
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
      replicas: 3,
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
  ],
}
