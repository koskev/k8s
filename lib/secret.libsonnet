{
  secretStoreKubernetes(name, namespace, targetNamespace=namespace):: [
    {
      apiVersion: 'rbac.authorization.k8s.io/v1',
      kind: 'Role',
      metadata: {
        name: name,
        namespace: namespace,
      },
      rules: [
        {
          apiGroups: [
            '',
          ],
          resources: [
            'secrets',
          ],
          verbs: [
            'list',
            'get',
            'watch',
          ],
        },
        {
          apiGroups: [
            'authorization.k8s.io',
          ],
          resources: [
            'selfsubjectrulesreviews',
          ],
          verbs: [
            'create',
          ],
        },
      ],
    },
    {
      apiVersion: 'v1',
      kind: 'ServiceAccount',
      metadata: {
        name: name,
        namespace: namespace,
      },
    },
    {
      apiVersion: 'rbac.authorization.k8s.io/v1',
      kind: 'RoleBinding',
      metadata: {
        name: name,
        namespace: namespace,
      },
      subjects: [
        {
          kind: 'ServiceAccount',
          name: name,
          namespace: namespace,
        },
      ],
      roleRef: {
        kind: 'Role',
        name: name,
        apiGroup: 'rbac.authorization.k8s.io',
      },
    },
    {
      apiVersion: 'external-secrets.io/v1',
      kind: 'SecretStore',
      metadata: {
        name: name,
        namespace: namespace,
      },
      spec: {
        provider: {
          kubernetes: {
            remoteNamespace: targetNamespace,
            server: {
              caProvider: {
                type: 'ConfigMap',
                name: 'kube-root-ca.crt',
                key: 'ca.crt',
              },
            },
            auth: {
              serviceAccount: {
                name: name,
                namespace: namespace,
              },
            },
          },
        },
      },
    },
  ],
  externalSecretExtract(name, namespace, key=name, labels={}, additionalDataFrom=[], templateData={}, secretStoreRef={ kind: 'ClusterSecretStore', name: 'vault-secrets' }):: {
    apiVersion: 'external-secrets.io/v1',
    kind: 'ExternalSecret',
    metadata: {
      name: name,
      namespace: namespace,
      [if labels != {} then 'labels']: labels,
    },
    spec: {
      refreshInterval: '1h',
      secretStoreRef: secretStoreRef,
      target: {
        template: {
          engineVersion: 'v2',
          data: templateData,
        },
        name: name,
        creationPolicy: 'Owner',
      },
      dataFrom: [{
        extract: {
          // Needed for argoCD 3.0
          conversionStrategy: 'Default',
          decodingStrategy: 'None',
          metadataPolicy: 'None',
          key: key,
        },
      }] + additionalDataFrom,
    },
  },
  // TODO: support multiple sources
  externalSecretTemplate(name, namespace, key, labels={}, data={}):: {
    apiVersion: 'external-secrets.io/v1',
    kind: 'ExternalSecret',
    metadata: {
      name: name,
      namespace: namespace,
      [if labels != {} then 'labels']: labels,
    },
    spec: {
      refreshInterval: '1h',
      secretStoreRef: {
        kind: 'ClusterSecretStore',
        name: 'vault-secrets',
      },
      target: {
        template: {
          engineVersion: 'v2',
          data: data,
        },
        name: name,
        creationPolicy: 'Owner',
      },
      dataFrom: [{
        extract: {
          // Needed for argoCD 3.0
          conversionStrategy: 'Default',
          decodingStrategy: 'None',
          metadataPolicy: 'None',
          key: key,
        },
      }],
    },
  },
}
