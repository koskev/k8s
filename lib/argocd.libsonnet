{
  application(name, targetnamespace):: {
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
      },
    },
  },
  applicationRepo(name, targetnamespace, path, url='https://github.com/koskev/k8s', revision='HEAD', recurse=false, project='gpg'):: self.application(name, targetnamespace) + {
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
  ):: self.application(name, targetnamespace) + {
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
