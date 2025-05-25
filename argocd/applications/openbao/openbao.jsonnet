local name = 'openbao';
local namespace = 'openbao';

local host = 'vault.kokev.de';


local deployment = import './deployments.libsonnet';

deployment.deplyoment(name, namespace, host, rollingUpdate=true)
+
(import './unsealer.libsonnet').resources(name, namespace)

