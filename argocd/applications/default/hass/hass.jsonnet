local image = (import 'images.libsonnet').container.hass;
local k8s = import 'k8s.libsonnet';

local name = 'hass';
local namespace = 'default';

local service_name = '%s-service' % name;

[
  k8s.db.database(
    name='%s-db' % name,
    namespace=namespace,
    databaseName=name
  ),
  k8s.db.user(
    name=name,
    namespace=namespace,
    database='%s-db' % name,
    secretTemplate={
      'database.yaml': std.manifestYamlDoc({
        db_url: 'postgresql://{{.Role}}:{{.Password}}@{{.Host}}/{{.Database}}?sslmode=disable',
      }, quote_keys=false),
    },
    secretName='%s-db-secret' % name,
  ),
  k8s.v1.service(
    name=service_name,
    namespace=namespace,
    app='%s-deployment' % name,
    ports=[8123],
  ),
  k8s.networking.ingress(
    name='%s-ingress' % name,
    namespace=namespace,
    host='hass.kokev.de',
    serviceName=service_name,
    servicePort=8123,
    issuer='kokev-issuer',
    ingressClass='nginx',
  ),
  k8s.apps.statefulSet(
    name='%s-deployment' % name,
    namespace=namespace,
    serviceName=service_name,
    spec={
      securityContext: {
        runAsUser: 1000,
        runAsGroup: 1000,
      },
      containers: [
        {
          name: 'hass',
          image: '%s:%s' % [image.image, image.tag],
          ports: [
            {
              containerPort: 8123,
              protocol: 'TCP',
            },
          ],
          volumeMounts: [
            {
              name: 'hass-config',
              mountPath: '/config',
            },
            {
              name: 'db-config',
              mountPath: '/config/database.yaml',
              subPath: 'database.yaml',
            },
          ],
          env: [
            {
              name: 'DISABLE_JEMALLOC',
              value: 'true',
            },
          ],
          livenessProbe: {
            httpGet: {
              path: '/',
              port: 8123,
            },
            initialDelaySeconds: 500,
            periodSeconds: 60,
            timeoutSeconds: 10,
            failureThreshold: 5,
          },
          resources: {
            requests: {
              memory: '512Mi',
            },
          },
        },
      ],
      volumes: [
        {
          name: 'hass-config',
          hostPath: {
            path: '/mnt/shared_data/k8s/hass/config',
          },
        },
        {
          name: 'db-config',
          secret: {
            secretName: 'hass-db-secret-hass',
          },
        },
      ],
    },
  ),
]
