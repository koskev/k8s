local argocd = import 'argocd.libsonnet';
local chart = (import 'images.libsonnet').helm.ping_exporter;

argocd.applicationHelm(
  name='ping-exporter',
  targetnamespace='monitoring',
  chart=chart,
  values={
    config: {
      targets: [
        '202.61.194.167',
        '192.168.1.1',
      ],
      dns: {
        nameserver: '192.168.10.2',
      },
    },
    serviceMonitor: {
      enabled: true,
    },
  },
)
