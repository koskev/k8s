local argocd = import 'argocd.libsonnet';
local chart = (import 'images.libsonnet').helm.ingress_nginx;
local globals = import 'globals.libsonnet';

argocd.applicationHelm(
  name='ingress-nginx-external',
  targetnamespace='ingress-nginx',
  chart=chart,
  values={
    controller: {
      allowSnippetAnnotations: true,
      service: {
        loadBalancerIP: globals.ips.ingress_nginx_external,
      },
      config: {
        'proxy-body-size': '50m',
        'strict-validate-path-type': 'false',
      },
      ingressClassResource: {
        name: 'nginx-external',
        controllerValue: 'k8s.io/ingress-nginx-external',
      },
    },
  },
)
