{
  apiVersion: 'external-secrets.io/v1beta1',
  kind: 'ExternalSecret',
  metadata: {
    name: 'chhoto',
    namespace: 'default',
  },
  spec: {
    refreshInterval: '1h',
    secretStoreRef: {
      kind: 'SecretStore',
      name: 'vault-secrets',
    },
    target: {
      name: 'chhoto-secret',
      creationPolicy: 'Owner',
    },
    dataFrom: [{
      extract: {
        key: 'chhoto',
      },
    }],
  },
}
