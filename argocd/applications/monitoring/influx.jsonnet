local k8s = import 'k8s.libsonnet';
local image = (import 'images.libsonnet').container.influxdb;

local name = 'influxdb';
local namespace = 'monitoring';
local port = 8086;

[

  k8s.secret.externalSecretExtract('influxdb-secret', namespace),
  k8s.v1.service(
    name=name,
    namespace=namespace,
    ports=[port],
  ),
  k8s.apps.statefulSet(
    name=name,
    namespace=namespace,
    serviceName=name,
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
          env: [
            {
              name: 'DOCKER_INFLUXDB_INIT_MODE',
              value: 'setup',
            },
            {
              name: 'DOCKER_INFLUXDB_INIT_USERNAME',
              value: 'admin',
            },
            {
              name: 'DOCKER_INFLUXDB_INIT_PASSWORD',
              valueFrom: {
                secretKeyRef: {
                  name: 'influxdb-secret',
                  key: 'password',
                },
              },
            },
            {
              name: 'DOCKER_INFLUXDB_INIT_ORG',
              value: 'k8s',
            },
            {
              name: 'DOCKER_INFLUXDB_INIT_BUCKET',
              value: 'k8s',
            },
          ],
          volumeMounts: [
            {
              name: 'influx-data',
              mountPath: '/var/lib/influxdb2',
            },
            {
              name: 'influx-config',
              mountPath: '/etc/influxdb2',
            },
          ],
          resources: {
            requests: {
              memory: '512Mi',
            },
          },
          livenessProbe: {
            exec: {
              command: [
                'cat',
                '/var/lib/influxdb2/mount',
              ],
            },
          },
        },
      ],
      volumes: [
        {
          name: 'influx-data',
          hostPath: {
            path: '/mnt/shared_data/k8s/influx/data',
          },
        },
        {
          name: 'influx-config',
          hostPath: {
            path: '/mnt/shared_data/k8s/influx/config',
          },
        },
      ],
    },
  ),
]
