local k8s = import 'k8s.libsonnet';
local chart = (import 'images.libsonnet').helm.anubis;
local image = (import 'images.libsonnet').container.anubis;

[
  k8s.argocd.applicationHelm(
    name='ingress-anubis',
    targetnamespace='default',
    chart=chart,
    values={
      config: {
        ANUBIS_IMAGE: image.image,
        ANUBIS_VERSION: image.tag,
        WRAPPED_INGRESS_CLASS_NAME: 'nginx-external',
        INGRESS_CLASS_NAME: 'anubis',
      },
    },
  ),
]
