{
  core:: import 'core.libsonnet',
  apps:: import 'apps.libsonnet',
  definition:: import 'definition.libsonnet',
  argocd:: (import 'argocd/app.libsonnet') + (import 'argocd/helm.libsonnet') + (import 'argocd/repo.libsonnet'),
}
