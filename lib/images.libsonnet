{
  helm: {
    argocd: {
      chart: 'argo-cd',
      repoURL: 'https://argoproj.github.io/argo-helm',
      targetRevision: '10.9.0',
    },
    synapse: {
      chart: 'matrix-synapse',
      repoURL: 'https://ananace.gitlab.io/charts',
      targetRevision: '3.12.36',
    },
    kube_prometheus: {
      chart: 'kube-prometheus-stack',
      repoURL: 'https://prometheus-community.github.io/helm-charts',
      targetRevision: '90.1.1',
    },
    cert_manager: {
      chart: 'cert-manager',
      repoURL: 'https://charts.jetstack.io',
      targetRevision: 'v1.21.2',
    },
    cert_manager_desec_http: {
      chart: 'cert-manager-webhook-desec-http',
      repoURL: 'ghcr.io/koskev/charts',
      targetRevision: '1.1.0',
    },
    external_secrets: {
      chart: 'external-secrets',
      repoURL: 'https://charts.external-secrets.io',
      targetRevision: '2.10.0',
    },
    external_postgres_operator: {
      chart: 'ext-postgres-operator',
      repoURL: 'https://movetokube.github.io/postgres-operator',
      targetRevision: '3.0.0',
    },
    cnpg: {
      chart: 'cloudnative-pg',
      repoURL: 'https://cloudnative-pg.github.io/charts',
      targetRevision: '0.29.0',
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
      targetRevision: '0.16.1',
    },
    openbao: {
      chart: 'openbao',
      repoURL: 'https://openbao.github.io/openbao-helm',
      targetRevision: '0.29.4',
    },
    ping_exporter: {
      chart: 'ping-exporter',
      repoURL: 'https://czerwonk.github.io/ping_exporter',
      targetRevision: '1.2.1',
    },
    brouter: {
      chart: 'brouter',
      repoURL: 'https://koskev.github.io/brouter-chart',
      targetRevision: '0.1.23',
    },
    reloader: {
      chart: 'reloader',
      repoURL: 'https://stakater.github.io/stakater-charts',
      targetRevision: '2.2.17',
    },
    trivy: {
      chart: 'trivy-operator',
      repoURL: 'https://aquasecurity.github.io/helm-charts/',
      targetRevision: '0.36.0',
    },
    forgejo: {
      chart: 'forgejo',
      repoURL: 'code.forgejo.org/forgejo-helm',
      targetRevision: '17.1.1',
    },
    grafana: {
      chart: 'grafana-operator',
      repoURL: 'ghcr.io/grafana/helm-charts',
      targetRevision: '5.24.0',
    },
    flannel: {
      chart: 'flannel',
      repoURL: 'https://flannel-io.github.io/flannel',
      targetRevision: 'v0.28.9',
    },
    metrics_server: {
      chart: 'metrics-server',
      repoURL: 'https://kubernetes-sigs.github.io/metrics-server',
      targetRevision: '3.14.0',
    },
    vault_unsealer: {
      chart: 'vault-unsealer',
      repoURL: 'ghcr.io/koskev/helm-charts',
      targetRevision: '0.3.4',
    },
    ingress_traefik: {
      chart: 'traefik',
      repoURL: 'https://traefik.github.io/charts',
      targetRevision: '41.5.0',
    },
    immich: {
      chart: 'immich',
      repoURL: 'ghcr.io/immich-app/immich-charts',
      targetRevision: '0.12.0',
    },
    authelia: {
      chart: 'authelia',
      repoURL: 'https://charts.authelia.com',
      targetRevision: '0.11.22',
    },
  },
  container: {
    renovate: {
      image: 'renovate/renovate',
      tag: '44.82.3@sha256:d8fa5cceb1c68315c235559c981b5486db0165fd25e186a0cb6125f81578be87',
    },
    signal_bridge: {
      image: 'dock.mau.dev/mautrix/signal',
      tag: 'v26.02.2@sha256:577e37ad5f41bfd72a236e6ab4a1b1b2d4f960890ff0767ed3b0b7cbb6817c29',
    },
    whatsapp_bridge: {
      image: 'dock.mau.dev/mautrix/whatsapp',
      tag: 'v0.2608.0@sha256:86237c4d0d33a1e08910b1f820e6c561f9b8e21dc26943caf266e01021087002',
    },
    yqgo: {
      image: 'mikefarah/yq',
      tag: '4.53.6@sha256:cfc4eee658595834ef304eadb0c3ea721f3b7cb6404ad8b7cb909cc5b5145b23',
    },
    nginx: {
      image: 'nginx',
      tag: '1.25.4-alpine3.18@sha256:31bad00311cb5eeb8a6648beadcf67277a175da89989f14727420a80e2e76742',
    },
    synapse: {
      image: 'matrixdotorg/synapse',
      tag: 'v1.160.0@sha256:78de1d10bef02e375f861d1cc99f8bedd9381d4f9083ea8b2c22a053477b205f',
    },
    navidrome: {
      image: 'ghcr.io/navidrome/navidrome',
      tag: '0.63.2@sha256:9012939114fbb1bb641b81cf96dec5ded15f0aafefe8d47a511d7cb919658e40',
    },
    mumble: {
      image: 'mumblevoip/mumble-server',
      tag: 'v1.6.870@sha256:02fd613b6a353562e3a4e979503fd3e1320210cff4454218a72171e96fa1bf15',
    },
    unbound: {
      image: 'ghcr.io/koskev/unbound',
      tag: '2026.04.19@sha256:32758478a926241d43ca8626546cef5f26257087cede9203282e37061cff9d99',
    },
    hass: {
      image: 'ghcr.io/home-assistant/home-assistant',
      tag: '2026.9.2@sha256:a1bc133af84ee6505fe2c266d9805b7c75b780dfdc188edfee3b11e8f3cd8efe',
    },
    grocy: {
      image: 'linuxserver/grocy',
      tag: 'v4.0.3-ls221@sha256:96ab10ee33a40261f57c2622ad85434289cdf07cfa19e8bab4e1fc76f420d66f',
    },
    jellyfin: {
      image: 'docker.io/jellyfin/jellyfin',
      tag: '10.11.11@sha256:aefb67e6a7ff1debdd154a78a7bbb780fd0c873d8639210a7f6a2016ad2b35db',
    },
    zigbee2mqtt: {
      image: 'koenkk/zigbee2mqtt',
      tag: '2.14.1@sha256:fef0de769dcd04c27b3a6d277b61046eb96284bdd4198dcb1687c3a01b3020f3',
    },
    esphome: {
      image: 'ghcr.io/esphome/esphome',
      tag: '2026.8.2@sha256:000c5ee5ee96d57208ee48f2d255f73713236f183959803e64cd0b00c39b277b',
    },
    chhoto: {
      image: 'sintan1729/chhoto-url',
      tag: '7.5.5@sha256:fdeea6d7a29e931c43554e01b50faade6e064573df72ae6d500273134a0c5967',
    },
    nodered: {
      image: 'nodered/node-red',
      tag: '4.1.15-18@sha256:ca1ffba2706b367c23b9b5a8701433df2ac06fccf68cee5193572d4061d7bbc1',
    },
    pihole: {
      image: 'pihole/pihole',
      tag: '2026.07.2@sha256:f7d1be836e3bc608b56d82fc9904f5a831cdfbc0dc9c6d58f94e4c985c70038b',
    },
    externaldns: {
      image: 'registry.k8s.io/external-dns/external-dns',
      tag: 'v0.22.0@sha256:5fdcaf7deb5c158f93a1fc6fe169cdff4cfb9ae0172bee1a90ab0ef74fb9c9cf',
    },
    sanejs: {
      image: 'sbs20/scanservjs',
      tag: '3.3.0@sha256:7a0c0dfd546f483c2fe8c5ccdcd8fc96301a41fb0d4309747fc8268108defb6a',
    },
    cups: {
      image: 'ydkn/cups',
      tag: 'latest@sha256:76eb4fcc9bfce7573787938d9257cfced5dd21064559eae4ce112aa6a9d13ac2',
    },
    syncthing: {
      image: 'syncthing/syncthing',
      tag: '2.1.5@sha256:397aa00b92b48d65540ea3ae3cbf271b87bdccbe07a0b7bd7d2debc3a7b29138',
    },
    brouter_react: {
      image: 'ghcr.io/koskev/brouter-react',
      tag: '2025.09.08@sha256:f6f80910ee63be60386496a8951fa30cca23ecf2c2f269731c14cc86ec25dda6',
    },
    valkey: {
      image: 'valkey/valkey',
      tag: '8.1.10-alpine@sha256:d2e18f3410b6f616de1417f570fa55261af2898b9c5b2cfb6781ce2373ea43d1',
    },
    telegraf: {
      image: 'telegraf',
      tag: '1.40.0-alpine@sha256:e2f55b0afaa32987b5610606437825c998066b3ce01a2eaa98c16beecfeb240d',
    },
    influxdb: {
      image: 'influxdb',
      tag: '2.8.0-alpine@sha256:0793da69d60d1906f925363f6fc9f013697af0412d4493d5e1cfc631b3378f56',
    },
    octoprint: {
      image: 'octoprint/octoprint',
      tag: '1.11.8@sha256:5ea0181e476597faa2800c991af4ce16903005f46b4c16666a4080ad606310bb',
    },
    wireguard: {
      image: 'lscr.io/linuxserver/wireguard',
      tag: '1.0.20210914-r4-ls68@sha256:c095b08123345cefa1a8a589a417c56690c046ba925d292f4657f3fefcce1dfd',
    },
    papermc: {
      image: 'ghcr.io/koskev/lazypaper',
      tag: '2025.03.17@sha256:893f3032a57c4947ad0b03283442a781e2c154ff5692cdafdfd696504687c854',
    },
    paperless: {
      image: 'ghcr.io/paperless-ngx/paperless-ngx',
      tag: '2.20.15@sha256:6c86cad803970ea782683a8e80e7403444c5bf3cf70de63b4d3c8e87500db92f',
    },
    ecs: {
      image: 'forgejo.kokev.de/kevin/ecs-automation',
      tag: 'latest@sha256:9205773e6564bcec0afef292d8499622e5d7e10ff6cc40ddfcaf819a4ecaddf1',
    },
    fittrackee: {
      image: 'ghcr.io/samr1/fittrackee',
      tag: 'v1.3.5@sha256:a832258dc564827a1944ee6d5a60befff086bdc7ace8761104c81f1a4a384c03',
    },
    anubis: {
      image: 'ghcr.io/techarohq/anubis',
      tag: 'v1.27.0-pre2@sha256:cd1ba0eae75d602ef1a1ec6bf65af8dffbad0db95e2dcda937b95c51c0149736',
    },
    cnpg_vectorchord: {
      image: 'ghcr.io/tensorchord/cloudnative-vectorchord',
      tag: '17.6-0.5.3@sha256:ef3bf2e3abe76c3939b994afbde46cb9f24d2fbdf7ff2026a03aefa84d9a2a23',
    },
    immich: {
      image: 'ghcr.io/immich-app/immich-server',
      tag: 'v2.7.5@sha256:c15bff75068effb03f4355997d03dc7e0fc58720c2b54ad6f7f10d1bc57efaa5',
    },
    immich_machine_learning: {
      image: 'ghcr.io/immich-app/immich-machine-learning',
      tag: 'v2.7.5@sha256:a2501141440f10516d329fdfba2c68082e19eb9ba6016c061ac80d23beadf7f3',
    },
    borg_server: {
      image: 'horaceworblehat/borg-server',
      tag: '2.8.8@sha256:f112bb115ee39d560d67200777ebaecb359173539ddb9c39b514f77cb8b0b394',
    },
    borgmatic: {
      image: 'ghcr.io/borgmatic-collective/borgmatic',
      tag: '2.1.7@sha256:6d039f98e58a58cea287007608c3d5993ce65f8e248ff91cd3de4246c648c123',
    },
    postgres: {
      image: 'ghcr.io/cloudnative-pg/postgresql',
      tag: '17.11@sha256:70664ebcfa1100361b5bdc28bbf06fdbe08db2dc4ad7bd14de33c5e05fe8ea8e',
    },
    desec_http: {
      image: 'ghcr.io/koskev/cert-manager-webhook-desec-http',
      tag: 'v1.1.0@sha256:31105d46208e3ca5965078d22f6baacbf86f85f4b4b50c95d055c197c61ca20b',
    },
  },
  tf: {
    sops: {
      source: 'carlpett/sops',
      version: '~> 1.0',
    },
    vault: {
      source: 'hashicorp/vault',
      version: '~> 5.11.0',
    },
    kubernetes: {
      source: 'hashicorp/kubernetes',
      version: '3.2.1',
    },
    desec: {
      source: 'timofurrer/desec',
      version: '0.6.3',
    },
    helm: {
      source: 'hashicorp/helm',
      version: '3.3.0',
    },
    kubectl: {
      source: 'gavinbunney/kubectl',
      version: '>= 1.7.0',
    },
  },
}
