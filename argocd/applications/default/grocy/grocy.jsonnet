local k8s = import 'k8s.libsonnet';
local image = (import 'images.libsonnet').container.grocy;

local name = 'grocy';
local namespace = 'default';
local domain = 'grocy.kokev.de';

[
  k8s.v1.service(
    name=name,
    namespace=namespace,
    ports=[80],
  ),
  k8s.networking.ingress(
    name=name,
    namespace=namespace,
    host=domain,
    serviceName=name,
    servicePort=80,
    issuer='kokev-issuer',
    ingressClass='nginx',
  ),
  k8s.apps.statefulSet(
    name=name,
    namespace=namespace,
    spec={
      containers: [
        {
          name: 'grocy',
          image: '%s:%s' % [image.image, image.tag],
          ports: [
            {
              containerPort: 80,
            },
          ],
          livenessProbe: {
            httpGet: {
              path: '/',
              port: 80,
            },
            initialDelaySeconds: 500,
            periodSeconds: 60,
            timeoutSeconds: 10,
            failureThreshold: 5,
          },
          volumeMounts: [
            {
              name: 'db',
              mountPath: '/config/data/grocy.db',
            },
            {
              name: 'config',
              mountPath: '/config/data/config.php',
            },
          ],
          env: [
            {
              name: 'PUID',
              value: '1000',
            },
            {
              name: 'PGID',
              value: '1000',
            },
            {
              name: 'TZ',
              value: 'Europe/Berlin',
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
          name: 'db',
          hostPath: {
            path: '/mnt/shared_data/k8s/grocy/grocy.db',
          },
        },
        {
          name: 'config',
          hostPath: {
            path: '/mnt/shared_data/k8s/grocy/config.php',
          },
        },
      ],
    },
  ),
]
