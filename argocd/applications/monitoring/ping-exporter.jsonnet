local argocd = import 'argocd.libsonnet';
local chart = (import 'images.libsonnet').helm.ping_exporter;
local globals = import 'globals.libsonnet';

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
        nameserver: globals.ips.pihole,
      },
    },
    serviceMonitor: {
      enabled: true,
    },
  },
)
