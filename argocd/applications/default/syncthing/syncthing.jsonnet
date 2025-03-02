local k8s = import 'k8s.libsonnet';
local image = (import 'images.libsonnet').container.syncthing;

local name = 'syncthing';
local namespace = 'default';
local domain = 'syncthing.kokev.de';

local uiport = 8384;

[
  k8s.v1.service(
    name='%s-webui' % name,
    namespace=namespace,
    ports=[uiport],
    app=name,
  ),
  k8s.v1.service(
    name=name,
    namespace=namespace,
    ports=[22000],
    udpPorts=[22000, 21027],
    type='LoadBalancer',
  ),
  k8s.networking.ingress(
    name=name,
    namespace=namespace,
    host=domain,
    servicePort=uiport,
    serviceName='%s-webui' % name,
  ),
  k8s.apps.statefulSet(
    name=name,
    namespace=namespace,
    spec={
      // TODO: currently I need host networking
      // Without this somehow my WiFi devices are not picked up. Lan devices work flawlessly. Just a default openwrt config
      // maybe something with bridges?
      hostNetwork: true,
      containers: [
        {
          name: name,
          image: '%s:%s' % [image.image, image.tag],
          ports: [
            {
              name: 'discovery',
              containerPort: 21027,
            },
            {
              name: 'data',
              containerPort: 22000,
            },
          ],
          resources: {
            requests: {
              memory: '256Mi',
            },
          },
          volumeMounts: [
            {
              name: 'syncthing-config',
              mountPath: '/var/syncthing',
            },
            {
              name: 'syncthing-data',
              mountPath: '/data',
            },
          ],
        },
      ],
      volumes: [
        {
          name: 'syncthing-config',
          hostPath: {
            path: '/mnt/shared_data/k8s/syncthing/config',
          },
        },
        {
          name: 'syncthing-data',
          hostPath: {
            path: '/mnt/shared_data/k8s/syncthing/data',
          },
        },
      ],
    },
  ),
]
