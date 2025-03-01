local chart = (import 'images.libsonnet').helm.emqx;
local k8s = import 'k8s.libsonnet';

local cnpgConfig = import 'applications/postgres/cnpg/config.libsonnet';

local name = 'emqx';
local namespace = 'emqx';
local configName = 'emqx-config';

local secretName = 'emqx-secret';
k8s.secret.secretStoreKubernetes('%s-store' % name, namespace) +
[
  k8s.db.database(name, namespace),
  k8s.db.user(name, namespace, privileges='READ'),
  k8s.secret.externalSecretExtract(
    secretName,
    namespace,
    templateData={
      EMQX_AUTHENTICATION__1__SERVER: cnpgConfig.host.readOnly,
      EMQX_AUTHENTICATION__1__DATABASE: '{{ .DATABASE_NAME }}',
      EMQX_AUTHENTICATION__1__PASSWORD: '{{ .PASSWORD }}',
      EMQX_AUTHENTICATION__1__USERNAME: '{{ .ROLE }}',
      EMQX_DASHBOARD__DEFAULT_PASSWORD: '{{ .EMQX_DASHBOARD__DEFAULT_PASSWORD }}',
      EMQX_DASHBOARD__DEFAULT_USERNAME: '{{ .EMQX_DASHBOARD__DEFAULT_USERNAME }}',
    },
    additionalDataFrom=[
      {
        extract: {
          key: '%s-%s' % [name, name],
        },
        sourceRef: {
          storeRef: {
            name: '%s-store' % name,
            kind: 'SecretStore',
          },
        },
      },
    ]
  ),
  k8s.argocd.applicationHelm(
    name=name,
    targetnamespace=namespace,
    chart=chart,
    values={
      service: {
        type: 'LoadBalancer',
        loadBalancerIP: '192.168.10.5',
        annotations: {
          'external-dns.alpha.kubernetes.io/hostname': 'mqtt.kokev.de',
        },
      },
      ssl: {
        enabled: true,
        useExisting: false,
        dnsnames: [
          'mqtt.kokev.de',
        ],
        issuer: {
          name: 'kokev-issuer',
        },
      },
      extraVolumes: [
        {
          name: configName,
          configMap: {
            name: configName,
          },
        },
      ],
      extraVolumeMounts: [
        {
          name: configName,
          mountPath: '/opt/emqx/etc/acl.conf',
          subPath: 'acl.conf',
        },
      ],
      emqxConfig: {
        EMQX_AUTHENTICATION__1__BACKEND: 'postgresql',
        EMQX_AUTHENTICATION__1__MECHANISM: 'password_based',
        EMQX_AUTHENTICATION__1__PASSWORD_HASH_ALGORITHM__NAME: 'bcrypt',
        EMQX_AUTHENTICATION__1__QUERY: 'SELECT password_hash FROM mqtt_user where username = ${username} LIMIT 1',
        EMQX_LISTENERS__SSL__DEFAULT__SSL_OPTIONS__CERTFILE: '/tmp/ssl/tls.crt',
        EMQX_LISTENERS__SSL__DEFAULT__SSL_OPTIONS__KEYFILE: '/tmp/ssl/tls.key',
      },
      envFromSecret: secretName,
      metrics: {
        enabled: true,
      },
      ingress: {
        dashboard: {
          enabled: true,
          ingressClassName: 'nginx',
          annotations: {
            'cert-manager.io/cluster-issuer': 'kokev-issuer',
          },
          hosts: [
            'emqx.kokev.de',
          ],
          tls: [
            {
              hosts: [
                'emqx.kokev.de',
              ],
              secretName: 'emqx-dashboard-tls',
            },
          ],
        },
      },
      resources: {
        requests: {
          cpu: '500m',
          memory: '512Mi',
        },
      },
      topologySpreadConstraints: [
        {
          maxSkew: 1,
          topologyKey: 'kubernetes.io/hostname',
          whenUnsatisfiable: 'DoNotSchedule',
        },
      ],

    },
  ),
  {
    apiVersion: 'v1',
    kind: 'ConfigMap',
    metadata: {
      name: configName,
      namespace: namespace,
    },
    data: {
      'acl.conf':
        |||
          {allow, {username, {re, "^dashboard$"}}, subscribe, ["$SYS/#"]}.
          {allow, {username, "kevin"}, all, ["#"]}.

          {allow, {ipaddr, "127.0.0.1"}, all, ["$SYS/#", "#"]}.

          {deny, all, subscribe, ["$SYS/#", {eq, "#"}]}.

          {allow, {username, "esphome"}, all, ["esphome/#", "homeassistant/#"]}.
          {allow, {username, "eq3"}, all, ["eq3_radin/#", "eq3_radout/#", "homeassistant/#"]}.
          {allow, {username, "hass"}, all, ["#"]}.
          {allow, {username, "mqtt-exporter"}, all, ["#"]}.
          {allow, {username, "telegraf"}, all, ["#"]}.
          {allow, {username, "zigbee2mqtt"}, all, ["zigbee2mqtt/#", "homeassistant/#", "solar/#"]}.
          {allow, {username, "hms"}, all, ["hms800wt2/#", "homeassistant/#", "solar/#"]}.
          {allow, {username, "octoprint"}, all, ["zigbee2mqtt/#", "octoPrint/#"]}.

          {allow, {username, "node-red"}, all, ["#"]}.

          {deny, all}.
        |||,
    },
  },
]
