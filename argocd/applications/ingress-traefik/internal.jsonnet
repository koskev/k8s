local k8s = import 'k8s.libsonnet';
local chart = (import 'images.libsonnet').helm.ingress_traefik;
local globals = import 'globals.libsonnet';


local name = 'ingress-traefik-internal';
local namespace = 'ingress-traefik-internal';
[
  k8s.argocd.applicationHelm(
    name=name,
    targetnamespace=namespace,
    chart=chart,
    values={
      deployment: {
        replicas: 3,
      },
      service: {
        spec: {
          loadBalancerIP: globals.ips.ingress_traefik_internal,
        },
        annotations: {
          'metallb.io/allow-shared-ip': globals.ingress.internal.name,
        },
      },
      ingressClass: {
        name: globals.ingress.internal.name,
      },
      providers: {
        kubernetesGateway: {
          enabled: true,
        },
        kubernetesIngress: {
          ingressClass: globals.ingress.internal.name,
        },
      },
      gatewayClass: {
        name: globals.ingress.internal.name,
      },
      gateway: {
        name: globals.ingress.internal.name,
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
