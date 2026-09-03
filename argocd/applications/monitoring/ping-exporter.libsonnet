function(input=import 'defaultInput.libsonnet')
  local argocd = import 'argocd.libsonnet';
  local chart = (import 'images.libsonnet').helm.ping_exporter;

  argocd.applicationHelm(
    name='ping-exporter',
    targetnamespace=input.applications.monitoring.config.namespace,
    chart=chart,
    values={
      config: {
        targets: [
          '202.61.194.167',
          '192.168.1.1',
        ],
        dns: {
          nameserver: input.globals.config.ips.pihole,
        },
      },
      serviceMonitor: {
        enabled: true,
      },
    },
  )
