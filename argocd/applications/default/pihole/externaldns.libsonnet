local name = 'external-dns';
local namespace = 'default';

local sa = {
  apiVersion: 'v1',
  kind: 'ServiceAccount',
  metadata: {
    name: name,
    namespace: namespace,
  },
};
local role = {
  apiVersion: 'rbac.authorization.k8s.io/v1',
  kind: 'ClusterRole',
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
      namespace: namespace,
    },
    roleRef: {
      apiGroup: 'rbac.authorization.k8s.io',
      kind: 'ClusterRole',
      name: name,
    },
    subjects: [
      {
        kind: 'ServiceAccount',
        name: name,
        namespace: namespace,
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
