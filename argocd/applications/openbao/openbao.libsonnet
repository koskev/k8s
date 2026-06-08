local name = 'openbao';
local namespace = 'openbao';
local globals = import 'globals.libsonnet';


local host = 'vault.%s' % globals.domain;


local deployment = import './deployments.libsonnet';

deployment.deplyoment(name, namespace, host, rollingUpdate=true)
+
(import './unsealer.libsonnet').resources(name, namespace)
