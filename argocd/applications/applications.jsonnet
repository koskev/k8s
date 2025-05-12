local argocd = import 'argocd.libsonnet';

local apps = [
  argocd.appSettings(name='default', recursive=false),
  argocd.appSettings(name='cert-manager'),
  argocd.appSettings(name='external-secrets'),
  argocd.appSettings(name='ingress-nginx'),
  argocd.appSettings(name='kube-flannel'),
  argocd.appSettings(name='matrix'),
  argocd.appSettings(name='metallb-system'),
  argocd.appSettings(name='monitoring'),
  argocd.appSettings(name='openbao'),
  argocd.appSettings(name='postgres'),
  argocd.appSettings(name='emqx'),
  argocd.appSettings(name='reloader'),
  argocd.appSettings(name='navidrome'),
  argocd.appSettings(name='trivy'),
  argocd.appSettings(name='paperless'),
  argocd.appSettings(name='forgejo'),
  argocd.appSettings(name='automation'),
  argocd.appSettings(name='grafana', exclude='dashboards/*'),
];

argocd.addApps(apps)
