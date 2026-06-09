local synapse = (import 'images.libsonnet').container.synapse;
local yqgo = (import 'images.libsonnet').container.yqgo;
local k8s = import 'k8s.libsonnet';
local backup = import 'utils/backup.jsonnet';
local globals = import 'globals.libsonnet';

local name = 'synapse';
local namespace = 'default';
local configName = 'synapse-config';

local volumes = [
  {
    name: 'datadir',
    hostPath: {
      path: '/mnt/shared_data/k8s/synapse/data',
    },
  },
  {
    name: 'logdir',
    hostPath: {
      path: '/mnt/shared_data/k8s/synapse/log',
    },
  },
];

k8s.secret.secretStoreKubernetes(name, namespace) +
[
  k8s.db.database(name, namespace),
  k8s.db.user(name, namespace),
  k8s.secret.externalSecretExtract(
    'synapse-ingress',
    namespace,
    templateFrom=[
      {
        literal: std.toString({
          ingressClassName: 'traefik-external',
          rules: [
            {
              host: '{{ .host }}',
              http: {
                paths: [
                  {
                    pathType: 'Prefix',
                    path: '/',
                    backend: {
                      service: {
                        name: 'synapse-service',
                        port: {
                          number: 80,
                        },
                      },
                    },
                  },
                  {
                    pathType: 'Prefix',
                    path: '/.well-known/matrix',
                    backend: {
                      service: {
                        name: 'delegation-service',
                        port: {
                          number: 80,
                        },
                      },
                    },
                  },
                ],
              },
            },
          ],
          tls: [
            {
              hosts: [
                '{{ .host }}',
              ],
              secretName: 'synapse-tls',
            },
          ],
        }),
        target: 'spec',
      },
    ],
    manifest={
      apiVersion: 'networking.k8s.io/v1',
      kind: 'Ingress',
    },
    annotations={
      'cert-manager.io/issuer': 'private-issuer',
    },
  ),
  k8s.secret.externalSecretExtract(configName, namespace),
  k8s.secret.externalSecretExtract(
    name='%s-database-uri' % name,
    namespace=namespace,
    key='%s-%s' % [name, name],
    templateData={
      'config.yaml':
        |||
          database:
            args:
              user: {{ .ROLE }}
              password: {{ .PASSWORD }}
              database: {{ .DATABASE_NAME }}
              host: {{ .HOST }}
        |||,
    },
    secretStoreRef={
      name: name,
      kind: 'SecretStore',
    }
  ),
  k8s.builder.core.service.new('%s-service' % name, namespace, name)
  .withPort(80, 8008, 'TCP', 'panel'),
  k8s.builder.apps.deployment.new(name, namespace)
  .asStatefulSet('%s-service' % name)
  .withContainer(
    k8s.builder.apps.container.new(
      'prepare-config',
      yqgo.image,
      yqgo.tag
    )
    .withCommand(['/bin/sh'])
    .withArgs([
      '-c',
      "cp -rL /data/* /out/ && yq eval-all 'select(fileIndex == 0) * select(fileIndex == 1)' /data/homeserver.yaml /db/config.yaml > /out/homeserver.yaml",
    ])
    .withMount(name, '/out/')
    .withMount(configName, '/data')
    .withMount('%s-database-uri' % name, '/db')
    ,
    init=true
  )
  .withContainer(
    k8s.builder.apps.container.new(name, synapse.image, synapse.tag)
    .withEnv(
      'SYNAPSE_CONFIG_PATH',
      '/etc/synapse/homeserver.yaml',
    )
    .withEnv(
      'UID',
      '198',
    )
    .withEnv(
      'GID',
      '198',
    )
    .withMount(name, '/etc/synapse')
    .withMount('datadir', '/DATADIR')
    .withMount('logdir', '/var/log/synapse')
    .withPort(8008)
    .withMemoryRequest('512Mi')
  )
  .withVolumes(volumes)
  .withVolume(
    {
      name: configName,
      secret: {
        secretName: configName,
      },
    },
  )
  .withVolume(
    {
      name: name,
      emptyDir: {},
    },
  )
  .withVolume(
    {
      name: '%s-database-uri' % name,
      secret: {
        secretName: '%s-database-uri' % name,
      },
    },
  ),
]
+
backup.new(name, namespace)
.withVolumes(volumes)
.withSchedule('@daily')
.withRepository('ssh://borg@borg-backup.borg/./backups/synapse/data', 'backup-synapse', globals.backup.kokev.knownHost)
.withPostgresDatabase('whatsapp-bridge-whatsapp-bridge', 'default')
.withPostgresDatabase('signal-bridge-signal-bridge', 'default')
.withPostgresDatabase('synapse-synapse')
.withDirectory('/datadir')
.build()
