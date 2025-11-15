local k8s = import 'k8s.libsonnet';
local navidrome = (import 'images.libsonnet').container.navidrome;

local name = 'navidrome';
local namespace = 'navidrome';
local port = 4533;
local host = 'navidrome.kokev.de';

[
  k8s.v1.namespace(name),
  k8s.v1.service(name, namespace, ports=[port]),
  k8s.networking.ingress(name=name, namespace=namespace, host=host, serviceName=name, servicePort=port),
  k8s.apps.statefulSet(name, namespace, spec={
    securityContext: {
      runAsUser: 1000,
      runAsGroup: 1000,
    },
    containers: [
      {
        name: name,
        image: '%s:%s' % [navidrome.image, navidrome.tag],
        ports: [
          {
            containerPort: port,
            protocol: 'TCP',
          },
        ],
        volumeMounts: [
          {
            name: 'navidrome-data',
            mountPath: '/data',
          },
          {
            name: 'navidrome-music',
            mountPath: '/music',
          },
        ],
        livenessProbe: {
          httpGet: {
            path: '/',
            port: 4533,
          },
          initialDelaySeconds: 500,
          periodSeconds: 60,
          timeoutSeconds: 10,
          failureThreshold: 5,
        },
      },
    ],
    volumes: [
      {
        name: 'navidrome-data',
        hostPath: {
          path: '/mnt/shared_data/k8s/navidrome/data',
        },
      },
      {
        name: 'navidrome-music',
        hostPath: {
          path: '/mnt/shared_data/k8s/navidrome/music',
        },
      },
    ],
  }),
]
