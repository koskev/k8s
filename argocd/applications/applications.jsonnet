local argocd = import 'argocd.libsonnet';

local apps = {
  default: true,
  'cert-manager': false,
  'external-secrets': false,
  'ingress-nginx': false,
  'kube-flannel': false,
  matrix: false,
  'metallb-system': false,
  monitoring: false,
  openbao: false,
  postgres: false,
  registry: false,
  //  'storage': false,
  emqx: false,
  reloader: false,
  navidrome: false,

};

[
  argocd.applicationRepo(
    name='%s-app' % app.key,
    targetnamespace='argocd',
    path='argocd/applications/%s' % app.key,
    recurse=true,
    autosync=app.value,
  )
  for app in std.objectKeysValues(apps)
]
