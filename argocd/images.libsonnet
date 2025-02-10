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
      chartVersion: '3.11.2',
    },
    registry: {
      chart: 'docker-registry',
      chartUrl: 'https://helm.twun.io',
      chartVersion: '2.2.3',
    },
  },
}
