{
  helm: {
    argocd: {
      chart: 'argo-cd',
      repoURL: 'https://argoproj.github.io/argo-helm',
      targetRevision: '8.1.2',
    },
    synapse: {
      chart: 'matrix-synapse',
      repoURL: 'https://ananace.gitlab.io/charts',
      targetRevision: '3.12.3',
    },
    kube_prometheus: {
      chart: 'kube-prometheus-stack',
      repoURL: 'https://prometheus-community.github.io/helm-charts',
      targetRevision: '75.9.0',
    },
    cert_manager: {
      chart: 'cert-manager',
      repoURL: 'https://charts.jetstack.io',
      targetRevision: 'v1.18.2',
    },
    external_secrets: {
      chart: 'external-secrets',
      repoURL: 'https://charts.external-secrets.io',
      targetRevision: '0.18.2',
    },
    external_postgres_operator: {
      chart: 'ext-postgres-operator',
      repoURL: 'https://movetokube.github.io/postgres-operator',
      targetRevision: '2.1.0',
    },
    cnpg: {
      chart: 'cloudnative-pg',
      repoURL: 'https://cloudnative-pg.github.io/charts',
      targetRevision: '0.24.0',
    },
    emqx: {
      chart: 'emqx',
      repoURL: 'https://repos.emqx.io/charts',
      targetRevision: '5.8.7',
    },
    hms: {
      chart: 'hms-mqtt-chart',
      repoURL: 'https://koskev.github.io/hms-mqtt-publisher',
      targetRevision: '0.1.7',
    },
    metallb: {
      chart: 'metallb',
      repoURL: 'https://metallb.github.io/metallb',
      targetRevision: '0.15.2',
    },
    openbao: {
      chart: 'openbao',
      repoURL: 'https://openbao.github.io/openbao-helm',
      targetRevision: '0.16.1',
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
      targetRevision: '2.1.4',
    },
    ingress_nginx: {
      chart: 'ingress-nginx',
      repoURL: 'https://kubernetes.github.io/ingress-nginx',
      targetRevision: '4.12.3',
    },
    trivy: {
      chart: 'trivy-operator',
      repoURL: 'https://aquasecurity.github.io/helm-charts/',
      targetRevision: '0.29.1',
    },
    forgejo: {
      chart: 'forgejo',
      repoURL: 'code.forgejo.org/forgejo-helm',
      targetRevision: '12.0.0',
    },
    grafana: {
      chart: 'grafana-operator',
      repoURL: 'ghcr.io/grafana/helm-charts',
      targetRevision: 'v5.17.1',
    },
    flannel: {
      chart: 'flannel',
      repoURL: 'https://flannel-io.github.io/flannel',
      targetRevision: 'v0.27.0',
    },
    metrics_server: {
      chart: 'metrics-server',
      repoURL: 'https://kubernetes-sigs.github.io/metrics-server',
      targetRevision: '3.12.2',
    },
    vault_unsealer: {
      chart: 'vault-unsealer',
      repoURL: 'ghcr.io/koskev/helm-charts',
      targetRevision: '0.3.4',
    },
  },
  container: {
    renovate: {
      image: 'renovate/renovate',
      tag: '41.30.3',
    },
    signal_bridge: {
      image: 'dock.mau.dev/mautrix/signal',
      tag: 'v0.8.4',
    },
    whatsapp_bridge: {
      image: 'dock.mau.dev/mautrix/whatsapp',
      tag: 'v0.12.2',
    },
    yqgo: {
      image: 'mikefarah/yq',
      tag: '4.45.4',
    },
    nginx: {
      image: 'nginx',
      tag: '1.25.4-alpine3.18',
    },
    synapse: {
      image: 'matrixdotorg/synapse',
      tag: 'v1.133.0',
    },
    navidrome: {
      image: 'ghcr.io/navidrome/navidrome',
      tag: '0.57.0',
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
      tag: '2025.7.1',
    },
    grocy: {
      image: 'linuxserver/grocy',
      tag: 'v4.0.3-ls221',
    },
    jellyfin: {
      image: 'docker.io/jellyfin/jellyfin',
      tag: '10.10.7',
    },
    zigbee2mqtt: {
      image: 'koenkk/zigbee2mqtt',
      tag: '2.5.1',
    },
    esphome: {
      image: 'ghcr.io/esphome/esphome',
      tag: '2025.6.3',
    },
    chhoto: {
      image: 'sintan1729/chhoto-url',
      tag: '6.2.5',
    },
    nodered: {
      image: 'nodered/node-red',
      tag: '4.0.9-18',
    },
    pihole: {
      image: 'pihole/pihole',
      tag: '2025.06.2',
    },
    externaldns: {
      image: 'registry.k8s.io/external-dns/external-dns',
      tag: 'v0.18.0',
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
      tag: '1.30',
    },
    brouter_react: {
      image: 'ghcr.io/koskev/brouter-react',
      tag: '2025.07.07',
    },
    valkey: {
      image: 'valkey/valkey',
      tag: '8.1.2-alpine',
    },
    telegraf: {
      image: 'telegraf',
      tag: '1.35.1-alpine',
    },
    influxdb: {
      image: 'influxdb',
      tag: '2.7.12-alpine',
    },
    octoprint: {
      image: 'octoprint/octoprint',
      tag: '1.11.2',
    },
    wireguard: {
      image: 'lscr.io/linuxserver/wireguard',
      tag: '1.0.20210914-r4-ls68',
    },
    papermc: {
      image: 'ghcr.io/koskev/lazypaper',
      tag: '2025.03.17',
    },
    paperless: {
      image: 'ghcr.io/paperless-ngx/paperless-ngx',
      tag: '2.17.1',
    },
    ecs: {
      image: 'forgejo.kokev.de/kevin/ecs-automation',
      tag: 'latest',
    },
    fittrackee: {
      image: 'ghcr.io/samr1/fittrackee',
      tag: 'v0.10.3',
    },
  },
}
