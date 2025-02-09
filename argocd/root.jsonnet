local argocd = import '../lib/argocd.libsonnet';
argocd.applicationRepo('root', 'argocd', 'argocd', 'https://github.com/koskev/k8s')
