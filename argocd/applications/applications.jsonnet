local argocd = import 'argocd.libsonnet';

local apps = [
  'default',
  'cert-manager',
  'external-secrets',
  'ingress-nginx',
  'kube-flannel',
  'matrix',
  'metallb-system',
  'monitoring',
  'openbao',
  'postgres',
  'registry',
  //  'storage',
  'emqx',
  'reloader',
  'navidrome',
  'teleport',
];

[
  argocd.applicationRepo(
    name='%s-app' % app,
    targetnamespace='argocd',
    path='argocd/applications/%s' % app,
    url='https://github.com/koskev/k8s',
    recurse=true
  )
  for app in apps
]
