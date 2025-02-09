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
        directory: {
          jsonnet: {
            libs: ['lib'],
          },
        },
      },
      project: 'default',
      syncPolicy: {
        syncOptions: ['CreateNamespace=true'],
      },
    },
  },
  applicationRepo(name, targetnamespace, path, url, revision='HEAD'):: self.application(name, targetnamespace) + {
    source: {
      path: path,
      repoURL: url,
      targetRevision: revision,
    },
  },
  applicationHelm(name, targetnamespace, chart, chartUrl, chartVersion, releaseName, values):: self.application(name, targetnamespace) + {
    spec: {
      source: {
        chart: chart,
        repoURL: chartUrl,
        targetRevision: chartVersion,
        helm: {
          releaseName: releaseName,
          valuesObject: values,
        },
      },
    },
  },
}
