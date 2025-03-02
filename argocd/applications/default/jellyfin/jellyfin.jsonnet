local k8s = import 'k8s.libsonnet';
local image = (import 'images.libsonnet').container.jellyfin;

local name = 'jellyfin';
local namespace = 'default';

local domain = 'jellyfin.kokev.de';
local port = 8096;

[
  k8s.v1.service(
    name=name,
    namespace=namespace,
    ports=[port]
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
    serviceName=name,
    spec={
      securityContext: {
        runAsUser: 1000,
        runAsGroup: 1000,
        supplementalGroups: [
          105,
        ],
      },
      affinity: {
        nodeAffinity: {
          requiredDuringSchedulingIgnoredDuringExecution: {
            nodeSelectorTerms: [
              {
                matchExpressions: [
                  {
                    key: 'kubernetes.io/hostname',
                    operator: 'In',
                    values: [
                      'optiplex',
                    ],
                  },
                ],
              },
            ],
          },
        },
      },
      containers: [
        {
          name: 'jellyfin',
          image: '%s:%s' % [image.image, image.tag],
          securityContext: {
            privileged: true,
          },
          ports: [
            {
              containerPort: port,
              protocol: 'TCP',
            },
          ],
          volumeMounts: [
            {
              name: 'jellyfin-config',
              mountPath: '/config',
            },
            {
              name: 'jellyfin-media',
              mountPath: '/media',
            },
            {
              name: 'render-device',
              mountPath: '/dev/dri/renderD128',
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
              cpu: '1000m',
              memory: '500Mi',
            },
          },
        },
      ],
      volumes: [
        {
          name: 'jellyfin-config',
          hostPath: {
            path: '/mnt/shared_data/k8s/jellyfin/config',
          },
        },
        {
          name: 'jellyfin-media',
          hostPath: {
            path: '/mnt/shared_data/k8s/jellyfin/media',
          },
        },
        {
          name: 'render-device',
          hostPath: {
            path: '/dev/dri/renderD128',
          },
        },
      ],
    },
  ),
]

//    annotations:
//      # Inject jellyscrub
//      #nginx.ingress.kubernetes.io/configuration-snippet: |
//      #    proxy_set_header Accept-Encoding "";
//      #    sub_filter
//      #    '</body>'
//      #    '<script plugin="Jellyscrub" version="1.0.0.0" src="/Trickplay/ClientScript"></script>
//      #    </body>';
//      #    sub_filter_once on;
