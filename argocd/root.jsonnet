local argocd = import '../lib/argocd.libsonnet';
argocd.applicationRepo(
  name='root',
  targetnamespace='argocd',
  path='argocd',
)
