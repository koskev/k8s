local k8s = import 'k8s.libsonnet';
local image = (import 'images.libsonnet').container.esphome;

local name = 'esphome';
local namespace = 'default';
local port = 6052;
local domain = 'esphome.kokev.de';

[
  k8s.v1.service(
    name=name,
    namespace=namespace,
    ports=[port],
  ),
  k8s.networking.ingress(
    name=name,
    namespace=namespace,
    host=domain,
    servicePort=port,
  ),
  k8s.apps.deployment(
    name=name,
    namespace=namespace,
    spec={
      affinity: {
        nodeAffinity: {
          requiredDuringSchedulingIgnoredDuringExecution: {
            nodeSelectorTerms: [
              {
                matchExpressions: [
                  {
                    key: 'kubernetes.io/hostname',
                    operator: 'In',
                    values: [
                      'optiplex',
                    ],
                  },
                ],
              },
            ],
          },
        },
      },
      hostNetwork: true,
      containers: [
        {
          name: 'esphome',
          image: '%s:%s' % [image.image, image.tag],
          command: [
            'bash',
          ],
          args: [
            '-c',
            'esphome dashboard .',
          ],
          securityContext: {
            privileged: true,
          },
          volumeMounts: [
            {
              name: 'esphome-config',
              mountPath: '/config',
            },
            {
              name: 'esphome-cache',
              mountPath: '/cache',
            },
            {
              name: 'usb',
              mountPath: '/dev/bus/usb',
            },
          ],
        },
      ],
      volumes: [
        {
          name: 'esphome-config',
          hostPath: {
            path: '/mnt/shared_data/k8s/esphome/config',
          },
        },
        {
          name: 'esphome-cache',
          emptyDir: {
            sizeLimit: '1000Mi',
          },
        },
        {
          name: 'usb',
          hostPath: {
            path: '/dev/bus/usb',
          },
        },
      ],
    },
  ),
]
