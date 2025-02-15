{
  local selfConfig = self,
  clusterName: 'cluster-main',
  namespace: 'postgres',
  storageClass: 'postgres-local',
  secretName: 'cluster-admin-secret',

  host: {
    local getHost(type) = '%s-%s.%s' % [selfConfig.clusterName, type, selfConfig.namespace],
    write: getHost('rw'),
    read: getHost('r'),
    readOnly: getHost('ro'),
  },
}
