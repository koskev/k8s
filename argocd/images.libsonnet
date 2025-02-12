{
  helm: {
    argocd: {
      chart: 'argo-cd',
      chartUrl: 'https://argoproj.github.io/argo-helm',
      chartVersion: '7.8.2',
    },
    synapse: {
      chart: 'matrix-synapse',
      chartUrl: 'https://ananace.gitlab.io/charts',
      chartVersion: '3.11.3',
    },
    registry: {
      chart: 'docker-registry',
      chartUrl: 'https://helm.twun.io',
      chartVersion: '2.2.3',
    },
    kube_prometheus: {
      chart: 'kube-prometheus-stack',
      chartUrl: 'https://prometheus-community.github.io/helm-charts',
      chartVersion: '68.5.0',
    },
    cert_manager: {
      chart: 'cert-manager',
      chartUrl: 'https://charts.jetstack.io',
      chartVersion: 'v1.17.0',
    },
    external_secrets: {
      chart: 'external-secrets',
      chartUrl: 'https://charts.external-secrets.io',
      chartVersion: '0.14.1',
    },
  },
}
