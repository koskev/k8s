local k8s = import 'k8s.libsonnet';
local chart = (import 'images.libsonnet').helm.metrics_server;

local name = 'metrics-server';
local namespace = 'kube-system';
[
  k8s.builder.argocd.helm.new(name=name, targetnamespace=namespace, releaseName='metrics-server', chart=chart)
  .withValues({
    // FIXME: Yes insecure it not nice, but works for now :)
    args: ['--kubelet-insecure-tls'],
  })
  .withAutoSync(),
]
