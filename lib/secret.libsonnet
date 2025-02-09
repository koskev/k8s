{
  externalSecretExtract(name, namespace, key):: {
    apiVersion: 'external-secrets.io/v1beta1',
    kind: 'ExternalSecret',
    metadata: {
      name: name,
      namespace: namespace,
    },
    spec: {
      refreshInterval: '1h',
      secretStoreRef: {
        kind: 'ClusterSecretStore',
        name: 'vault-secrets',
      },
      target: {
        name: name,
        creationPolicy: 'Owner',
      },
      dataFrom: [{
        extract: {
          key: key,
        },
      }],
    },
  },
}
