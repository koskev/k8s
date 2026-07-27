function(input=import 'defaultInput.libsonnet')
  local name = 'openbao';
  local namespace = 'openbao';


  local host = 'vault.%s' % input.globals.config.domain;


  local deployment = (import './deployments.libsonnet')(input);

  deployment.deplyoment(name, namespace, host, rollingUpdate=true)
  +
  (import './unsealer.libsonnet').resources(name, namespace)
