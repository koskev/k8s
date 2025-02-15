local secret = import 'secret.libsonnet';
local image = (import 'images.libsonnet').container.signal_bridge;

local name = 'signal-bridge';
[
  {
    apiVersion: 'apps/v1',
    kind: 'StatefulSet',
    metadata: {
      name: name,
      namespace: 'default',
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
              secret: {
                secretName: 'signal-bridge-config',
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
      namespace: 'default',
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
  secret.externalSecretExtract('signal-bridge-config', 'default'),
]
