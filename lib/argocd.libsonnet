local globals = import 'globals.libsonnet';
{
  application(name, targetnamespace, autosync=false):: {
    apiVersion: 'argoproj.io/v1alpha1',
    kind: 'Application',
    metadata: {
      name: name,
      namespace: 'argocd',
    },
    spec: {
      destination: {
        namespace: targetnamespace,
        server: 'https://kubernetes.default.svc',
      },
      source: {
      },
      project: 'default',
      syncPolicy: {
        syncOptions: ['CreateNamespace=true'],
        [if autosync then 'automated']: {
          prune: true,
          selfHeal: true,
        },
      },
    },
  },
  applicationRepo(name, targetnamespace, path, url=globals.repository, revision='HEAD', recurse=false, project='gpg', autosync=false):: self.application(name, targetnamespace, autosync) + {
    spec+: {
      project: project,
      source+: {
        directory: {
          jsonnet: {
            libs: ['lib', 'argocd'],
          },
        } + if recurse then { recurse: recurse } else {},
        path: path,
        repoURL: url,
        targetRevision: revision,
      },
    },
  },
  applicationHelm(
    name,
    targetnamespace,
    chart,
    releaseName=name,
    values={},
    valuesToString=false,
    autosync=false,
  ):: self.application(name, targetnamespace, autosync=autosync) + {
    spec+: {
      source+: {
        helm: {
                releaseName: releaseName,
              } +
              if valuesToString then { values: std.manifestJson(values) } else { valuesObject: values },
      } + chart,
    },
  },
  appProject(name, keys=[]):: {
    apiVersion: 'argoproj.io/v1alpha1',
    kind: 'AppProject',
    metadata: {
      name: name,
      namespace: 'argocd',
    },
    spec: {
      clusterResourceWhitelist: [
        {
          group: '*',
          kind: '*',
        },
      ],
      destinations: [
        {
          namespace: '*',
          server: '*',
        },
      ],
      signatureKeys: [
        {
          keyID: id,
        }
        for id in keys
      ],
      sourceRepos: [
        '*',
      ],
    },
  },
}
