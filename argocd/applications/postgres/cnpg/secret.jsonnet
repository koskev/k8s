{
  apiVersion: 'external-secrets.io/v1beta1',
  kind: 'ExternalSecret',
  metadata: {
    name: 'cluster-admin-secret',
    namespace: 'postgres',
    labels: {
      'cnpg.io/reload': 'true',
    },
  },
  spec: {
    refreshInterval: '1h',
    secretStoreRef: {
      kind: 'ClusterSecretStore',
      name: 'vault-secrets',
    },
    target: {
      name: 'cluster-admin-secret',
      creationPolicy: 'Owner',
    },
    dataFrom: [{
      extract: {
        key: 'cnpg-cluster-admin',
      },
    }],
  },
}
