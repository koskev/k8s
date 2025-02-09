local argocd = import 'argocd.libsonnet';
argocd.applicationRepo(
  name='applications',
  targetnamespace='argocd',
  path='argocd/applications',
  url='https://github.com/koskev/k8s',
  recurse=true
)
