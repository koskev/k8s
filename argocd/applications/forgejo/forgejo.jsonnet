local k8s = import 'k8s.libsonnet';
local chart = (import 'images.libsonnet').helm.forgejo;
local globals = import 'globals.libsonnet';
local valkey = import 'valkey.libsonnet';

local name = 'forgejo';
local namespace = 'forgejo';

local valkey_name = '%s-valkey' % name;
local valkey_port = 6379;

local storageclass = 'local-%s' % name;
local host = 'forgejo.kokev.de';

[
  k8s.storage.localStorageClass(storageclass),
  k8s.storage.localPersistentVolume(
    name,
    namespace,
    20,
    '/mnt/shared_data/k8s/forgejo',
    storageclass
  ),
  k8s.db.database(name, namespace),
  k8s.db.user(name, namespace),
  k8s.argocd.applicationHelm(
    name=name,
    targetnamespace=namespace,
    chart=chart,
    values={
      service: {
        ssh: {
          type: 'LoadBalancer',
          loadBalancerIP: globals.ips.ingress_nginx,
          annotations: {
            'metallb.io/allow-shared-ip': 'nginx',
          },
        },
      },
      ingress: {
        enabled: true,
        className: 'nginx',
        annotations: {
          'cert-manager.io/cluster-issuer': 'kokev-issuer',
        },
        hosts: [{
          host: host,
          paths: [{
            path: '/',
            pathType: 'Prefix',
          }],
        }],
        tls: [{
          hosts: [
            host,
          ],
          secretName: '%s-tls' % name,
        }],
      },
      posgresql: {
        enabled: false,
      },
      'postgresql-ha': {
        enabled: false,
      },
      persistence: {
        enabled: true,
        storageClass: storageclass,
      },
      gitea: {
        local valkey_url = 'redis://%s:%d' % [valkey_name, valkey_port],
        queue: {
          TYPE: 'redis',
          CONN_STR: 'redis://%s/0?' % valkey_url,
        },
        cache: {
          ADAPTER: 'redis',
          HOST: 'redis://%s/1' % valkey_url,
        },
        session: {
          PROVIDER: 'redis',
          PROVIDER_CONFIG: 'redis://%s/2' % valkey_url,
        },
        config: {
          database: {
            DB_TYPE: 'postgres',
          },
        },
        additionalConfigFromEnvs:
          [
            {
              name: x.name,
              valueFrom: {
                secretKeyRef: {
                  name: '%s-%s' % [name, name],
                  key: x.key,
                },
              },
            }
            for x in [
              {
                name: 'FORGEJO__DATABASE__HOST',
                key: 'HOST',
              },
              {
                name: 'FORGEJO__DATABASE__NAME',
                key: 'DATABASE_NAME',
              },
              {
                name: 'FORGEJO__DATABASE__PASSWD',
                key: 'PASSWORD',
              },
              {
                name: 'FORGEJO__DATABASE__USER',
                key: 'ROLE',
              },
            ]
          ] +
          [{
            name: 'FORGEJO__SERVICE__DISABLE_REGISTRATION',
            value: 'true',
          }],
      },
    },
  ),
] + valkey.new(valkey_name, namespace, valkey_port)
