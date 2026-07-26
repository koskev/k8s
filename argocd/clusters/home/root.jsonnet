local argocd = import 'argocd.libsonnet';

local input = (import 'defaultInput.libsonnet') + (import 'config_home.libsonnet');
[
  argocd.applicationRepo(
    name='root',
    targetnamespace='argocd',
    path='argocd/clusters/home',
    input=input,
  ),
]
+ (import 'argocd/argocd/app.libsonnet')(input, input.argocd.config)
