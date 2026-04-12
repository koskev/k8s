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
      tag: '43.110.16@sha256:6f8f5b88c04d0cad564d9a707bf63a5712d4ae4a53ee3840a6eecbc51b7a7d24',
    },
    signal_bridge: {
      image: 'dock.mau.dev/mautrix/signal',
      tag: 'v26.02.2@sha256:577e37ad5f41bfd72a236e6ab4a1b1b2d4f960890ff0767ed3b0b7cbb6817c29',
    },
    whatsapp_bridge: {
      image: 'dock.mau.dev/mautrix/whatsapp',
      tag: 'v0.2603.0@sha256:b49009312361d9ea0d7090716fd09f2323f477b32bd119648c6ca2d558a3e236',
    },
    yqgo: {
      image: 'mikefarah/yq',
      tag: '4.52.5@sha256:603ebff15eb308a05f1c5b8b7613179cad859aed3ec9fdd04f2ef5d32345950e',
    },
    nginx: {
      image: 'nginx',
      tag: '1.25.4-alpine3.18@sha256:31bad00311cb5eeb8a6648beadcf67277a175da89989f14727420a80e2e76742',
    },
    synapse: {
      image: 'matrixdotorg/synapse',
      tag: 'v1.150.0@sha256:cba0969087ca70a3ec72ebcd1491a6c8391a7da2c0b92738231dd9c7ad55df4d',
    },
    navidrome: {
      image: 'ghcr.io/navidrome/navidrome',
      tag: '0.61.1@sha256:1e1660054a856cc09f227d6929252e45a519fdb16004b464dd637f7294ca3ec1',
    },
    mumble: {
      image: 'mumblevoip/mumble-server',
      tag: 'v1.6.870@sha256:b9fb72d772eb52b5c7d4c402054c183886ecde07efc59c829c53001542365a81',
    },
    unbound: {
      image: 'ghcr.io/koskev/unbound',
      tag: '2026.01.17@sha256:3f322467ceb36299b258dc91775783bf9930e4e3d2c6d941596777636dd38086',
    },
    hass: {
      image: 'ghcr.io/home-assistant/home-assistant',
      tag: '2026.4.2@sha256:4c940155cfd5b0187a6faee2db5d52b98bb573edc1aeee95d0818bb17b6534d7',
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
      tag: '2026.3.3@sha256:6c0db7e3ad7bf0426564400b706907d0c66897d8feb5a43a08fe75bccd05c437',
    },
    chhoto: {
      image: 'sintan1729/chhoto-url',
      tag: '6.5.9@sha256:7b0e2e8aa9d58c111f5614e44ba3bf5cfe46a99126ebe31d5278268c20347a31',
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
      tag: '1.38.2-alpine@sha256:811335001118729cd2bdbcf0aaa88fae62102ab85745bf5f4a0ed60cba56de4e',
    },
    influxdb: {
      image: 'influxdb',
      tag: '2.8.0-alpine@sha256:f15dfc604753f53b180364a331b46c2f4bc5c08a665d025982b301efa69bc2f7',
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
      tag: '2.20.13@sha256:4b05bcd28e6923768000b5d247cbf2c66fd49bdc3f3b05955bd4f6790a638b01',
    },
    ecs: {
      image: 'forgejo.kokev.de/kevin/ecs-automation',
      tag: 'latest@sha256:9205773e6564bcec0afef292d8499622e5d7e10ff6cc40ddfcaf819a4ecaddf1',
    },
    fittrackee: {
      image: 'ghcr.io/samr1/fittrackee',
      tag: 'v1.2.1@sha256:cf250d7ac5e44f0ae77690f34e67782732a37d22796ce0c2e5eb30a6d1466f47',
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
      tag: 'v2.6.3@sha256:0cc1f82953d9598eb9e9dd11cbde1f50fe54f9c46c4506b089e8ad7bfc9d1f0c',
    },
    immich_machine_learning: {
      image: 'ghcr.io/immich-app/immich-machine-learning',
      tag: 'v2.6.3@sha256:33b17015c3d14f2565e9b8cd36b48a70027b14b5cd20da7fbfff21a370b0309c',
    },
    borg_server: {
      image: 'horaceworblehat/borg-server',
      tag: '2.8.5@sha256:9ecf168b56984461f317a0cd30e36140c61e7148a22a115ac7e65b307c9a13b2',
    },
    borgmatic: {
      image: 'ghcr.io/borgmatic-collective/borgmatic',
      tag: '2.1.4@sha256:201001bead2ad04bd46567def5cc63fe277749a1ee7f2e544eb0a415b64f6706',
    },
    postgres: {
      image: 'postgres',
      tag: '17.9-alpine@sha256:6f30057d31f5861b66f3545d4821f987aacf1dd920765f0acadea0c58ff975b1',
    },
  },
}
