function(input=import 'defaultInput.libsonnet')
  local k8s = import 'k8s.libsonnet';
  local config = input.applications.monitoring.config;

  k8s.v1.namespace(config.namespace)
