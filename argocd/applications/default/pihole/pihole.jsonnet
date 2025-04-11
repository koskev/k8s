local externalDNS = import './externaldns.libsonnet';
local k8s = import 'k8s.libsonnet';
local image = (import 'images.libsonnet').container.pihole;
local globals = import 'globals.libsonnet';

local name = 'pihole';
local namespace = 'default';

externalDNS.permissions() +
[
  {
    apiVersion: 'v1',
    kind: 'ConfigMap',
    metadata: {
      name: 'pihole-blacklist',
      namespace: 'default',
    },
    data: {
      'blacklist.txt': |||
        *.life360.com
      |||,
    },
  },
  k8s.v1.service(
    name=name,
    namespace=namespace,
    ports=[53, 80],
    udpPorts=[53],
    type='LoadBalancer',
    loadBalancerIP=globals.ips.pihole,
  ),
  k8s.secret.externalSecretExtract(
    name='pihole-secret',
    namespace='default',
    key='pihole-secret'
  ),
  k8s.apps.deployment(
    name=name,
    namespace=namespace,
    replicas=3,
    maxUnavailable=1,
    spec={
      serviceAccountName: 'external-dns',
      securityContext: {
        fsGroup: 65534,
      },
      containers: [
        {
          name: 'external-dns',
          image: '%s:%s' % [externalDNS.image().image, externalDNS.image().tag],
          envFrom: [
            {
              secretRef: {
                name: 'pihole-secret',
              },
            },
          ],
          args: [
            '--source=service',
            '--source=ingress',
            '--registry=noop',
            '--policy=upsert-only',
            '--provider=pihole',
            '--pihole-server=http://localhost',
          ],
          resources: {
            requests: {
              memory: '64Mi',
            },
          },
        },
        {
          name: 'pihole',
          image: '%s:%s' % [image.image, image.tag],
          imagePullPolicy: 'IfNotPresent',
          ports: [
            {
              containerPort: 80,
              protocol: 'TCP',
            },
            {
              containerPort: 53,
              protocol: 'UDP',
            },
            {
              containerPort: 53,
              protocol: 'TCP',
            },
          ],
          envFrom: [
            {
              secretRef: {
                name: 'pihole-secret',
              },
            },
          ],
          env: [
            {
              name: 'TZ',
              value: 'Europe/Berlin',
            },
            {
              name: 'PIHOLE_DNS_',
              value: '192.168.1.1',
            },
            {
              name: 'DNSMASQ_LISTENING',
              value: 'all',
            },
            {
              name: 'FTLCONF_RATE_LIMIT',
              value: '0/0',
            },
          ],
          resources: {
            requests: {
              memory: '128Mi',
            },
          },
          volumeMounts: [
            {
              mountPath: '/etc/pihole/blacklist.txt',
              name: 'blacklist',
              subPath: 'blacklist.txt',
            },
          ],
        },
      ],
      volumes: [
        {
          name: 'blacklist',
          configMap: {
            name: 'pihole-blacklist',
          },
        },
      ],
      topologySpreadConstraints: [
        {
          maxSkew: 1,
          topologyKey: 'kubernetes.io/hostname',
          whenUnsatisfiable: 'DoNotSchedule',
          labelSelector: {
            matchLabels: {
              app: 'pihole',
            },
          },
        },
      ],
    },
  ),
]
