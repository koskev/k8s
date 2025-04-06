local k8s = import 'k8s.libsonnet';
local image = (import 'images.libsonnet').container.octoprint;

local name = 'octoprint';
local namespace = 'default';
local port = 80;
[
  k8s.v1.service(
    name=name,
    namespace=namespace,
    ports=[port],
  ),
  k8s.networking.ingress(
    name=name,
    namespace=namespace,
    host='octoprint.kokev.de',
    servicePort=port,
  ),
  k8s.apps.statefulSet(
    name=name,
    namespace=namespace,
    serviceName=name,
    spec={
      priorityClassName: 'system-node-critical',
      containers: [
        {
          name: 'octoprint',
          image: '%s:%s' % [image.image, image.tag],
          securityContext: {
            privileged: true,
          },
          ports: [
            {
              containerPort: 80,
              protocol: 'TCP',
            },
          ],
          volumeMounts: [
            {
              name: 'octoprint-etc',
              mountPath: '/octoprint',
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
          name: 'octoprint-etc',
          hostPath: {
            path: '/etc/octoprint',
          },
        },
        {
          name: 'usb',
          hostPath: {
            path: '/dev/bus/usb',
          },
        },
      ],
      nodeSelector: {
        'kubernetes.io/hostname': 'rpi-drucker',
      },
      tolerations: [
        {
          operator: 'Exists',
          effect: 'NoSchedule',
        },
        {
          operator: 'Exists',
          effect: 'PreferNoSchedule',
        },
      ],
    },
  ),
]
