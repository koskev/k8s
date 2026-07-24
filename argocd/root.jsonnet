local argocd = import '../lib/argocd.libsonnet';
local k8s = import 'k8s.libsonnet';
[
  argocd.applicationRepo(
    name='root',
    targetnamespace='argocd',
    path='argocd',
  ),
  k8s.v1.configmap('test', 'default', {
    envvar: std.extVar('TESTVAR'),
  }),
]
+ (import 'argocd/argocd/app.libsonnet')
