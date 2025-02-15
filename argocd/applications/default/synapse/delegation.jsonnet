local k8s = import 'k8s.libsonnet';
local nginx = (import 'images.libsonnet').container.nginx;

[
  {
    apiVersion: 'apps/v1',
    kind: 'Deployment',
    metadata: {
      name: 'delegation-nginx',
      namespace: 'default',
    },
    spec: {
      selector: {
        matchLabels: {
          app: 'delegation-nginx',
        },
      },
      template: {
        metadata: {
          labels: {
            app: 'delegation-nginx',
          },
        },
        spec: {
          containers: [
            {
              image: '%s:%s' % [nginx.image, nginx.tag],
              name: 'nginx',
              volumeMounts: [
                {
                  name: 'conf',
                  mountPath: '/etc/nginx/conf.d/default.conf',
                  subPath: 'default.conf',
                },
              ],
              resources: {
                requests: {
                  memory: '16Mi',
                },
              },
            },
          ],
          volumes: [
            {
              name: 'conf',
              secret: {
                secretName: 'synapse-delegation-nginx-config',
                items: [
                  {
                    key: 'default.conf',
                    path: 'default.conf',
                  },
                ],
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
      labels: {
        app: 'delegation-nginx',
      },
      namespace: 'default',
      name: 'delegation-service',
    },
    spec: {
      clusterIP: 'None',
      ports: [
        {
          name: 'http',
          port: 80,
          protocol: 'TCP',
          targetPort: 80,
        },
      ],
      selector: {
        app: 'delegation-nginx',
      },
      type: 'ClusterIP',
    },
  },
]
