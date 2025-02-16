local k8s = import 'k8s.libsonnet';
local mealie = (import 'images.libsonnet').container.mealie;

local name = 'mealie';
local namespace = 'mealie';

[
  k8s.v1.namespace(namespace),
  k8s.db.database(name, namespace),
  k8s.db.user(name, namespace, secretTemplate={
    ALLOW_SIGNUP: 'false',
    PUID: '1000',
    PGID: '1000',
    TZ: 'Europe/Berlin',
    BASE_URL: 'https://mealie.kokev.de',
    DB_ENGINE: 'postgres',
    POSTGRES_USER: '{{.Role}}',
    POSTGRES_PASSWORD: '{{.Password}}',
    POSTGRES_SERVER: '{{.Host}}',
    POSTGRES_PORT: '5432',
    POSTGRES_DB: '{{.Database}}',
  }),
  k8s.networking.ingress(name, namespace, host='mealie.kokev.de', serviceName=name, servicePort=9000),
  k8s.v1.service(name, namespace, ports=[9000]),
  k8s.apps.statefulSet(
    name=name,
    namespace=namespace,
    spec={
      securityContext: {
        runAsUser: 1000,
        runAsGroup: 1000,
      },
      containers: [{
        name: name,
        image: '%s:%s' % [mealie.image, mealie.tag],
        volumeMounts: [
          {
            mountPath: '/app/data',
            name: 'datadir',
          },
        ],
        resources: {
          limits: {
            memory: '1Gi',
          },
          requests: {
            memory: '256Mi',
          },
        },
        envFrom: [{
          secretRef: {
            name: '%s-%s' % [name, name],
          },
        }],

      }],
      volumes: [
        {
          name: 'datadir',
          hostPath: {
            path: '/mnt/shared_data/k8s/mealie',
          },
        },
      ],
    },
  ),
]
