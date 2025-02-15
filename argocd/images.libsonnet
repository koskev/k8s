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
      targetRevision: '69.2.4',
    },
    cert_manager: {
      chart: 'cert-manager',
      repoURL: 'https://charts.jetstack.io',
      targetRevision: 'v1.17.1',
    },
    external_secrets: {
      chart: 'external-secrets',
      repoURL: 'https://charts.external-secrets.io',
      targetRevision: '0.14.2',
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
    emqx: {
      chart: 'emqx',
      repoURL: 'https://repos.emqx.io/charts',
      targetRevision: '5.8.4',
    },
    hms: {
      chart: 'hms-mqtt-chart',
      repoURL: 'https://koskev.github.io/hms-mqtt-publisher',
      targetRevision: '0.1.6',
    },
    metallb: {
      chart: 'metallb',
      repoURL: 'https://metallb.github.io/metallb',
      targetRevision: '0.14.9',
    },
    openbao: {
      chart: 'openbao',
      repoURL: 'https://openbao.github.io/openbao-helm',
      targetRevision: '0.8.1',
    },
    ping_exporter: {
      chart: 'ping-exporter',
      repoURL: 'https://raw.githubusercontent.com/czerwonk/ping_exporter/main/dist/charts',
      targetRevision: '1.1.0',
    },
    brouter: {
      chart: 'brouter',
      repoURL: 'https://koskev.github.io/brouter-chart',
      targetRevision: '0.1.23',
    },
    reloader: {
      chart: 'reloader',
      repoURL: 'https://stakater.github.io/stakater-charts',
      targetRevision: '1.2.1',
    },
    ingress_nginx: {
      chart: 'ingress-nginx',
      repoURL: 'https://kubernetes.github.io/ingress-nginx',
      targetRevision: '4.12.0',
    },
  },
  container: {
    renovate: {
      image: 'renovate/renovate',
      tag: '39.169.3',
    },
    signal_bridge: {
      image: 'dock.mau.dev/mautrix/signal',
      tag: 'v0.7.5',
    },
    whatsapp_bridge: {
      image: 'dock.mau.dev/mautrix/whatsapp',
      tag: 'v0.11.2',
    },
    yqgo: {
      image: 'mikefarah/yq',
      tag: '4.45.1',
    },
  },
}
