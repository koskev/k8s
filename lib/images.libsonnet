{
  helm: {
    argocd: {
      chart: 'argo-cd',
      repoURL: 'https://argoproj.github.io/argo-helm',
      targetRevision: '9.4.17',
    },
    synapse: {
      chart: 'matrix-synapse',
      repoURL: 'https://ananace.gitlab.io/charts',
      targetRevision: '3.12.24',
    },
    kube_prometheus: {
      chart: 'kube-prometheus-stack',
      repoURL: 'https://prometheus-community.github.io/helm-charts',
      targetRevision: '82.18.0',
    },
    cert_manager: {
      chart: 'cert-manager',
      repoURL: 'https://charts.jetstack.io',
      targetRevision: 'v1.20.1',
    },
    external_secrets: {
      chart: 'external-secrets',
      repoURL: 'https://charts.external-secrets.io',
      targetRevision: '2.2.0',
    },
    external_postgres_operator: {
      chart: 'ext-postgres-operator',
      repoURL: 'https://movetokube.github.io/postgres-operator',
      targetRevision: '3.0.0',
    },
    cnpg: {
      chart: 'cloudnative-pg',
      repoURL: 'https://cloudnative-pg.github.io/charts',
      targetRevision: '0.28.0',
    },
    emqx: {
      chart: 'emqx',
      repoURL: 'https://repos.emqx.io/charts',
      targetRevision: '5.8.9',
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
      targetRevision: '0.26.2',
    },
    ping_exporter: {
      chart: 'ping-exporter',
      repoURL: 'https://czerwonk.github.io/ping_exporter',
      targetRevision: '1.2.0',
    },
    brouter: {
      chart: 'brouter',
      repoURL: 'https://koskev.github.io/brouter-chart',
      targetRevision: '0.1.23',
    },
    reloader: {
      chart: 'reloader',
      repoURL: 'https://stakater.github.io/stakater-charts',
      targetRevision: '2.2.9',
    },
    ingress_nginx: {
      chart: 'ingress-nginx',
      repoURL: 'https://kubernetes.github.io/ingress-nginx',
      targetRevision: '4.15.1',
    },
    trivy: {
      chart: 'trivy-operator',
      repoURL: 'https://aquasecurity.github.io/helm-charts/',
      targetRevision: '0.32.1',
    },
    forgejo: {
      chart: 'forgejo',
      repoURL: 'code.forgejo.org/forgejo-helm',
      targetRevision: '16.2.1',
    },
    grafana: {
      chart: 'grafana-operator',
      repoURL: 'ghcr.io/grafana/helm-charts',
      targetRevision: '5.22.2',
    },
    flannel: {
      chart: 'flannel',
      repoURL: 'https://flannel-io.github.io/flannel',
      targetRevision: 'v0.28.2',
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
      targetRevision: '39.0.7',
    },
    immich: {
      chart: 'immich',
      repoURL: 'ghcr.io/immich-app/immich-charts',
      targetRevision: '0.11.1',
    },
  },
  container: {
    renovate: {
      image: 'renovate/renovate',
      tag: '43.104.6',
    },
    signal_bridge: {
      image: 'dock.mau.dev/mautrix/signal',
      tag: 'v26.02.2',
    },
    whatsapp_bridge: {
      image: 'dock.mau.dev/mautrix/whatsapp',
      tag: 'v0.2603.0',
    },
    yqgo: {
      image: 'mikefarah/yq',
      tag: '4.52.5',
    },
    nginx: {
      image: 'nginx',
      tag: '1.25.4-alpine3.18',
    },
    synapse: {
      image: 'matrixdotorg/synapse',
      tag: 'v1.150.0',
    },
    navidrome: {
      image: 'ghcr.io/navidrome/navidrome',
      tag: '0.61.1',
    },
    mumble: {
      image: 'mumblevoip/mumble-server',
      tag: 'v1.6.870',
    },
    unbound: {
      image: 'ghcr.io/koskev/unbound',
      tag: '2026.01.17',
    },
    hass: {
      image: 'ghcr.io/home-assistant/home-assistant',
      tag: '2026.4.1',
    },
    grocy: {
      image: 'linuxserver/grocy',
      tag: 'v4.0.3-ls221',
    },
    jellyfin: {
      image: 'docker.io/jellyfin/jellyfin',
      tag: '10.11.8',
    },
    zigbee2mqtt: {
      image: 'koenkk/zigbee2mqtt',
      tag: '2.9.2',
    },
    esphome: {
      image: 'ghcr.io/esphome/esphome',
      tag: '2026.3.2',
    },
    chhoto: {
      image: 'sintan1729/chhoto-url',
      tag: '6.5.9',
    },
    nodered: {
      image: 'nodered/node-red',
      tag: '4.1.8-18',
    },
    pihole: {
      image: 'pihole/pihole',
      tag: '2026.04.0',
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
      tag: '8.1.6-alpine',
    },
    telegraf: {
      image: 'telegraf',
      tag: '1.38.2-alpine',
    },
    influxdb: {
      image: 'influxdb',
      tag: '2.8.0-alpine',
    },
    octoprint: {
      image: 'octoprint/octoprint',
      tag: '1.11.7',
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
      tag: '2.20.13',
    },
    ecs: {
      image: 'forgejo.kokev.de/kevin/ecs-automation',
      tag: 'latest',
    },
    fittrackee: {
      image: 'ghcr.io/samr1/fittrackee',
      tag: 'v1.2.1',
    },
    anubis: {
      image: 'ghcr.io/techarohq/anubis',
      tag: 'v1.23.0-pre2',
    },
    cnpg_vectorchord: {
      image: 'ghcr.io/tensorchord/cloudnative-vectorchord',
      tag: '17.6-0.5.3',
    },
    immich: {
      image: 'ghcr.io/immich-app/immich-server',
      tag: 'v2.6.3',
    },
    borg_server: {
      image: 'horaceworblehat/borg-server',
      tag: '2.8.5',
    },
    borgmatic: {
      image: 'ghcr.io/borgmatic-collective/borgmatic',
      tag: '2.1.3',
    },
    postgres: {
      image: 'postgres',
      tag: '17.9-alpine',
    },
  },
}
