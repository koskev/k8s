local k8s = import 'k8s.libsonnet';
local image = (import 'images.libsonnet').container.influxdb;
local backup = import 'utils/backup.libsonnet';
local globals = import 'globals.libsonnet';

local name = 'influxdb';
local namespace = 'monitoring';
local port = 8086;

[

  k8s.secret.externalSecretExtract('influxdb-secret', namespace),
  k8s.v1.service(
    name=name,
    namespace=namespace,
    ports=[port],
  ),
  k8s.builder.apps.deployment.new(name, namespace)
  .asStatefulSet(name)
  .withReplicas(1)
  .withContainer(
    k8s.builder.apps.container.new(name, image.image, image.tag)
    .withPort(port)
    .withEnv('DOCKER_INFLUXDB_INIT_MODE', 'setup')
    .withEnv('DOCKER_INFLUXDB_INIT_USERNAME', 'admin')
    .withEnvValueFromSecret('DOCKER_INFLUXDB_INIT_PASSWORD', 'influxdb-secret', 'password')
    .withEnv('DOCKER_INFLUXDB_INIT_ORG', 'k8s')
    .withEnv('DOCKER_INFLUXDB_INIT_BUCKET', 'k8s')
    .withMount('influx-data', '/var/lib/influxdb2')
    .withMount('influx-config', '/etc/influxdb2')
    .withMemoryRequest('512Mi')
    .withLivenessProbe({
      exec: {
        command: [
          'cat',
          '/var/lib/influxdb2/mount',
        ],
      },
    })
  )
  .withVolume(
    {
      name: 'influx-data',
      hostPath: {
        path: '/mnt/shared_data/k8s/influx/data',
      },
    },
  )
  .withVolume(
    {
      name: 'influx-config',
      hostPath: {
        path: '/mnt/shared_data/k8s/influx/config',
      },
    },

  ),

]
+
backup.new(name, namespace)
.withInfluxDatabase('influxdb-secret')
.withRepository('ssh://borg@borg-backup.borg/./backups/influxdb/data', 'backup-%s' % name, globals.backup.kokev.knownHost)
.withSchedule('@daily')
.build()
