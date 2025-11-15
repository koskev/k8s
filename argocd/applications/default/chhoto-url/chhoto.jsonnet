local k8s = import 'k8s.libsonnet';
local image = (import 'images.libsonnet').container.chhoto;

local name = 'chhoto';
local namespace = 'default';
local port = 4567;
local domain = 's.kokev.de';

[
  k8s.secret.externalSecretExtract(
    name='chhoto-secret',
    namespace='default',
    key='chhoto'
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
  ),
  k8s.apps.deployment(
    name=name,
    namespace=namespace,
    spec={
      containers: [
        {
          name: name,
          image: '%s:%s' % [image.image, image.tag],
          env: [
            {
              name: 'db_url',
              value: '/data/urls.sqlite',
            },
            {
              name: 'site_url',
              value: 'https://s.kokev.de',
            },
            {
              name: 'password',
              valueFrom: {
                secretKeyRef: {
                  key: 'password',
                  name: 'chhoto-secret',
                },
              },
            },
          ],
          volumeMounts: [
            {
              name: 'chhoto-data',
              mountPath: '/data',
            },
          ],
        },
      ],
      volumes: [
        {
          name: 'chhoto-data',
          hostPath: {
            path: '/mnt/shared_data/k8s/chhoto/data',
          },
        },
      ],
    }
  ),
]
