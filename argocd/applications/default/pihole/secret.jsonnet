{
  apiVersion: 'external-secrets.io/v1beta1',
  kind: 'ExternalSecret',
  metadata: {
    name: 'pihole-secret',
    namespace: 'default',
  },
  spec: {
    refreshInterval: '1h',
    secretStoreRef: {
      kind: 'ClusterSecretStore',
      name: 'vault-secrets',
    },
    target: {
      name: 'pihole-secret',
      creationPolicy: 'Owner',
    },
    dataFrom: [{
      extract: {
        key: 'pihole-secret',
      },
    }],
  },
}
