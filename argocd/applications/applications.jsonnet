local argocd = import 'argocd.libsonnet';

function(input=import 'defaultInput.libsonnet')
  argocd.addApps(input.applications.config.apps)
