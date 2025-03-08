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
  'trivy',
];

[
  argocd.applicationRepo(
    name='%s-app' % app,
    targetnamespace='argocd',
    path='argocd/applications/%s' % app,
    recurse=true
  )
  for app in apps
]
