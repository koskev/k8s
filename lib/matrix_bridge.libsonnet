local secret = import 'secret.libsonnet';
local yqgo = (import 'images.libsonnet').container.yqgo;
local k8s = import 'k8s.libsonnet';


{
  createMatrixBridge(name, namespace, image, binaryName, port)::
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
                    name: '%s-config' % name,
                    mountPath: '/out/',
                  },
                  {
                    name: '%s-config-secret' % name,
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
                  name: name,
                  image: '%s:%s' % [image.image, image.tag],
                  command: [
                    'bash',
                    '-c',
                  ],
                  args: [
                    'su-exec $UID:$GID /usr/bin/%s --no-update -c /data/config.yaml' % binaryName,
                  ],
                  ports: [
                    {
                      containerPort: port,
                      protocol: 'TCP',
                    },
                  ],
                  volumeMounts: [
                    {
                      name: '%s-config' % name,
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
                  name: '%s-config' % name,
                  emptyDir: {},
                },
                {
                  name: '%s-config-secret' % name,
                  secret: {
                    secretName: '%s-config' % name,
                  },
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
      {
        apiVersion: 'v1',
        kind: 'Service',
        metadata: {
          name: '%s-service' % name,
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
              port: port,
              targetPort: port,
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
      secret.externalSecretExtract('%s-config' % name, namespace),
    ],
}
