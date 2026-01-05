local k8s = import 'k8s.libsonnet';
local image = (import 'images.libsonnet').container.zigbee2mqtt;
local backup = import 'utils/backup.jsonnet';
local globals = import 'globals.libsonnet';

local name = 'zigbee2mqtt';
local namespace = 'default';
local domain = 'zigbee2mqtt.kokev.de';
local port = 8080;

local volumes = [{
  name: 'data',
  hostPath: {
    path: '/mnt/shared_data/k8s/zigbee2mqtt',
  },
}];

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
      nodeSelector: {
        zigbee: 'true',
      },
      containers: [
        {
          name: 'zigbee2mqtt',
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
              name: 'data',
              mountPath: '/app/data',
            },
            {
              name: 'usb',
              mountPath: '/dev/bus/usb',
            },
          ],
          resources: {
            requests: {
              memory: '512Mi',
            },
          },
        },
      ],
      volumes: volumes + [
        {
          name: 'usb',
          hostPath: {
            path: '/dev/bus/usb',
          },
        },
      ],
    },
  ),
]
+
backup.new(name, namespace)
.withVolumes(volumes)
.withRepository('ssh://borg@borg-backup.borg/./backups/zigbee2mqtt/data', 'backup-zigbee2mqtt', globals.backup.kokev.knownHost)
.withDirectory('/data')
.build()
