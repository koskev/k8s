local argocd = import 'argocd.libsonnet';
local chart = (import 'images.libsonnet').helm.ingress_nginx;
local globals = import 'globals.libsonnet';

argocd.applicationHelm(
  name='ingress-nginx',
  targetnamespace='ingress-nginx',
  chart=chart,
  values={
    controller: {
      allowSnippetAnnotations: true,
      service: {
        loadBalancerIP: globals.ips.ingress_nginx,
        annotations: {
          'metallb.io/allow-shared-ip': 'nginx',
        },
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
