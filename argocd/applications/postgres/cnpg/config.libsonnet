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
}
