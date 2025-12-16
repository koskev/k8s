{
  helm: {
    argocd: {
      chart: 'argo-cd',
      repoURL: 'https://argoproj.github.io/argo-helm',
      targetRevision: '9.1.7',
    },
    synapse: {
      chart: 'matrix-synapse',
      repoURL: 'https://ananace.gitlab.io/charts',
      targetRevision: '3.12.16',
    },
    kube_prometheus: {
      chart: 'kube-prometheus-stack',
      repoURL: 'https://prometheus-community.github.io/helm-charts',
      targetRevision: '79.12.0',
    },
    cert_manager: {
      chart: 'cert-manager',
      repoURL: 'https://charts.jetstack.io',
      targetRevision: 'v1.19.2',
    },
    external_secrets: {
      chart: 'external-secrets',
      repoURL: 'https://charts.external-secrets.io',
      targetRevision: '1.1.1',
    },
    external_postgres_operator: {
      chart: 'ext-postgres-operator',
      repoURL: 'https://movetokube.github.io/postgres-operator',
      targetRevision: '2.2.0',
    },
    cnpg: {
      chart: 'cloudnative-pg',
      repoURL: 'https://cloudnative-pg.github.io/charts',
      targetRevision: '0.26.1',
    },
    emqx: {
      chart: 'emqx',
      repoURL: 'https://repos.emqx.io/charts',
      targetRevision: '5.8.8',
    },
    hms: {
      chart: 'hms-mqtt-chart',
      repoURL: 'https://koskev.github.io/hms-mqtt-publisher',
      targetRevision: '0.1.7',
    },
    metallb: {
      chart: 'metallb',
      repoURL: 'https://metallb.github.io/metallb',
      targetRevision: '0.15.3',
    },
    openbao: {
      chart: 'openbao',
      repoURL: 'https://openbao.github.io/openbao-helm',
      targetRevision: '0.21.0',
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
      targetRevision: '2.2.5',
    },
    ingress_nginx: {
      chart: 'ingress-nginx',
      repoURL: 'https://kubernetes.github.io/ingress-nginx',
      targetRevision: '4.14.1',
    },
    trivy: {
      chart: 'trivy-operator',
      repoURL: 'https://aquasecurity.github.io/helm-charts/',
      targetRevision: '0.31.0',
    },
    forgejo: {
      chart: 'forgejo',
      repoURL: 'code.forgejo.org/forgejo-helm',
      targetRevision: '15.0.3',
    },
    grafana: {
      chart: 'grafana-operator',
      repoURL: 'ghcr.io/grafana/helm-charts',
      targetRevision: 'v5.20.0',
    },
    flannel: {
      chart: 'flannel',
      repoURL: 'https://flannel-io.github.io/flannel',
      targetRevision: 'v0.27.4',
    },
    metrics_server: {
      chart: 'metrics-server',
      repoURL: 'https://kubernetes-sigs.github.io/metrics-server',
      targetRevision: '3.13.0',
    },
    vault_unsealer: {
      chart: 'vault-unsealer',
      repoURL: 'ghcr.io/koskev/helm-charts',
      targetRevision: '0.3.4',
    },
    ingress_traefik: {
      chart: 'traefik',
      repoURL: 'https://traefik.github.io/charts',
      targetRevision: '37.4.0',
    },

  },
  container: {
    renovate: {
      image: 'renovate/renovate',
      tag: '42.39.1',
    },
    signal_bridge: {
      image: 'dock.mau.dev/mautrix/signal',
      tag: 'v0.2511.0',
    },
    whatsapp_bridge: {
      image: 'dock.mau.dev/mautrix/whatsapp',
      tag: 'v0.2511.0',
    },
    yqgo: {
      image: 'mikefarah/yq',
      tag: '4.49.2',
    },
    nginx: {
      image: 'nginx',
      tag: '1.25.4-alpine3.18',
    },
    synapse: {
      image: 'matrixdotorg/synapse',
      tag: 'v1.143.0',
    },
    navidrome: {
      image: 'ghcr.io/navidrome/navidrome',
      tag: '0.59.0',
    },
    mumble: {
      image: 'mumblevoip/mumble-server',
      tag: 'v1.5.857',
    },
    unbound: {
      image: 'ghcr.io/koskev/unbound',
      tag: '2025.03.01',
    },
    hass: {
      image: 'ghcr.io/home-assistant/home-assistant',
      tag: '2025.12.3',
    },
    grocy: {
      image: 'linuxserver/grocy',
      tag: 'v4.0.3-ls221',
    },
    jellyfin: {
      image: 'docker.io/jellyfin/jellyfin',
      tag: '10.11.4',
    },
    zigbee2mqtt: {
      image: 'koenkk/zigbee2mqtt',
      tag: '2.7.1',
    },
    esphome: {
      image: 'ghcr.io/esphome/esphome',
      tag: '2025.11.4',
    },
    chhoto: {
      image: 'sintan1729/chhoto-url',
      tag: '6.5.2',
    },
    nodered: {
      image: 'nodered/node-red',
      tag: '4.1.2-18',
    },
    pihole: {
      image: 'pihole/pihole',
      tag: '2025.11.1',
    },
    externaldns: {
      image: 'registry.k8s.io/external-dns/external-dns',
      tag: 'v0.20.0',
    },
    sanejs: {
      image: 'sbs20/scanservjs',
      tag: 'v3.0.4',
    },
    cups: {
      image: 'ydkn/cups',
      tag: 'latest',
    },
    syncthing: {
      image: 'syncthing/syncthing',
      tag: '2.0',
    },
    brouter_react: {
      image: 'ghcr.io/koskev/brouter-react',
      tag: '2025.09.08',
    },
    valkey: {
      image: 'valkey/valkey',
      tag: '8.1.5-alpine',
    },
    telegraf: {
      image: 'telegraf',
      tag: '1.37.0-alpine',
    },
    influxdb: {
      image: 'influxdb',
      tag: '2.7.12-alpine',
    },
    octoprint: {
      image: 'octoprint/octoprint',
      tag: '1.11.5',
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
      tag: '2.20.1',
    },
    ecs: {
      image: 'forgejo.kokev.de/kevin/ecs-automation',
      tag: 'latest',
    },
    fittrackee: {
      image: 'ghcr.io/samr1/fittrackee',
      tag: 'v1.0.3',
    },
    anubis: {
      image: 'ghcr.io/techarohq/anubis',
      tag: 'v1.23.0-pre2',
    },
  },
}
