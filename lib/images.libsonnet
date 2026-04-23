{
  helm: {
    argocd: {
      chart: 'argo-cd',
      repoURL: 'https://argoproj.github.io/argo-helm',
      targetRevision: '9.5.2',
    },
    synapse: {
      chart: 'matrix-synapse',
      repoURL: 'https://ananace.gitlab.io/charts',
      targetRevision: '3.12.25',
    },
    kube_prometheus: {
      chart: 'kube-prometheus-stack',
      repoURL: 'https://prometheus-community.github.io/helm-charts',
      targetRevision: '83.7.0',
    },
    cert_manager: {
      chart: 'cert-manager',
      repoURL: 'https://charts.jetstack.io',
      targetRevision: 'v1.20.2',
    },
    external_secrets: {
      chart: 'external-secrets',
      repoURL: 'https://charts.external-secrets.io',
      targetRevision: '2.3.0',
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
      targetRevision: '0.27.2',
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
      targetRevision: '2.2.11',
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
      targetRevision: '17.0.0',
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
      targetRevision: '39.0.8',
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
      tag: '43.139.8@sha256:2041882ffdc6a9ba55e9637075a83882d75f94f429bbd7c6aca4f2aa8732e106',
    },
    signal_bridge: {
      image: 'dock.mau.dev/mautrix/signal',
      tag: 'v26.02.2@sha256:577e37ad5f41bfd72a236e6ab4a1b1b2d4f960890ff0767ed3b0b7cbb6817c29',
    },
    whatsapp_bridge: {
      image: 'dock.mau.dev/mautrix/whatsapp',
      tag: 'v0.2604.0@sha256:9f28c04c746af9fe8e93163489dae0f4191626e2ca02a9302df62afbeefc9eba',
    },
    yqgo: {
      image: 'mikefarah/yq',
      tag: '4.53.2@sha256:0cb4a78491b6e62ee8a9bf4fbeacbd15b5013d19bc420591b05383a696315e60',
    },
    nginx: {
      image: 'nginx',
      tag: '1.25.4-alpine3.18@sha256:31bad00311cb5eeb8a6648beadcf67277a175da89989f14727420a80e2e76742',
    },
    synapse: {
      image: 'matrixdotorg/synapse',
      tag: 'v1.151.0@sha256:184dc8757daef019b511e7f96fc6e5edfb880fd074d8cf702c7e3aa899d188c8',
    },
    navidrome: {
      image: 'ghcr.io/navidrome/navidrome',
      tag: '0.61.2@sha256:9fa40b3d8dec43ceb2213d1fa551da3dcfef6ac6d19c2e534efb92527c2bafd2',
    },
    mumble: {
      image: 'mumblevoip/mumble-server',
      tag: 'v1.6.870@sha256:b9fb72d772eb52b5c7d4c402054c183886ecde07efc59c829c53001542365a81',
    },
    unbound: {
      image: 'ghcr.io/koskev/unbound',
      tag: '2026.04.19@sha256:32758478a926241d43ca8626546cef5f26257087cede9203282e37061cff9d99',
    },
    hass: {
      image: 'ghcr.io/home-assistant/home-assistant',
      tag: '2026.4.3@sha256:ae0800c81fea16bc1241ce03bddb9c6260566e90f58b09d3e5a629e4f68bdc0b',
    },
    grocy: {
      image: 'linuxserver/grocy',
      tag: 'v4.0.3-ls221@sha256:96ab10ee33a40261f57c2622ad85434289cdf07cfa19e8bab4e1fc76f420d66f',
    },
    jellyfin: {
      image: 'docker.io/jellyfin/jellyfin',
      tag: '10.11.8@sha256:1694ff069f0c9dafb283c36765175606866769f5d72f2ed56b6a0f1be922fc37',
    },
    zigbee2mqtt: {
      image: 'koenkk/zigbee2mqtt',
      tag: '2.9.2@sha256:2a21bbf7a664a149024bbe1f776e3151f28ed9db15948270dcbffb89544a41f0',
    },
    esphome: {
      image: 'ghcr.io/esphome/esphome',
      tag: '2026.4.2@sha256:a2784bc539dcf7529241bfe4425d645f1076031f9bf9ce07f5d59d1c45e9ff22',
    },
    chhoto: {
      image: 'sintan1729/chhoto-url',
      tag: '6.6.0@sha256:d6474c2268ca63878af04ab1745ca12d2ddb866ca649926ef718bedd2c5c64ed',
    },
    nodered: {
      image: 'nodered/node-red',
      tag: '4.1.8-18@sha256:d7a40bd2a1ae8078a8223d5c8b3cb3ba60e64d8d7ced583ae00f46ddc60f1dd7',
    },
    pihole: {
      image: 'pihole/pihole',
      tag: '2026.04.0@sha256:300cc8f9e966b00440358aafef21f91b32dfe8887e8bd9a6193ed1c4328655d4',
    },
    externaldns: {
      image: 'registry.k8s.io/external-dns/external-dns',
      tag: 'v0.20.0@sha256:ddc7f4212ed09a21024deb1f470a05240837712e74e4b9f6d1f2632ff10672e7',
    },
    sanejs: {
      image: 'sbs20/scanservjs',
      tag: 'v3.0.4@sha256:e42263444a8dd5d533ead7d9eb2ef5fd9ca7a4a80569a6f9c14b7a3c21b9c7ca',
    },
    cups: {
      image: 'ydkn/cups',
      tag: 'latest@sha256:76eb4fcc9bfce7573787938d9257cfced5dd21064559eae4ce112aa6a9d13ac2',
    },
    syncthing: {
      image: 'syncthing/syncthing',
      tag: '2.0@sha256:4a961394ca471f4e48f31ad2cef50697e502c8799e2e98477a1c3844e0c5bc54',
    },
    brouter_react: {
      image: 'ghcr.io/koskev/brouter-react',
      tag: '2025.09.08@sha256:f6f80910ee63be60386496a8951fa30cca23ecf2c2f269731c14cc86ec25dda6',
    },
    valkey: {
      image: 'valkey/valkey',
      tag: '8.1.6-alpine@sha256:1cb6b20b70d927560cc4cc5397b5f045e74aa603ff7696274778880bb6fadc75',
    },
    telegraf: {
      image: 'telegraf',
      tag: '1.38.3-alpine@sha256:d96a87891f25955c267ff09c866c749ba6e5a3f00b922af7d327553c8eaaec59',
    },
    influxdb: {
      image: 'influxdb',
      tag: '2.8.0-alpine@sha256:4f90d40c00193d91889ad872c39a586a011db4ac4d1a766e248d9cbbcc6cec3e',
    },
    octoprint: {
      image: 'octoprint/octoprint',
      tag: '1.11.7@sha256:49bea4ebfd0cefa9289f058574e7eda6d2de201f1b74309e0c10019e5ec58f04',
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
      tag: '2.20.14@sha256:b89f83345532cfba72690185257eb6c4f92fc2a782332a42abe19c07b7a6595f',
    },
    ecs: {
      image: 'forgejo.kokev.de/kevin/ecs-automation',
      tag: 'latest@sha256:9205773e6564bcec0afef292d8499622e5d7e10ff6cc40ddfcaf819a4ecaddf1',
    },
    fittrackee: {
      image: 'ghcr.io/samr1/fittrackee',
      tag: 'v1.2.2@sha256:05af3c9851636ae5ead7b0f4ab51b4fbbf967733f0ca92041b12eb45a3248f70',
    },
    anubis: {
      image: 'ghcr.io/techarohq/anubis',
      tag: 'v1.23.0-pre2@sha256:6989825add462d64e70b34f84e816c4c2bcb06351f90b36fb9454ad7966be38c',
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
      tag: '2.8.5@sha256:9ecf168b56984461f317a0cd30e36140c61e7148a22a115ac7e65b307c9a13b2',
    },
    borgmatic: {
      image: 'ghcr.io/borgmatic-collective/borgmatic',
      tag: '2.1.5@sha256:f6b0a640d72bf7bb628479246e7c919404917cc58ddc6cdfb8d2d40d786d3a26',
    },
    postgres: {
      image: 'postgres',
      tag: '17.9-alpine@sha256:778d0b486d6daa02b77434d0358ec57a1b21fd8b6d22ac2eef56a33e816928f6',
    },
  },
}
