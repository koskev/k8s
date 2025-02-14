local argocd = import 'argocd.libsonnet';
local chart = (import 'images.libsonnet').helm.ingress_nginx;

argocd.applicationHelm(
  name='ingress-nginx',
  targetnamespace='ingress-nginx',
  chart=chart,
  values={
    controller: {
      allowSnippetAnnotations: true,
      service: {
        loadBalancerIP: '192.168.10.30',
      },
      config: {
        'proxy-body-size': '50m',
        'compute-full-forwarded-for': 'true',
        'use-forwarded-headers': 'true',
        'strict-validate-path-type': 'false',
      },
      ingressClassResource: {
        name: 'nginx',
        controllerValue: 'k8s.io/ingress-nginx',
      },
    },
  },
)
