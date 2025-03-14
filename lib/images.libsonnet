{
  helm: {
    argocd: {
      chart: 'argo-cd',
      repoURL: 'https://argoproj.github.io/argo-helm',
      targetRevision: '7.8.10',
    },
    synapse: {
      chart: 'matrix-synapse',
      repoURL: 'https://ananace.gitlab.io/charts',
      targetRevision: '3.11.5',
    },
    registry: {
      chart: 'docker-registry',
      repoURL: 'https://helm.twun.io',
      targetRevision: '2.2.3',
    },
    kube_prometheus: {
      chart: 'kube-prometheus-stack',
      repoURL: 'https://prometheus-community.github.io/helm-charts',
      targetRevision: '69.8.0',
    },
    cert_manager: {
      chart: 'cert-manager',
      repoURL: 'https://charts.jetstack.io',
      targetRevision: 'v1.17.1',
    },
    external_secrets: {
      chart: 'external-secrets',
      repoURL: 'https://charts.external-secrets.io',
      targetRevision: '0.14.4',
    },
    external_postgres_operator: {
      chart: 'ext-postgres-operator',
      repoURL: 'https://movetokube.github.io/postgres-operator',
      targetRevision: '1.2.6',
    },
    cnpg: {
      chart: 'cloudnative-pg',
      repoURL: 'https://cloudnative-pg.github.io/charts',
      targetRevision: '0.23.2',
    },
    emqx: {
      chart: 'emqx',
      repoURL: 'https://repos.emqx.io/charts',
      targetRevision: '5.8.5',
    },
    hms: {
      chart: 'hms-mqtt-chart',
      repoURL: 'https://koskev.github.io/hms-mqtt-publisher',
      targetRevision: '0.1.7',
    },
    metallb: {
      chart: 'metallb',
      repoURL: 'https://metallb.github.io/metallb',
      targetRevision: '0.14.9',
    },
    openbao: {
      chart: 'openbao',
      repoURL: 'https://openbao.github.io/openbao-helm',
      targetRevision: '0.9.0',
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
      targetRevision: '1.3.0',
    },
    ingress_nginx: {
      chart: 'ingress-nginx',
      repoURL: 'https://kubernetes.github.io/ingress-nginx',
      targetRevision: '4.12.0',
    },
    trivy: {
      chart: 'trivy-operator',
      repoURL: 'https://aquasecurity.github.io/helm-charts/',
      targetRevision: '0.27.0',
    },
  },
  container: {
    renovate: {
      image: 'renovate/renovate',
      tag: '39.200.2',
    },
    signal_bridge: {
      image: 'dock.mau.dev/mautrix/signal',
      tag: 'v0.8.0',
    },
    whatsapp_bridge: {
      image: 'dock.mau.dev/mautrix/whatsapp',
      tag: 'v0.11.3',
    },
    yqgo: {
      image: 'mikefarah/yq',
      tag: '4.45.1',
    },
    nginx: {
      image: 'nginx',
      tag: '1.25.4-alpine3.18',
    },
    synapse: {
      image: 'matrixdotorg/synapse',
      tag: 'v1.126.0',
    },
    navidrome: {
      image: 'ghcr.io/navidrome/navidrome',
      tag: '0.55.0',
    },
    mumble: {
      image: 'mumblevoip/mumble-server',
      tag: 'v1.5.735',
    },
    unbound: {
      image: 'ghcr.io/koskev/unbound',
      tag: '2025.03.01',
    },
    hass: {
      image: 'ghcr.io/home-assistant/home-assistant',
      tag: '2025.3.3',
    },
    grocy: {
      image: 'linuxserver/grocy',
      tag: 'v4.0.3-ls221',
    },
    jellyfin: {
      image: 'docker.io/jellyfin/jellyfin',
      tag: '10.10.6',
    },
    zigbee2mqtt: {
      image: 'koenkk/zigbee2mqtt',
      tag: '2.1.3',
    },
    esphome: {
      image: 'ghcr.io/esphome/esphome',
      tag: '2025.2.2',
    },
    chhoto: {
      image: 'sintan1729/chhoto-url',
      tag: '5.6.2',
    },
    nodered: {
      image: 'nodered/node-red',
      tag: '4.0.9-18',
    },
    pihole: {
      image: 'pihole/pihole',
      tag: '2024.07.0',
    },
    externaldns: {
      image: 'registry.k8s.io/external-dns/external-dns',
      tag: 'v0.15.1',
    },
    sanejs: {
      image: 'sbs20/scanservjs',
      tag: 'v3.0.3',
    },
    cups: {
      image: 'ydkn/cups',
      tag: 'latest',
    },
    syncthing: {
      image: 'syncthing/syncthing',
      tag: '1.29',
    },
    brouter_react: {
      image: 'ghcr.io/koskev/brouter-react',
      tag: '2025.03.10',
    },
  },
}
