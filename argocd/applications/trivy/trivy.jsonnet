local chart = (import 'images.libsonnet').helm.trivy;
local k8s = import 'k8s.libsonnet';

local name = 'trivy';
local namespace = 'trivy';
[
  k8s.argocd.applicationHelm(
    name=name,
    targetnamespace=namespace,
    chart=chart,
    values={
      operator: {
        metricsVulnIdEnabled: true,
      },
      serviceMonitor: {
        enabled: true,
      },
    }
  ),
]
