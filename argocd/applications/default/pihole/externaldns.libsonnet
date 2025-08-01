local sa = {
  apiVersion: 'v1',
  kind: 'ServiceAccount',
  metadata: {
    name: 'external-dns',
    namespace: 'default',
  },
};
local role = {
  apiVersion: 'rbac.authorization.k8s.io/v1',
  kind: 'ClusterRole',
  metadata: {
    name: 'external-dns',
    namespace: 'default',
  },
  rules: [
    {
      apiGroups: [
        '',
      ],
      resources: [
        'services',
        'pods',
      ],
      verbs: [
        'get',
        'watch',
        'list',
      ],
    },
    {
      apiGroups: [
        'discovery.k8s.io',
      ],
      resources: [
        'endpointslices',
      ],
      verbs: [
        'get',
        'watch',
        'list',
      ],
    },
    {
      apiGroups: [
        'extensions',
        'networking.k8s.io',
      ],
      resources: [
        'ingresses',
      ],
      verbs: [
        'get',
        'watch',
        'list',
      ],
    },
    {
      apiGroups: [
        '',
      ],
      resources: [
        'nodes',
      ],
      verbs: [
        'list',
        'watch',
      ],
    },
  ],
};
local binding =
  {
    apiVersion: 'rbac.authorization.k8s.io/v1',
    kind: 'ClusterRoleBinding',
    metadata: {
      name: 'external-dns-viewer',
      namespace: 'default',
    },
    roleRef: {
      apiGroup: 'rbac.authorization.k8s.io',
      kind: 'ClusterRole',
      name: 'external-dns',
    },
    subjects: [
      {
        kind: 'ServiceAccount',
        name: 'external-dns',
        namespace: 'default',
      },
    ],
  };

{
  image():: (import 'images.libsonnet').container.externaldns,
  permissions()::
    [
      sa,
      role,
      binding,
    ],
}
