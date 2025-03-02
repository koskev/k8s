local k8s = import 'k8s.libsonnet';
local image = (import 'images.libsonnet').container.nodered;

local name = 'node-red';
local namespace = 'default';
local port = 1880;
local domain = 'node-red.kokev.de';

[
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
  k8s.apps.statefulSet(
    name=name,
    namespace=namespace,
    spec={
      containers: [
        {
          name: name,
          image: '%s:%s' % [image.image, image.tag],
          ports: [
            {
              containerPort: port,
              protocol: 'TCP',
            },
          ],
          volumeMounts: [
            {
              name: 'node-red-data',
              mountPath: '/data',
            },
          ],
          livenessProbe: {
            httpGet: {
              path: '/',
              port: port,
            },
            initialDelaySeconds: 500,
            periodSeconds: 60,
            timeoutSeconds: 10,
            failureThreshold: 5,
          },
          resources: {
            requests: {
              memory: '256Mi',
            },
          },
        },
      ],
      nodeSelector: {
        disk: 'ssd',
      },
      volumes: [
        {
          name: 'node-red-data',
          hostPath: {
            path: '/mnt/shared_data/k8s/node-red/data',
          },
        },
      ],

    },
  ),
]
