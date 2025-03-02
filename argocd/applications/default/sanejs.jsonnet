local k8s = import 'k8s.libsonnet';
local image = (import 'images.libsonnet').container.sanejs;

local name = 'sanejs';
local namespace = 'default';
local port = 8080;
local domain = 'scanner.lan';

[
  k8s.apps.deployment(
    name=name,
    namespace=namespace,
    spec={
      containers: [
        {
          name: 'sanejs',
          image: '%s:%s' % [image.image, image.tag],
          ports: [
            {
              containerPort: port,
              protocol: 'TCP',
            },
          ],
          volumeMounts: [
            {
              name: 'scanned-files',
              mountPath: '/app/data/output',
            },
            {
              name: 'config',
              mountPath: '/app/config',
            },
          ],
          env: [
            {
              name: 'SANED_NET_HOSTS',
              value: 'rpi-cluster-02.lan',
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
          name: 'scanned-files',
          hostPath: {
            path: '/mnt/shared_data/sanejs/images',
          },
        },
        {
          name: 'config',
          hostPath: {
            path: '/mnt/shared_data/sanejs/config',
          },
        },
      ],
    },
  ),
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
    issuer=null,
  ),
]
