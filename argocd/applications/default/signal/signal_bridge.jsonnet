local secret = import 'secret.libsonnet';
local image = (import 'images.libsonnet').container.signal_bridge;
local yqgo = (import 'images.libsonnet').container.yqgo;
local k8s = import 'k8s.libsonnet';

local name = 'signal-bridge';
local namespace = 'default';
k8s.secret.secretStoreKubernetes(name, namespace) +
[
  k8s.db.database(name, namespace),
  k8s.db.user(name, namespace),
  k8s.secret.externalSecretExtract(
    name='%s-database-uri' % name,
    namespace=namespace,
    key='%s-%s' % [name, name],
    templateData={
      'config.yaml':
        |||
          database:
            uri: '{{ .POSTGRES_URL }}?sslmode=disable'
        |||,
    },
    secretStoreRef={
      name: name,
      kind: 'SecretStore',
    }
  ),
  {
    apiVersion: 'apps/v1',
    kind: 'StatefulSet',
    metadata: {
      name: name,
      namespace: namespace,
      labels: {
        app: name,
      },
    },
    spec: {
      replicas: 1,
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
              "yq eval-all 'select(fileIndex == 0) * select(fileIndex == 1)' /data/config.yaml /db/config.yaml > /out/config.yaml",
            ],
            volumeMounts: [
              {
                name: 'signal-bridge-config',
                mountPath: '/out/',
              },
              {
                name: 'signal-bridge-config-secret',
                mountPath: '/data',
              },
              {
                name: 'signal-bridge-database-uri',
                mountPath: '/db',
              },
            ],
          }],
          containers: [
            {
              name: name,
              image: '%s:%s' % [image.image, image.tag],
              command: [
                'su-exec',
              ],
              args: [
                '$UID:$GID',
                '/usr/bin/mautrix-signal',
                '--no-update',
                '-c',
                '/data/config.yaml',
              ],
              ports: [
                {
                  containerPort: 29328,
                  protocol: 'TCP',
                },
              ],
              volumeMounts: [
                {
                  name: 'signal-bridge-config',
                  mountPath: '/new_data',
                },
                {
                  name: 'signal-bridge-config-secret',
                  mountPath: '/data',
                },
              ],
              resources: {
                requests: {
                  memory: '128Mi',
                },
              },
            },
          ],
          volumes: [
            {
              name: 'signal-bridge-config',
              emptyDir: {},
            },
            {
              name: 'signal-bridge-config-secret',
              secret: {
                secretName: 'signal-bridge-config',
              },
            },
            {
              name: 'signal-bridge-database-uri',
              secret: {
                secretName: 'signal-bridge-database-uri',
              },
            },
          ],
        },
      },
    },
  },
  {
    apiVersion: 'v1',
    kind: 'Service',
    metadata: {
      name: 'signal-bridge-service',
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
          name: 'bridge',
          protocol: 'TCP',
          port: 29328,
          targetPort: 29328,
        },
        {
          name: 'metrics',
          protocol: 'TCP',
          port: 9090,
          targetPort: 9090,
        },
      ],
      type: 'ClusterIP',
    },
  },
  secret.externalSecretExtract('signal-bridge-config', namespace),
]
