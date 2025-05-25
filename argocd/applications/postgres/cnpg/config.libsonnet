local pool(clusterName, poolName, namespace, type='rw', instances=3, maxConnections=1000, defaultPoolSize=10) = {
  local outerSelf = self,
  apiVersion: 'postgresql.cnpg.io/v1',
  kind: 'Pooler',
  metadata: {
    name: outerSelf.getName(),
    namespace: namespace,
  },
  spec: {
    cluster: {
      name: clusterName,
    },
    instances: instances,
    type: type,
    pgbouncer: {
      poolMode: 'session',
      parameters: {
        max_client_conn: '%d' % maxConnections,
        default_pool_size: '%d' % defaultPoolSize,
      },
    },
  },
  getName():: '%s-%s-pool-%s' % [clusterName, poolName, type],
};

{
  local selfConfig = self,
  clusterName: 'cluster-main',
  namespace: 'postgres',
  storageClass: 'postgres-local',
  secretName: 'cnpg-cluster-admin',

  host: {
    local getHost(type) = '%s-%s.%s' % [selfConfig.clusterName, type, selfConfig.namespace],
    write: getHost('rw'),
    read: getHost('r'),
    readOnly: getHost('ro'),
  },
  pools: {
    default: pool(selfConfig.clusterName, 'default', selfConfig.namespace),
  },
}
