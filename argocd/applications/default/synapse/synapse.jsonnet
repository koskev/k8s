local synapse = (import 'images.libsonnet').container.synapse;
local k8s = import 'k8s.libsonnet';

local name = 'synapse';
local namespace = 'default';
local configName = 'synapse-config';

[
  k8s.db.database(name, namespace),
  k8s.db.user(name, namespace),
  k8s.secret.externalSecretExtract(configName, namespace),
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
                  name: configName,
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
          volumes: [
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
            {
              name: configName,
              secret: {
                secretName: configName,
              },
            },
          ],
        },
      },
    },
  },
]
