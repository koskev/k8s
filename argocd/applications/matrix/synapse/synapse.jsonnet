local k8s = import 'k8s.libsonnet';
local chart = (import 'images.libsonnet').helm.synapse;

local namespace = 'matrix';
[
  k8s.db.database('synapse-db', namespace=namespace),
  k8s.db.user(
    name='synapse-db-user',
    namespace=namespace,
    database='synapse-db',
    role='synapse',
    secretTemplate={
      username: '{{.Role}}',
      password: '{{.Password}}',
      database: '{{.Database}}',
      host: '{{.Host}}',
    },
  ),
  k8s.secret.externalSecretExtract('redis-secret', 'matrix', 'synapse-redis-secret'),
  k8s.secret.externalSecretExtract('synapse-signingkey', 'matrix'),
  k8s.storage.localStorageClass(name='local-synapse'),
  k8s.storage.localPersistentVolume(
    name='synapse-media-data',
    namespace='matrix',
    sizeGB=20,
    path='/mnt/shared_data/k8s/matrix/data',
    storageclass='local-synapse'
  ),
  k8s.argocd.applicationHelm(
    name='synapse',
    targetnamespace='matrix',
    chart=chart,
    releaseName='synapse',
    values={
      argoCD: true,
      signingkey: {
        job: {
          enabled: false,
        },
      },
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
        username: 'synapse-e09fPD',
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
