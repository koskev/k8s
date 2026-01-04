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
  {
    apiVersion: 'v1',
    kind: 'Service',
    metadata: {
      name: 'synapse-service',
      namespace: namespace,
      labels: {
        app: name,
      },
    },
    spec: {
      selector: {
        app: name,
      },
      ports: [
        {
          name: 'panel',
          protocol: 'TCP',
          port: 80,
          targetPort: 8008,
        },
      ],
      type: 'ClusterIP',
    },
  },
  {
    apiVersion: 'apps/v1',
    kind: 'StatefulSet',
    metadata: {
      name: 'synapse-deployment',
      namespace: namespace,
      labels: {
        app: name,
      },
    },
    spec: {
      serviceName: 'synapse-service',
      selector: {
        matchLabels: {
          app: name,
        },
      },
      template: {
        metadata: {
          labels: {
            app: name,
          },
        },
        spec: {
          initContainers: [{
            name: 'prepare-config',
            image: '%s:%s' % [yqgo.image, yqgo.tag],
            command: ['/bin/sh'],
            args: [
              '-c',
              "cp -rL /data/* /out/ && yq eval-all 'select(fileIndex == 0) * select(fileIndex == 1)' /data/homeserver.yaml /db/config.yaml > /out/homeserver.yaml",
            ],
            volumeMounts: [
              {
                name: name,
                mountPath: '/out/',
              },
              {
                name: configName,
                mountPath: '/data',
              },
              {
                name: '%s-database-uri' % name,
                mountPath: '/db',
              },
            ],
          }],
          containers: [
            {
              image: '%s:%s' % [synapse.image, synapse.tag],
              name: name,
              env: [
                {
                  name: 'SYNAPSE_CONFIG_PATH',
                  value: '/etc/synapse/homeserver.yaml',
                },
                {
                  name: 'UID',
                  value: '198',
                },
                {
                  name: 'GID',
                  value: '198',
                },
              ],
              volumeMounts: [
                {
                  name: name,
                  mountPath: '/etc/synapse',
                },
                {
                  name: 'datadir',
                  mountPath: '/DATADIR',
                },
                {
                  name: 'logdir',
                  mountPath: '/var/log/synapse',
                },
              ],
              ports: [
                {
                  containerPort: 8008,
                },
              ],
              resources: {
                requests: {
                  memory: '512Mi',
                },
              },
            },
          ],
          volumes: volumes + [
            {
              name: configName,
              secret: {
                secretName: configName,
              },
            },
            {
              name: name,
              emptyDir: {},
            },
            {
              name: '%s-database-uri' % name,
              secret: {
                secretName: '%s-database-uri' % name,
              },
            },
          ],
        },
      },
    },
  },
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
