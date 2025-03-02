local image = (import 'images.libsonnet').container.unbound;
local k8s = import 'k8s.libsonnet';

local name = 'unbound';
local namespace = 'default';

[
  {
    apiVersion: 'v1',
    kind: 'ConfigMap',
    metadata: {
      name: 'unbound-config',
      namespace: 'default',
    },
    data: {
      'unbound.conf': |||
        server:
          directory: "/etc/unbound"
          username: unbound
          chroot: "/etc/unbound"

          access-control: 10.0.0.0/8 allow
          interface: 0.0.0.0
          do-ip4: yes
          do-udp: yes
          do-tcp: yes
      |||,
    },
  },
  k8s.v1.service(
    name='%s-service' % name,
    namespace=namespace,
    app=name,
    udpPorts=[53],
    type='LoadBalancer',
    loadBalancerIP='192.168.10.6',
  ),
  k8s.apps.deployment(
    name=name,
    namespace=namespace,
    spec={
      containers: [
        {
          name: 'unbound',
          image: '%s:%s' % [image.image, image.tag],
          resources: {
            requests: {
              memory: '32Mi',
            },
          },
          volumeMounts: [
            {
              mountPath: '/etc/unbound/unbound.conf',
              name: 'unbound-config',
              subPath: 'unbound.conf',
            },
          ],
        },
      ],
      volumes: [
        {
          name: 'unbound-config',
          configMap: {
            name: 'unbound-config',
          },
        },
      ],
    },
    replicas=3
  ),


]
