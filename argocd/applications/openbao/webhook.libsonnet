local k8s = import 'k8s.libsonnet';
local chart = (import 'images.libsonnet').helm.vault_webhooks;
{
  resources(name, namespace):: [
    k8s.builder.argocd.helm.new(
      name='%s-webhook' % name,
      targetnamespace=namespace,
      chart=chart,
      releaseName='%s-webhook' % name,
    )
    .withValues({
      debug: true,
    })
    .withAutoSync(),
  ],
}
