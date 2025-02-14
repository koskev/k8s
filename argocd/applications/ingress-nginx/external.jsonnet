local argocd = import 'argocd.libsonnet';
local chart = (import 'images.libsonnet').helm.ingress_nginx;

argocd.applicationHelm(
  name='ingress-nginx-external',
  targetnamespace='ingress-nginx',
  chart=chart,
  values={
    controller: {
      allowSnippetAnnotations: true,
      service: {
        loadBalancerIP: '192.168.10.4',
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
