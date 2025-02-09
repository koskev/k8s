local argocd = import 'argocd.libsonnet';
local storage = import 'storage.libsonnet';

[
  storage.localStorageClass(name='local-synapse'),
  storage.localPersistentVolume(
    name='synapse-media-data',
    namespace='matrix',
    sizeGB=20,
    path='/mnt/shared_data/k8s/matrix/data',
    storageclass='local-synapse'
  ),
  argocd.applicationHelm(
    name='synapse',
    targetnamespace='matrix',
    chart='matrix-synapse',
    chartUrl='https://ananace.gitlab.io/charts',
    chartVersion='3.11.2',
    releaseName='synapse',
    values={
      serverName: 'matrix.kokev.de',
      ingress: {
        annotations: {
          'cert-manager.io/cluster-issuer': 'kokev-issuer',
        },
        tls: [{
          secretName: 'kokev-matrix-tls',
          hosts: ['matrix.kokev.de'],
        }],
        className: 'nginx-external',
      },
      wellknown: {
        enabled: true,
      },
      postgresql: {
        enabled: false,  // Internal postgres
      },
      externalPostgresql: {
        host: 'cluster-main-rw.postgres',
        username: 'synapse-c3WD9F',
        database: 'synapse-db',
        existingSecret: 'synapse-db-user-synapse-db-user',
        existingSecretPasswordKey: 'password',
      },
      persistence: {
        storageClass: 'local-synapse',
        accessMode: 'ReadWriteOnce',
      },
      redis: {
        auth: {
          existingSecret: 'redis-secret',
        },
      },
      extraEnv: [{
        name: 'DISABLE_JEMALLOC',
        value: 'true',
      }],
      workers: {
        appservice: {
          enabled: true,
        },
      },
      extraConfig: {
        ip_range_whitelist: ['192.168.0.0/20'],
      },
    }
  ),
]
