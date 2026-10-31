{
  helm: {
    argocd: {
      chart: 'argo-cd',
      repoURL: 'https://argoproj.github.io/argo-helm',
      targetRevision: '10.11.6',
    },
    synapse: {
      chart: 'matrix-synapse',
      repoURL: 'https://ananace.gitlab.io/charts',
      targetRevision: '3.12.41',
    },
    kube_prometheus: {
      chart: 'kube-prometheus-stack',
      repoURL: 'https://prometheus-community.github.io/helm-charts',
      targetRevision: '90.2.0',
    },
    cert_manager: {
      chart: 'cert-manager',
      repoURL: 'https://charts.jetstack.io',
      targetRevision: 'v1.21.3',
    },
    cert_manager_desec_http: {
      chart: 'cert-manager-webhook-desec-http',
      repoURL: 'ghcr.io/koskev/charts',
      targetRevision: '1.1.0',
    },
    external_secrets: {
      chart: 'external-secrets',
      repoURL: 'https://charts.external-secrets.io',
      targetRevision: '2.14.0',
    },
    external_postgres_operator: {
      chart: 'ext-postgres-operator',
      repoURL: 'https://movetokube.github.io/postgres-operator',
      targetRevision: '3.0.0',
    },
    cnpg: {
      chart: 'cloudnative-pg',
      repoURL: 'https://cloudnative-pg.github.io/charts',
      targetRevision: '0.29.1',
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
      targetRevision: '0.30.6',
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
      targetRevision: '2.2.19',
    },
    trivy: {
      chart: 'trivy-operator',
      repoURL: 'https://aquasecurity.github.io/helm-charts/',
      targetRevision: '0.38.1',
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
      targetRevision: '41.7.1',
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
    kyverno: {
      chart: 'kyverno',
      repoURL: 'https://kyverno.github.io/kyverno',
      targetRevision: '3.9.2',
    },
    kyvero_ui: {
      chart: 'policy-reporter',
      repoURL: 'ghcr.io/kyverno/charts',
      targetRevision: '3.9.1',
    },
  },
  container: {
    renovate: {
      image: 'renovate/renovate',
      tag: '44.198.2@sha256:4132c8c1b0051ade1429c2e5f439569b361b4527216a1c184ff4ba58a2d1fd7e',
    },
    signal_bridge: {
      image: 'dock.mau.dev/mautrix/signal',
      tag: 'v0.2610.0@sha256:39afa721aa69472b2e91c75bd7d81a739e47f7e480fc0ff5ac8247af28eb2d0a',
    },
    whatsapp_bridge: {
      image: 'dock.mau.dev/mautrix/whatsapp',
      tag: 'v0.2610.0@sha256:c807054cb015d0f5c90d20d85aac216d062b4a6f4ae834b931fd5e7f03e27391',
    },
    yqgo: {
      image: 'mikefarah/yq',
      tag: '4.54.1@sha256:4b3d9475d65571d28cbb19544d3820ec2945e4c8b2f18279394282b8dc3a592e',
    },
    nginx: {
      image: 'nginx',
      tag: '1.25.4-alpine3.18@sha256:31bad00311cb5eeb8a6648beadcf67277a175da89989f14727420a80e2e76742',
    },
    synapse: {
      image: 'matrixdotorg/synapse',
      tag: 'v1.164.1@sha256:fa4aa980f279bcf26d4e7ecc2a2c9a701c73f2ebe8841da9bdcf3b2fdf693d75',
    },
    navidrome: {
      image: 'ghcr.io/navidrome/navidrome',
      tag: '0.64.2@sha256:38dc2727bfcfd5ede290f8ada114fc90368146f265ae4701ddddbcbe2a44ee52',
    },
    mumble: {
      image: 'mumblevoip/mumble-server',
      tag: 'v1.6.870@sha256:3da59810c07528a344f6bcd4b43338f69e8c56d26678456253bc3d9639487596',
    },
    unbound: {
      image: 'ghcr.io/koskev/unbound',
      tag: '2026.04.19@sha256:32758478a926241d43ca8626546cef5f26257087cede9203282e37061cff9d99',
    },
    hass: {
      image: 'ghcr.io/home-assistant/home-assistant',
      tag: '2026.10.4@sha256:23f4dfbb69ce76315dbc4de7915504f1c2dcecd7ca2648113a493a385972e133',
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
      tag: '2.14.2@sha256:addbfb08fcef2e4477de1535636118241e10d13e898fbe4d9faba8a4d7396311',
    },
    esphome: {
      image: 'ghcr.io/esphome/esphome',
      tag: '2026.10.1@sha256:eab8cd6b4f51077c3883af4cedc058280ddc34a94f3b2ffee23e9d2cd5f1db64',
    },
    chhoto: {
      image: 'sintan1729/chhoto-url',
      tag: '7.10.5@sha256:f9c35c7bd0f7f94ea764764ea6ff8fea7a5beb387716e5714faf1cd361206252',
    },
    nodered: {
      image: 'nodered/node-red',
      tag: '4.1.17-18@sha256:161239fa8c3ebc2e6c5c831eb536960d4bdec677c7117a738d89a106cc2755a6',
    },
    pihole: {
      image: 'pihole/pihole',
      tag: '2026.10.0@sha256:d34134716fc32038b052a8674c7c6879e0ff21f0e6d8af345166fffa2c27c113',
    },
    externaldns: {
      image: 'registry.k8s.io/external-dns/external-dns',
      tag: 'v0.24.0@sha256:a80a146d2540fa138565e404f0625157271071a06093021f27ae19d8316d10f9',
    },
    sanejs: {
      image: 'sbs20/scanservjs',
      tag: '3.3.0@sha256:7a0c0dfd546f483c2fe8c5ccdcd8fc96301a41fb0d4309747fc8268108defb6a',
    },
    cups: {
      image: 'ydkn/cups',
      tag: 'latest@sha256:7e44118d11dafca1a4556f40e8fe5f19a09df6e40a7a58ddb1b69a8c09b8759b',
    },
    syncthing: {
      image: 'syncthing/syncthing',
      tag: '2.1.7@sha256:2b71da7c0d0a91a6ae5285ad079226fecc0a365d08b27720e1f7037b018f7546',
    },
    brouter_react: {
      image: 'ghcr.io/koskev/brouter-react',
      tag: '2025.09.08@sha256:f6f80910ee63be60386496a8951fa30cca23ecf2c2f269731c14cc86ec25dda6',
    },
    valkey: {
      image: 'valkey/valkey',
      tag: '8.1.11-alpine@sha256:2602ace2be6569bc2bbb06f873776516ab9089821525be34f4305c67eb9db02a',
    },
    telegraf: {
      image: 'telegraf',
      tag: '1.40.2-alpine@sha256:4a62bd294bf2f4c1e3781194fe7b625b7e527244eeb31afd5758227914a16229',
    },
    influxdb: {
      image: 'influxdb',
      tag: '2.8.0-alpine@sha256:320f19f0b160af31711e01779bb48202e205afcf5c293d402e8d6788dff85eb3',
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
      tag: '3.4.1@sha256:1a08d8dfc2b51a08de09652dd86ad4d0c611c362382f944533ad38b73125fbc4',
    },
    ecs: {
      image: 'forgejo.kokev.de/kevin/ecs-automation',
      tag: 'latest@sha256:9205773e6564bcec0afef292d8499622e5d7e10ff6cc40ddfcaf819a4ecaddf1',
    },
    fittrackee: {
      image: 'ghcr.io/samr1/fittrackee',
      tag: 'v1.3.6@sha256:d452fd42d2a0255e33a9838673496f53f3aa44a43316622edda6298d19a6cc30',
    },
    anubis: {
      image: 'ghcr.io/techarohq/anubis',
      tag: 'v1.28.0-pre2@sha256:a407747e4edebc91dbd4ec3341e724c44aee5f5ed25935c085a5d287b642328b',
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
      tag: '2.8.33@sha256:0ac05bbdc4a812269a5b6dc59f151287ff3c7ee559ce0029bf79e5c070cea6eb',
    },
    borgmatic: {
      image: 'ghcr.io/borgmatic-collective/borgmatic',
      tag: '2.2.0@sha256:14b70ae1354f9c1fbd5b790c372b948bc25cb00d45d0e6803916bb83cff6fe3c',
    },
    postgres: {
      image: 'ghcr.io/cloudnative-pg/postgresql',
      tag: '17.11@sha256:70664ebcfa1100361b5bdc28bbf06fdbe08db2dc4ad7bd14de33c5e05fe8ea8e',
    },
    desec_http: {
      image: 'ghcr.io/koskev/cert-manager-webhook-desec-http',
      tag: 'v1.1.0@sha256:31105d46208e3ca5965078d22f6baacbf86f85f4b4b50c95d055c197c61ca20b',
    },
    syncyomi: {
      image: 'ghcr.io/syncyomi/syncyomi',
      tag: 'v1.7.4@sha256:7d51b3fa619e6913ca175b9f3b2d1cf8d96c87dd7a51c521f97667d5a07bead5',
    },
    bookorbit: {
      image: 'ghcr.io/bookorbit/bookorbit',
      tag: '3.6.0@sha256:bbb5da52e96dbbff1dd36f55454f9845e6cde264b4b3428a3ea783124a4ca62e',
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
      version: '3.4.0',
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
    bookorbit: {
      source: 'koskev/bookorbit',
      version: '~> 3.0.0',
    },
  },
}
