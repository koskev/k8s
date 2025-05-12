local definition = import 'builder/definition.libsonnet';

{
  application:: {
    new(name, targetnamespace, namespace='argocd'):: self + definition.new('argoproj.io/v1alpha1', 'Application', name, namespace) {
      spec: {
        project: 'default',
        destination: {
          namespace: targetnamespace,
          server: 'https://kubernetes.default.svc',
        },
      },
    },

    withAutoSync():: self.withSpec({
      syncPolicy+: {
        syncOptions+: ['CreateNamespace=true'],
        automated+: {
          prune: true,
          selfHeal: true,
        },
      },
    }),

    withProject(name):: self {
      assert std.isString(name),
      spec+: {
        project: name,
      },
    },

    withServerSideApply():: self {
      spec+: {
        syncPolicy+: {
          syncOptions+: [
            'ServerSideApply=true',
          ],
        },
      },
    },
  },
}
