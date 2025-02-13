local image = (import 'images.libsonnet').container.renovate;
local secret = import 'secret.libsonnet';

[
  secret.externalSecretExtract(name='renovate-env', namespace='default'),
  {
    apiVersion: 'batch/v1',
    kind: 'CronJob',
    metadata: {
      name: 'renovate',
      namespace: 'default',
    },
    spec: {
      schedule: '@hourly',
      concurrencyPolicy: 'Forbid',
      jobTemplate: {
        spec: {
          template: {
            spec: {
              nodeSelector: {
                disk: 'ssd',
              },
              containers: [
                {
                  name: 'renovate',
                  image: '%s:%s' % [image.image, image.tag],
                  args: [
                    'koskev/k8s',
                    'koskev/brouter-react',
                    'koskev/brouter-chart',
                    'koskev/swayautonames',
                    'koskev/rufaco',
                    'koskev/borg-helper',
                    'koskev/PushToTalk',
                    'koskev/hms-mqtt-publisher',
                  ],
                  env: [
                    {
                      name: 'LOG_LEVEL',
                      value: 'debug',
                    },
                  ],
                  envFrom: [
                    {
                      secretRef: {
                        name: 'renovate-env',
                      },
                    },
                  ],
                },
              ],
              restartPolicy: 'Never',
            },
          },
        },
      },
    },
  },
]
