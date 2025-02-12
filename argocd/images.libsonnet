{
  helm: {
    argocd: {
      chart: 'argo-cd',
      repoURL: 'https://argoproj.github.io/argo-helm',
      targetRevision: '7.8.2',
    },
    synapse: {
      chart: 'matrix-synapse',
      repoURL: 'https://ananace.gitlab.io/charts',
      targetRevision: '3.11.3',
    },
    registry: {
      chart: 'docker-registry',
      repoURL: 'https://helm.twun.io',
      targetRevision: '2.2.3',
    },
    kube_prometheus: {
      chart: 'kube-prometheus-stack',
      repoURL: 'https://prometheus-community.github.io/helm-charts',
      targetRevision: '68.5.0',
    },
    cert_manager: {
      chart: 'cert-manager',
      repoURL: 'https://charts.jetstack.io',
      targetRevision: 'v1.17.0',
    },
    external_secrets: {
      chart: 'external-secrets',
      repoURL: 'https://charts.external-secrets.io',
      targetRevision: '0.14.1',
    },
    external_postgres_operator: {
      chart: 'ext-postgres-operator',
      repoURL: 'https://movetokube.github.io/postgres-operator',
      targetRevision: '1.2.6',
    },
    cnpg: {
      chart: 'cloudnative-pg',
      repoURL: 'https://cloudnative-pg.github.io/charts',
      targetRevision: '0.23.0',
    },
  },
}
