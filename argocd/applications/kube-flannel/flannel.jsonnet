local k8s = import 'k8s.libsonnet';
local chart = (import 'images.libsonnet').helm.flannel;

local name = 'flannel';
local namespace = 'kube-flannel';

[
  k8s.builder.argocd.helm.new(
    name=name,
    targetnamespace=namespace,
    releaseName='flannel',
    chart=chart
  )
  .withValues({
    flannel: {
      backend: 'wireguard',
      backendPort: 51830,
      backendPortIPv6: 51831,
    },
  }),
]
