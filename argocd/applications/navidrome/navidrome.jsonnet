local k8s = import 'k8s.libsonnet';
local navidrome = (import 'images.libsonnet').container.navidrome;
local globals = import 'globals.libsonnet';


local name = 'navidrome';
local namespace = 'navidrome';
local port = 4533;
local host = 'navidrome.%s' % globals.domain;

[
  k8s.v1.namespace(name),
  k8s.v1.service(name, namespace, ports=[port]),
  k8s.networking.ingress(name=name, namespace=namespace, host=host, serviceName=name, servicePort=port),
  k8s.builder.apps.deployment.new(name, namespace)
  .asStatefulSet()
  .withTemplateSpec(
    {
      securityContext: {
        runAsUser: 1000,
        runAsGroup: 1000,
      },
    }
  )
  .withContainer(
    k8s.builder.apps.container.new(name, navidrome.image, navidrome.tag)
    .withPort(port)
    .withMount('navidrome-data', '/data')
    .withMount('navidrome-music', '/music')
    .withMount('navidrome-backup', '/backup')
    .withLivenessProbe(
      {
        httpGet: {
          path: '/',
          port: 4533,
        },
        initialDelaySeconds: 500,
        periodSeconds: 60,
        timeoutSeconds: 10,
        failureThreshold: 5,
      },
    )
    .withEnv('ND_BACKUP_PATH', '/backup')
    .withEnv('ND_BACKUP_SCHEDULE', '0 0 * * *')
    .withEnv('ND_BACKUP_COUNT', '30')
  )
  .withVolume(
    {
      name: 'navidrome-data',
      hostPath: {
        path: '/mnt/shared_data/k8s/navidrome/data',
      },
    },
  )
  .withVolume(
    {
      name: 'navidrome-music',
      hostPath: {
        path: '/mnt/shared_data/k8s/navidrome/music',
      },
    },
  )
  .withVolume(
    {
      name: 'navidrome-backup',
      hostPath: {
        path: '/mnt/shared_data/k8s/navidrome/backup',
      },
    },
  ),
]
