local k8s = import 'k8s.libsonnet';
local chart = (import 'images.libsonnet').helm.ingress_traefik;
local globals = import 'globals.libsonnet';


local name = 'ingress-traefik-external';
local namespace = 'ingress-traefik-external';
[
  k8s.argocd.applicationHelm(
    name=name,
    targetnamespace=namespace,
    chart=chart,
    values={
      service: {
        spec: {
          loadBalancerIP: globals.ips.ingress_traefik_external,
        },
      },
      ingressClass: {
        name: 'traefik-external',
      },
      providers: {
        kubernetesGateway: {
          enabled: true,
        },
      },
      gateway: {
        listeners: {
          web: {
            namespacePolicy: {
              from: 'All',
            },
          },
        },
      },
    }
  ),
  {
    kind: 'Namespace',
    apiVersion: 'v1',
    metadata: {
      name: namespace,
    },
  },
]
