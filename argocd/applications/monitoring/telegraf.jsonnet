local k8s = import 'k8s.libsonnet';
local image = (import 'images.libsonnet').container.telegraf;

[
  k8s.apps.deployment(
    name='telegraf',
    namespace='monitoring',
    spec={
      containers: [
        {
          name: 'telegraf',
          image: '%s:%s' % [image.image, image.tag],
          volumeMounts: [
            {
              name: 'telegraf-config',
              mountPath: '/etc/telegraf',
            },
          ],
          resources: {
            requests: {
              memory: '64Mi',
            },
          },
        },
      ],
      volumes: [
        {
          name: 'telegraf-config',
          hostPath: {
            path: '/mnt/shared_data/k8s/telegraf/config',
          },
        },
      ],
    },

  ),
]
