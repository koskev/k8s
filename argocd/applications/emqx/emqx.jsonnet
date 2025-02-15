local chart = (import 'images.libsonnet').helm.emqx;
local k8s = import 'k8s.libsonnet';

local name = 'emqx';
local namespace = 'emqx';

local secretName = 'emqx-secret';
k8s.secret.secretStoreKubernetes('%s-store' % name, namespace) +
[
  k8s.db.database('emqx', namespace),
  k8s.db.user('emqx', namespace),
  k8s.secret.externalSecretExtract(secretName, namespace),
  k8s.argocd.applicationHelm(
    name='emqx',
    targetnamespace=namespace,
    chart=chart,
    releaseName='emqx',
    values={
      service: {
        type: 'LoadBalancer',
        loadBalancerIP: '192.168.10.5',
        annotations: {
          'external-dns.alpha.kubernetes.io/hostname': 'mqtt.kokev.de',
        },
      },
      ssl: {
        enabled: true,
        useExisting: false,
        dnsnames: [
          'mqtt.kokev.de',
        ],
        issuer: {
          name: 'kokev-issuer',
        },
      },
      extraVolumes: [
        {
          name: 'emqx-config',
          configMap: {
            name: 'emqx-config',
          },
        },
      ],
      extraVolumeMounts: [
        {
          name: 'emqx-config',
          mountPath: '/opt/emqx/etc/acl.conf',
          subPath: 'acl.conf',
        },
      ],
      emqxConfig: {
        EMQX_AUTHENTICATION__1__BACKEND: 'postgresql',
        EMQX_AUTHENTICATION__1__MECHANISM: 'password_based',
        EMQX_AUTHENTICATION__1__PASSWORD_HASH_ALGORITHM__NAME: 'bcrypt',
        EMQX_AUTHENTICATION__1__QUERY: 'SELECT password_hash FROM mqtt_user where username = ${username} LIMIT 1',
        EMQX_AUTHENTICATION__1__SERVER: 'postgresql-service.default:5432',
        EMQX_LISTENERS__SSL__DEFAULT__SSL_OPTIONS__CERTFILE: '/tmp/ssl/tls.crt',
        EMQX_LISTENERS__SSL__DEFAULT__SSL_OPTIONS__KEYFILE: '/tmp/ssl/tls.key',
      },
      envFromSecret: secretName,
      metrics: {
        enabled: true,
      },
      ingress: {
        dashboard: {
          enabled: true,
          ingressClassName: 'nginx',
          annotations: {
            'cert-manager.io/cluster-issuer': 'kokev-issuer',
          },
          hosts: [
            'emqx.kokev.de',
          ],
          tls: [
            {
              hosts: [
                'emqx.kokev.de',
              ],
              secretName: 'emqx-dashboard-tls',
            },
          ],
        },
      },
      resources: {
        requests: {
          cpu: '500m',
          memory: '512Mi',
        },
      },
      topologySpreadConstraints: [
        {
          maxSkew: 1,
          topologyKey: 'kubernetes.io/hostname',
          whenUnsatisfiable: 'ScheduleAnyway',
        },
      ],

    },
  ),
]
