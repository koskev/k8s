local k8s = import 'k8s.libsonnet';
local image = (import 'images.libsonnet').container.papermc;

local name = 'papermc';
local namespace = 'default';

local mapPort = 8100;
local ports = [25565, mapPort];
local udpPorts = [24454];

[
  k8s.v1.service(
    name=name,
    namespace=namespace,
    ports=ports,
    udpPorts=udpPorts,
    annotations={
      'external-dns.alpha.kubernetes.io/hostname': 'coolmcserver.mooo.com',
    },
    type='LoadBalancer',
  ),
  k8s.networking.ingress(
    name='bluemap',
    namespace=namespace,
    host='map.coolmcserver.mooo.com',
    servicePort=mapPort,
    serviceName=name,
    issuer=null,
  ),
  k8s.apps.statefulSet(
    name=name,
    namespace=namespace,
    spec={
      securityContext: {
        runAsUser: 1000,
        runAsGroup: 1000,
      },
      nodeSelector: {
        'kubernetes.io/arch': 'amd64',
      },
      containers: [
        {
          name: 'papermc',
          image: '%s:%s' % [image.image, image.tag],
          imagePullPolicy: 'Always',
          volumeMounts: [
            {
              name: 'papermc-data',
              mountPath: '/papermc',
            },
          ],
          env: [
            {
              name: 'EULA',
              value: 'true',
            },
          ],
          resources: {
            requests: {
              memory: '2500Mi',
            },
          },
        },
      ],
      volumes: [
        {
          name: 'papermc-data',
          hostPath: {
            path: '/mnt/shared_data/k8s/papermc',
          },
        },
      ],
    },
  ),

]
