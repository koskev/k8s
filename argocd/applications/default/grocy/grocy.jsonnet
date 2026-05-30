local k8s = import 'k8s.libsonnet';
local image = (import 'images.libsonnet').container.grocy;

local name = 'grocy';
local namespace = 'default';
local domain = 'grocy.%s' % (import 'globals.libsonnet').domain;

[
  k8s.v1.service(
    name=name,
    namespace=namespace,
    ports=[80],
  ),
  k8s.networking.ingress(
    name=name,
    namespace=namespace,
    host=domain,
    serviceName=name,
    servicePort=80,
    issuer='kokev-issuer',
  ),
  k8s.builder.apps.deployment.new(name, namespace)
  .asStatefulSet(name)
  .withContainer(
    k8s.builder.apps.container.new('grocy', image.image, image.tag)
    .withPort(80)
    .withLivenessProbe({
      httpGet: {
        path: '/',
        port: 80,
      },
      initialDelaySeconds: 500,
      periodSeconds: 60,
      timeoutSeconds: 10,
      failureThreshold: 5,
    })
    .withMount('db', '/config/data/grocy.db')
    .withMount('config', '/config/data/config.php')
    .withEnv('PUID', '1000')
    .withEnv('PGID', '1000')
    .withEnv('TZ', 'Europe/Berlin')
    .withMemoryRequest('64Mi')
  )
  .withVolume({
    name: 'db',
    hostPath: {
      path: '/mnt/shared_data/k8s/grocy/grocy.db',
    },
  })
  .withVolume({
    name: 'config',
    hostPath: {
      path: '/mnt/shared_data/k8s/grocy/config.php',
    },
  }),
]
