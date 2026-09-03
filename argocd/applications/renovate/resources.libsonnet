function(input=import 'defaultInput.libsonnet')
  local image = (import 'images.libsonnet').container.renovate;
  local k8s = import 'k8s.libsonnet';

  local namespace = input.applications.renovate.config.namespace;
  [
    k8s.secret.externalSecretExtract(name='renovate-env', namespace=namespace),
    k8s.builder.core.namespace.new(namespace),
    {
      apiVersion: 'batch/v1',
      kind: 'CronJob',
      metadata: {
        name: 'renovate',
        namespace: namespace,
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
                    args: input.applications.renovate.config.repositories,
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
