local argocd = import 'argocd.libsonnet';
local storage = import 'storage.libsonnet';
local chart = (import 'images.libsonnet').helm.cnpg;

local config = import 'config.libsonnet';

local pvs = [
  storage.localPersistentVolume('postgres-db-optiplex', config.namespace, 10, '/mnt/hdd_gluster/postgres_data', config.storageClass, 'optiplex'),
  storage.localPersistentVolume('postgres-db-server', config.namespace, 10, '/var/lib/postgres', config.storageClass, 'rpi-server'),
  storage.localPersistentVolume('postgres-db-server2', config.namespace, 10, '/var/lib/postgres', config.storageClass, 'rpi-server2'),
];

local pool() = {
  apiVersion: 'postgresql.cnpg.io/v1',
  kind: 'Pooler',
  metadata: {
    name: '%s-pool-rw' % config.clusterName,
    namespace: config.namespace,
  },
  spec: {
    cluster: {
      name: config.clusterName,
    },
    instances: 3,
    type: 'rw',
    pgbouncer: {
      poolMode: 'session',
      parameters: {
        max_client_conn: '1000',
        default_pool_size: '10',
      },
    },
  },
};

local cluster = {
  apiVersion: 'postgresql.cnpg.io/v1',
  kind: 'Cluster',
  metadata: {
    name: config.clusterName,
    namespace: config.namespace,
  },
  spec:
    {
      postgresql: {
        parameters: {
          max_connections: '200',
        },
      },
      instances: 3,
      storage: {
        size: '3Gi',
        storageClass: config.storageClass,
      },
      monitoring: {
        enablePodMonitor: true,
      },
      managed:
        {
          roles:
            [
              {
                name: 'admin',
                ensure: 'present',
                comment: 'superuser',
                login: true,
                superuser: true,
                passwordSecret: {
                  name: config.secretName,
                },
                // These are needed for ArgoCD 3.0
                connectionLimit: -1,
                inherit: true,
              },
            ],
        },
    },
};

[
  argocd.applicationHelm(
    name='cloudnative-pg',
    targetnamespace=config.namespace,
    chart=chart,
    values={
      monitoring: {
        podMonitorEnabled: true,
      },
    }
  ),
  cluster,
  storage.localStorageClass(config.storageClass),
]
+ pvs
+ std.objectValues(config.pools)
