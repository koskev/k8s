local k8s = import 'k8s.libsonnet';
local chart = (import 'images.libsonnet').helm.ingress_traefik;

{
  traefik(
    name,
    namespace,
    ip,
    ingress_name,
  ):: [
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
            loadBalancerIP: ip,
          },
          annotations: {
            'metallb.io/allow-shared-ip': ingress_name,
          },
        },
        ingressClass: {
          name: ingress_name,
        },
        providers: {
          kubernetesGateway: {
            enabled: true,
            labelSelector: 'gateway-type=%s' % ingress_name,
          },
          kubernetesIngress: {
            ingressClass: ingress_name,
          },
        },
        gatewayClass: {
          name: ingress_name,
          labels: {
            'gateway-type': ingress_name,
          },
        },
        gateway: {
          name: ingress_name,
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
  ],
}
