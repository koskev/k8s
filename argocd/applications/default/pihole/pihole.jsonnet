local externalDNS = import './externaldns.libsonnet';
local k8s = import 'k8s.libsonnet';
local image = (import 'images.libsonnet').container.pihole;
local globals = import 'globals.libsonnet';

local name = 'pihole';
local namespace = 'default';

local pihole_version = 6;

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
      dnsPolicy: 'None',
      dnsConfig: {
        nameservers: [
          '192.168.1.1',
        ],
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
            '--pihole-api-version=%d' % pihole_version,
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
            // OLD Config
            {
              name: 'PIHOLE_DNS_',
              value: '192.168.1.1',
            },
            {
              name: 'DNSMASQ_LISTENING',
              value: 'all',
            },
            // New Config
            {
              name: 'FTLCONF_dns_upstreams',
              value: '192.168.1.1',
            },
            // Empty domain to remove "lan" from the setting and allow pihole to forward the request
            {
              name: 'FTLCONF_dns_domain',
              value: '',
            },
            {
              name: 'FTLCONF_dns_revServers',
              value: 'true,192.168.0.0/16,192.168.1.1,lan',
            },
            {
              name: 'FTLCONF_dns_listeningMode',
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
