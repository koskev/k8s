{
  apiVersion: 'external-secrets.io/v1beta1',
  kind: 'ExternalSecret',
  metadata: {
    name: 'redis-secret',
    namespace: 'matrix',
  },
  spec: {
    refreshInterval: '1h',
    secretStoreRef: {
      kind: 'ClusterSecretStore',
      name: 'vault-secrets',
    },
    target: {
      name: 'redis-secret',
      creationPolicy: 'Owner',
    },
    dataFrom: [{
      extract: {
        key: 'synapse-redis-secret',
      },
    }],
  },
}
