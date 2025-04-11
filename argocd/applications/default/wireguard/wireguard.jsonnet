local k8s = import 'k8s.libsonnet';
local image = (import 'images.libsonnet').container.wireguard;
local globals = import 'globals.libsonnet';

local name = 'wireguard';
local namespace = 'default';
local port = 51820;

[
  k8s.secret.externalSecretExtract('wg-config', namespace),
  k8s.v1.service(
    name=name,
    namespace=namespace,
    udpPorts=[port],
    type='LoadBalancer',
    loadBalancerIP=globals.ips.wireguard,
  ),
  k8s.apps.deployment(
    name=name,
    namespace=namespace,
    spec={
      containers: [
        {
          name: 'wireguard',
          image: '%s:%s' % [image.image, image.tag],
          env: [
            {
              name: 'PUID',
              value: '1000',
            },
            {
              name: 'GUID',
              value: '1000',
            },
            {
              name: 'TZ',
              value: 'Europe/Berlin',
            },
          ],
          securityContext: {
            capabilities: {
              add: [
                'NET_ADMIN',
              ],
            },
            privileged: true,
          },
          resources: {
            requests: {
              memory: '64Mi',
              cpu: '100m',
            },
            limits: {
              memory: '256Mi',
            },
          },
          volumeMounts: [
            {
              name: 'wg-config',
              mountPath: '/config/wg_confs',
            },
          ],
        },
      ],
      volumes: [
        {
          name: 'wg-config',
          secret: {
            secretName: 'wg-config',
          },
        },
      ],
    },
  ),
]
