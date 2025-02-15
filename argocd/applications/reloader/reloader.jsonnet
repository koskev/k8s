local k8s = import 'k8s.libsonnet';
local chart = (import 'images.libsonnet').helm.reloader;

k8s.argocd.applicationHelm(
  name='reloader',
  targetnamespace='reloader',
  chart=chart,
)
