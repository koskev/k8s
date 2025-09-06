local argocd = import 'argocd.libsonnet';
local chart = (import 'images.libsonnet').helm.brouter;
local image = (import 'images.libsonnet').container.brouter_react;


argocd.applicationHelm(
  name='brouter',
  targetnamespace='default',
  chart=chart,
  values={
    ingress: {
      enabled: true,
      ingress_class: 'traefik-external',
      host: 'brouter.kokev.de',
      tls: {
        enabled: true,
        issuer: 'kokev-issuer',
        secret: 'brouter-tls',
      },
    },
    brouter: {
      enabled: true,
      volumes: [
        {
          name: 'segments',
          hostPath: {
            path: '/mnt/shared_data/k8s/brouter/segments4',
          },
        },
      ],
    },
    brouter_react: {
      enabled: true,
      image: {
        repository: image.image,
        tag: image.tag,
        pullPolicy: 'Always',
      },
    },
  },
)
