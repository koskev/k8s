local argocd = import 'argocd.libsonnet';
local secret = import 'secret.libsonnet';
local storage = import 'storage.libsonnet';
local chart = (import 'images.libsonnet').helm.cnpg;

local storageClass = 'postgres-local';
local clusterName = 'cluster-main';
local secretName = 'cluster-admin-secret';


local pvs = [
  storage.localPersistentVolume('postgres-db-optiplex', 'postgres', 10, '/mnt/hdd_gluster/postgres_data', storageClass, 'optiplex'),
  storage.localPersistentVolume('postgres-db-server', 'postgres', 10, '/mnt/hdd_gluster/postgres_data', storageClass, 'raspberrypi-server'),
  storage.localPersistentVolume('postgres-db-server2', 'postgres', 10, '/mnt/glusterfs/postgres_data', storageClass, 'rpi-server2'),
];

local cluster = {
  apiVersion: 'postgresql.cnpg.io/v1',
  kind: 'Cluster',
  metadata: {
    name: clusterName,
    namespace: 'postgres',
  },
  spec:
    {
      instances: 3,
      storage: {
        size: '3Gi',
        storageClass: storageClass,
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
                  name: secretName,
                },
              },
            ],
        },
    },
};

[
  argocd.applicationHelm(
    name='cloudnative-pg',
    targetnamespace='postgres',
    chart=chart,
    values={
      monitoring: {
        podMonitorEnabled: true,
      },
    }
  ),
  cluster,
  storage.localStorageClass(storageClass),
  secret.externalSecretTemplate(
    name=secretName,
    namespace='postgres',
    labels={
      'cnpg.io/reload': 'true',
    },
    key='cnpg-cluster-admin',
    data={
      POSTGRES_HOST: '%s-rw.postgres' % clusterName,
      POSTGRES_USER: '{{ .username }}',
      POSTGRES_PASS: '{{ .password }}',
      POSTGRES_URI_ARGS: '',
      POSTGRES_CLOUD_PROVIDER: '',
      POSTGRES_DEFAULT_DATABASE: 'postgres',
      username: '{{ .username }}',
      password: '{{ .password }}',
    }
  ),
] + pvs
