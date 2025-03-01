local image = (import 'images.libsonnet').container.mumble;
local k8s = import 'k8s.libsonnet';

local name = 'mumble';
local namespace = 'default';

[
  k8s.v1.service(
    name='%s-service' % name,
    namespace=namespace,
    app=name,
    ports=[64738],
    udpPorts=[64738],
    annotations={
      'external-dns.alpha.kubernetes.io/hostname': 'mumble.kokev.de',
    },
    type='LoadBalancer'
  ),
  k8s.apps.deployment(
    name=name,
    namespace=namespace,
    spec={
      // Only x64 image :/
      nodeSelector: {
        'kubernetes.io/arch': 'amd64',
      },
      securityContext: {
        runAsUser: 1000,
        runAsGroup: 1000,
      },
      containers: [
        {
          name: 'mumble',
          image: '%s:%s' % [image.image, image.tag],
          volumeMounts: [
            {
              name: 'mumble-config',
              mountPath: '/data',
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
          name: 'mumble-config',
          hostPath: {
            path: '/mnt/shared_data/k8s/mumble',
          },
        },
      ],
    }
  ),
]
