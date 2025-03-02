local k8s = import 'k8s.libsonnet';
local image = (import 'images.libsonnet').container.cups;

local name = 'cups';
local namespace = 'default';
local domain = 'drucker.lan';
local port = 631;
[
  {
    apiVersion: 'scheduling.k8s.io/v1',
    kind: 'PriorityClass',
    metadata: {
      name: name,
    },
    value: 1000000,
    preemptionPolicy: 'Never',
    globalDefault: false,
    description: 'Prevent eviction',
  },
  k8s.networking.ingress(
    name=name,
    namespace=namespace,
    host=domain,
    servicePort=port,
    issuer=null,
  ),
  k8s.v1.service(
    name=name,
    namespace=namespace,
    ports=[port],
  ),
  k8s.apps.deployment(
    name=name,
    namespace=namespace,
    spec={
      priorityClassName: 'cups-priority',
      containers: [
        {
          name: 'cups',
          image: '%s:%s' % [image.image, image.tag],
          securityContext: {
            privileged: true,
          },
          ports: [
            {
              containerPort: port,
              protocol: 'TCP',
            },
          ],
          volumeMounts: [
            {
              name: 'cups-etc',
              mountPath: '/etc/cups',
            },
            {
              name: 'usb',
              mountPath: '/dev/bus/usb',
            },
          ],
          resources: {
            requests: {
              memory: '32Mi',
            },
          },
        },
      ],
      volumes: [
        {
          name: 'cups-etc',
          hostPath: {
            path: '/etc/cups',
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
        cups: 'true',
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
    replicas=0,
  ),
]
