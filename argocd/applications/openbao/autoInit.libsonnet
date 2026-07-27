function(input=import 'defaultInput.libsonnet')
  local namespace = input.applications.openbao.config.namespace;
  local saName = 'openbao-init';

  [
    // Auto init
    {
      apiVersion: 'v1',
      kind: 'ServiceAccount',
      metadata: {
        name: saName,
        namespace: namespace,
      },
    },
    {
      apiVersion: 'rbac.authorization.k8s.io/v1',
      kind: 'Role',
      metadata: {
        name: 'openbao-init-secret-writer',
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
            'create',
            'get',
            'update',
            'patch',
          ],
        },
        {
          apiGroups: [
            '',
          ],
          resources: [
            'pods',
          ],
          verbs: [
            'get',
            'list',
          ],
        },
        {
          apiGroups: [
            '',
          ],
          resources: [
            'pods/exec',
          ],
          verbs: [
            'create',
          ],
        },
      ],
    },
    {
      apiVersion: 'rbac.authorization.k8s.io/v1',
      kind: 'RoleBinding',
      metadata: {
        name: 'openbao-init-secret-writer',
        namespace: namespace,
      },
      roleRef: {
        apiGroup: 'rbac.authorization.k8s.io',
        kind: 'Role',
        name: 'openbao-init-secret-writer',
      },
      subjects: [
        {
          kind: 'ServiceAccount',
          name: saName,
          namespace: namespace,
        },
      ],
    },
    {
      apiVersion: 'batch/v1',
      kind: 'Job',
      metadata: {
        name: 'openbao-init',
        namespace: namespace,
        annotations: {
          'argocd.argoproj.io/sync-wave': '30',
          'argocd.argoproj.io/hook': 'PostSync',
          'argocd.argoproj.io/hook-delete-policy': 'HookSucceeded',
        },
      },
      spec: {
        template: {
          spec: {
            serviceAccountName: saName,
            initContainers: [
              {
                name: 'openbao-init',
                image: 'ghcr.io/openbao/openbao:latest',
                command: [
                  '/bin/sh',
                  '-c',
                  importstr 'baoInit.sh',
                ],
                volumeMounts: [
                  {
                    name: 'shared',
                    mountPath: '/shared',
                  },
                ],
              },
            ],
            containers: [
              {
                name: 'create-secret',
                image: 'alpine/k8s:1.32.0',
                command: [
                  '/bin/sh',
                  '-cx',
                  |||
                    if [ -f /shared/init.json ]; then
                      jq -r '{ apiVersion: "v1", kind: "Secret", metadata: {labels: {"vault-unsealer.bakito.net/stateful-set": "openbao"}, namespace: "%(namespace)s", name: "openbao-unsealer-secret"}, type: "Opaque", stringData: (.root_token as $root_token | .unseal_keys_b64 | to_entries | map({("unsealKey" + (.key +1 | tostring)): .value}) | add | .root_token = $root_token)}' /shared/init.json | kubectl apply -f -
                    fi
                  ||| % {
                    namespace: namespace,
                  },
                ],
                volumeMounts: [
                  {
                    name: 'shared',
                    mountPath: '/shared',
                    readOnly: true,
                  },
                ],
              },
            ],
            volumes: [
              {
                name: 'shared',
                emptyDir: {},
              },
            ],
            restartPolicy: 'Never',
          },
        },
        backoffLimit: 3,
      },
    },

  ]
