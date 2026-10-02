function(input=import 'defaultInput.libsonnet')
  local k8s = import 'k8s.libsonnet';
  local images = import 'images.libsonnet';

  local name = 'kyverno';
  local namespace = 'kyverno';
  [
    k8s.builder.argocd.helm.new(name, namespace, images.helm.kyverno),
  ]
