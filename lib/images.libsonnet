{
  helm: {
    argocd: {
      chart: 'argo-cd',
      repoURL: 'https://argoproj.github.io/argo-helm',
      targetRevision: '9.5.15',
    },
    synapse: {
      chart: 'matrix-synapse',
      repoURL: 'https://ananace.gitlab.io/charts',
      targetRevision: '3.12.28',
    },
    kube_prometheus: {
      chart: 'kube-prometheus-stack',
      repoURL: 'https://prometheus-community.github.io/helm-charts',
      targetRevision: '84.5.0',
    },
    cert_manager: {
      chart: 'cert-manager',
      repoURL: 'https://charts.jetstack.io',
      targetRevision: 'v1.20.2',
    },
    cert_manager_desec_http: {
      chart: 'cert-manager-webhook-desec-http',
      repoURL: 'ghcr.io/koskev/charts',
      targetRevision: '1.1.0',
    },
    external_secrets: {
      chart: 'external-secrets',
      repoURL: 'https://charts.external-secrets.io',
      targetRevision: '2.5.0',
    },
    external_postgres_operator: {
      chart: 'ext-postgres-operator',
      repoURL: 'https://movetokube.github.io/postgres-operator',
      targetRevision: '3.0.0',
    },
    cnpg: {
      chart: 'cloudnative-pg',
      repoURL: 'https://cloudnative-pg.github.io/charts',
      targetRevision: '0.28.2',
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
      targetRevision: '0.28.3',
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
      targetRevision: '17.1.0',
    },
    grafana: {
      chart: 'grafana-operator',
      repoURL: 'ghcr.io/grafana/helm-charts',
      targetRevision: '5.23.0',
    },
    flannel: {
      chart: 'flannel',
      repoURL: 'https://flannel-io.github.io/flannel',
      targetRevision: 'v0.28.4',
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
      targetRevision: '39.0.9',
    },
    immich: {
      chart: 'immich',
      repoURL: 'ghcr.io/immich-app/immich-charts',
      targetRevision: '0.12.0',
    },
    authentik: {
      chart: 'authentik',
      repoURL: 'https://charts.goauthentik.io',
      targetRevision: '2026.5.0',
    },
    authelia: {
      chart: 'authelia',
      repoURL: 'https://charts.authelia.com',
      targetRevision: '0.11.5',
    },
  },
  container: {
    renovate: {
      image: 'renovate/renovate',
      tag: '43.195.1@sha256:e3a93228ff61a4df9d685051c9f762f54fac91de69cb77626f3187511aa4e925',
    },
    signal_bridge: {
      image: 'dock.mau.dev/mautrix/signal',
      tag: 'v26.02.2@sha256:577e37ad5f41bfd72a236e6ab4a1b1b2d4f960890ff0767ed3b0b7cbb6817c29',
    },
    whatsapp_bridge: {
      image: 'dock.mau.dev/mautrix/whatsapp',
      tag: 'v0.2605.0@sha256:d126438cc0eb989c31ff32ab66a95a16d1fc47198eaabcba0fb4f4672e7a3412',
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
      tag: 'v1.153.0@sha256:8ba9310909c4f255f942e504d9e5e5d9a7f20e3fa1cdf5aea8acb704b6a15098',
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
      tag: '2026.5.4@sha256:ceb1202133a5a036e8b03e20a10eb113186cc2f871968323c6fc6c3fc4205716',
    },
    grocy: {
      image: 'linuxserver/grocy',
      tag: 'v4.0.3-ls221@sha256:96ab10ee33a40261f57c2622ad85434289cdf07cfa19e8bab4e1fc76f420d66f',
    },
    jellyfin: {
      image: 'docker.io/jellyfin/jellyfin',
      tag: '10.11.9@sha256:bc9fa8e1462fffe3d8d4255fc62af478602641f4c0e5f4875fea8563d1189837',
    },
    zigbee2mqtt: {
      image: 'koenkk/zigbee2mqtt',
      tag: '2.10.1@sha256:67c26dcf8346aced02fe1380a6afd1b57268bcef10faae3f6057c13d5d3dfa80',
    },
    esphome: {
      image: 'ghcr.io/esphome/esphome',
      tag: '2026.5.1@sha256:7886a4b0f04bd7d5e092e0b0cae277a47e39088d4d9028935df3304655300acd',
    },
    chhoto: {
      image: 'sintan1729/chhoto-url',
      tag: '7.1.3@sha256:16de87a08f231d6c0e8de0434519e31b89197ea0ffe63980c768e25010b8c708',
    },
    nodered: {
      image: 'nodered/node-red',
      tag: '4.1.10-18@sha256:196477a0dd66c8857f3e0d50bb5f4f16038a4d92437ddb2555aaa7c0e549bd93',
    },
    pihole: {
      image: 'pihole/pihole',
      tag: '2026.05.0@sha256:70a9c11171ded2eee735d88c127996da209284a329d50f5ae59c06b861d401b3',
    },
    externaldns: {
      image: 'registry.k8s.io/external-dns/external-dns',
      tag: 'v0.21.0@sha256:f53faaf71cb270d1ca9dce6ea0c94bfebf1a18696263487f0fbc74b9bf2bd7ff',
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
      tag: '2.1@sha256:7c60eb0ec887696c8684de88aea2dfe39a7391184b29d33c0aad778c99c7683e',
    },
    brouter_react: {
      image: 'ghcr.io/koskev/brouter-react',
      tag: '2025.09.08@sha256:f6f80910ee63be60386496a8951fa30cca23ecf2c2f269731c14cc86ec25dda6',
    },
    valkey: {
      image: 'valkey/valkey',
      tag: '8.1.7-alpine@sha256:b027235326507cfdade9b6684056ec1d0b0c0757412e628245129b5d7b788618',
    },
    telegraf: {
      image: 'telegraf',
      tag: '1.38.4-alpine@sha256:49fc4b3e60115966979d653e76874bd960acdd27cd484a4a57813132e474d882',
    },
    influxdb: {
      image: 'influxdb',
      tag: '2.8.0-alpine@sha256:41dd20908d395acc7b839b64e4350e2b5f41a368beb2a1368ca52e8c76c94b3d',
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
      tag: '2.20.15@sha256:6c86cad803970ea782683a8e80e7403444c5bf3cf70de63b4d3c8e87500db92f',
    },
    ecs: {
      image: 'forgejo.kokev.de/kevin/ecs-automation',
      tag: 'latest@sha256:9205773e6564bcec0afef292d8499622e5d7e10ff6cc40ddfcaf819a4ecaddf1',
    },
    fittrackee: {
      image: 'ghcr.io/samr1/fittrackee',
      tag: 'v1.3.2@sha256:70cf79d9a76b9eaf03759fb83f8d4d87519ad03031fcfd0d88df9fccaedd6a06',
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
      tag: '17.10-alpine@sha256:979c4379dd698aba0b890599a6104e082035f98ef31d9b9291ec22f2b13059ca',
    },
    desec_http: {
      image: 'ghcr.io/koskev/cert-manager-webhook-desec-http',
      tag: 'v1.1.0@sha256:31105d46208e3ca5965078d22f6baacbf86f85f4b4b50c95d055c197c61ca20b',
    },
  },
}
