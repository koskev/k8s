function(input=import 'defaultInput.libsonnet')
  local k8s = import 'k8s.libsonnet';
  [
    k8s.argocd.applicationRepo(
      'gateway-crds',
      'argocd',
      'config/crd/standard',
      'https://github.com/kubernetes-sigs/gateway-api',
      revision='ca6c2a65454737236fb7a937bd9b17e42b07e9de',
      project='default'
    ),
  ]
