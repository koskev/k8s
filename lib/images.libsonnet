{
  helm: {
    argocd: {
      chart: 'argo-cd',
      repoURL: 'https://argoproj.github.io/argo-helm',
      targetRevision: '10.18.2',
    },
    synapse: {
      chart: 'matrix-synapse',
      repoURL: 'https://ananace.gitlab.io/charts',
      targetRevision: '3.12.43',
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
      targetRevision: '2.15.0',
    },
    external_postgres_operator: {
      chart: 'ext-postgres-operator',
      repoURL: 'https://movetokube.github.io/postgres-operator',
      targetRevision: '3.0.0',
    },
    cnpg: {
      chart: 'cloudnative-pg',
      repoURL: 'https://cloudnative-pg.github.io/charts',
      targetRevision: '0.29.2',
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
      targetRevision: '0.30.7',
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
      targetRevision: '2.2.20',
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
      targetRevision: 'v0.28.11',
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
      targetRevision: '42.4.1',
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
      targetRevision: '3.10.0',
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
      tag: '44.254.1@sha256:42f31a79fd1dc7ce0a3e4da42a7e57a80443fd9a3401c5b2631d76bc8b4a40dd',
    },
    signal_bridge: {
      image: 'dock.mau.dev/mautrix/signal',
      tag: 'v0.2611.0@sha256:5e6e8f4a9b840e71484e330538a73994a8b31bc11a10054ef662971019bc2d2f',
    },
    whatsapp_bridge: {
      image: 'dock.mau.dev/mautrix/whatsapp',
      tag: 'v0.2611.0@sha256:0f44d561ea591072182ea99bebd463fa8acd0af8400eb3f9c88a90a8cc569805',
    },
    yqgo: {
      image: 'mikefarah/yq',
      tag: '4.54.3@sha256:7834187596ad56fd5a81436114e0b0b9dd54c91bb43946d1f7145b2be5f9c3d2',
    },
    nginx: {
      image: 'nginx',
      tag: '1.31.9-alpine@sha256:90b6bd2aec278b16b98221d64deb1d6d35d164567f507ab0716e6053878315aa',
    },
    synapse: {
      image: 'matrixdotorg/synapse',
      tag: 'v1.165.0@sha256:673b4223c81a7634fd07d832b939a58f97081cfdaae7cdd2d1664cdcf7611b62',
    },
    navidrome: {
      image: 'ghcr.io/navidrome/navidrome',
      tag: '0.64.2@sha256:38dc2727bfcfd5ede290f8ada114fc90368146f265ae4701ddddbcbe2a44ee52',
    },
    mumble: {
      image: 'mumblevoip/mumble-server',
      tag: 'v1.6.1001@sha256:5955fdc77ef9f34d078a21f4d109be36da2e52a986da750c731b86b724c76c32',
    },
    unbound: {
      image: 'ghcr.io/koskev/unbound',
      tag: '2026.04.19@sha256:32758478a926241d43ca8626546cef5f26257087cede9203282e37061cff9d99',
    },
    hass: {
      image: 'ghcr.io/home-assistant/home-assistant',
      tag: '2026.11.2@sha256:493a07e8f6530fc640223f4a0a5248f20a61ca2f718bb1d31efbf08a2c5ea28f',
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
      tag: '2.14.3@sha256:fb4a6b0f6868ad1cd6a9996479802b2420e599c3463b62bbff8c8cd9a908f43a',
    },
    esphome: {
      image: 'ghcr.io/esphome/esphome',
      tag: '2026.11.0@sha256:6351ae811202064bb3eb49dde982609b47acd523103a66d7b9c5c1431beea055',
    },
    chhoto: {
      image: 'sintan1729/chhoto-url',
      tag: '7.11.6@sha256:3f66a2e79ac970c84df6d2ea9523075eb308ee17ca9464b899316ad3d17b0033',
    },
    nodered: {
      image: 'nodered/node-red',
      tag: '4.1.18-18@sha256:14fcb3021503e255b17659599c0938b90101b9e9b23c0a692050b1e0b0b69012',
    },
    pihole: {
      image: 'pihole/pihole',
      tag: '2026.11.0@sha256:66c798d79a95c2691f280329c3611dba1746117c61c9f331907ca35a06a52778',
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
      tag: 'latest@sha256:0fb15b7d94825ee28bc4cc10ce44d94ba0bbb6a4bfa35f71bfd26aa46c4120da',
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
      tag: '8.1.12-alpine@sha256:9971099af41c36e887aabdfe22b80c0fe45df949163dfc9cb434febc57cfc3fc',
    },
    telegraf: {
      image: 'telegraf',
      tag: '1.40.3-alpine@sha256:10fe8c974752c8088858f012cb47b71f5bb67c5695829be56d87dfbf8e0092b8',
    },
    influxdb: {
      image: 'influxdb',
      tag: '2.8.0-alpine@sha256:c689db1a67ff7dc9b95b54de37cdc6ef55c93a89f4b5d93c01898be9cfddbf2f',
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
      tag: '3.5.1@sha256:8508853b8a0f8394074260957d0be186c8c64f346973b24a7583de4580f306b9',
    },
    ecs: {
      image: 'forgejo.kokev.de/kevin/ecs-automation',
      tag: 'latest@sha256:9205773e6564bcec0afef292d8499622e5d7e10ff6cc40ddfcaf819a4ecaddf1',
    },
    fittrackee: {
      image: 'ghcr.io/samr1/fittrackee',
      tag: 'v1.3.8@sha256:b17f9d4c01d0987ed2080ee48be4f7fff57a812fbc8d490a99cb44df82cc20a3',
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
      tag: '2.8.46@sha256:cd91190ab3beb7e678ee372f87dfceed44fac6ade9d17f7a686c4254eb79667a',
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
      tag: '3.9.0@sha256:79cd9c66c990a82944514e3e82d5be5987f21eda96cb37a378ed1484043716fc',
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
