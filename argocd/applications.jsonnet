local argocd = import 'argocd.libsonnet';
argocd.applicationRepo(
  name='applications',
  targetnamespace='argocd',
  path='argocd/applications',
)
