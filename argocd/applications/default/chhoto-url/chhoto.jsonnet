local k8s = import 'k8s.libsonnet';
local image = (import 'images.libsonnet').container.chhoto;

local name = 'chhoto';
local namespace = 'default';
local port = 4567;
local domain = 's.kokev.de';

[
  k8s.secret.externalSecretExtract(
    name='chhoto-secret',
    namespace='default',
    key='chhoto'
  ),
  k8s.v1.service(
    name=name,
    namespace=namespace,
    ports=[port],
  ),
  k8s.networking.ingress(
    name=name,
    namespace=namespace,
    host=domain,
    servicePort=port,
  ),
  k8s.builder.apps.deployment.new(name, namespace)
  .withContainer(
    k8s.builder.apps.container.new(name, image.image, image.tag)
    .withEnv('db_url', '/data/urls.sqlite')
    .withEnv('site_url', 'https://s.kokev.de')
    .withEnvValueFromSecret('password', 'chhoto-secret', 'password')
    .withMount('chhoto-data', '/data')
  )
  .withVolume({
    name: 'chhoto-data',
    hostPath: {
      path: '/mnt/shared_data/k8s/chhoto/data',
    },
  }),
]
