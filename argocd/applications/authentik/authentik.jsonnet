local k8s = import 'k8s.libsonnet';
local chart = (import 'images.libsonnet').helm.authentik;
local cnpgConfig = import 'argocd/applications/postgres/cnpg/config.libsonnet';
local globals = import 'globals.libsonnet';

local name = 'authentik';
local namespace = 'authentik';
local domain = 'auth.%s' % globals.domain;

local secretName = '%s-%s' % [name, name];

local secret_envs = [
  {
    name: 'AUTHENTIK_POSTGRESQL__NAME',
    secret: secretName,
    key: 'DATABASE_NAME',
  },
  {
    name: 'AUTHENTIK_POSTGRESQL__USER',
    secret: secretName,
    key: 'ROLE',
  },
  {
    name: 'AUTHENTIK_POSTGRESQL__PASSWORD',
    secret: secretName,
    key: 'PASSWORD',
  },
  {
    name: 'AUTHENTIK_POSTGRESQL__READ_REPLICAS__0__NAME',
    secret: secretName,
    key: 'DATABASE_NAME',
  },
  {
    name: 'AUTHENTIK_POSTGRESQL__READ_REPLICAS__0__USER',
    secret: secretName,
    key: 'ROLE',
  },
  {
    name: 'AUTHENTIK_POSTGRESQL__READ_REPLICAS__0__PASSWORD',
    secret: secretName,
    key: 'PASSWORD',
  },
  {
    name: 'AUTHENTIK_SECRET_KEY',
    secret: 'authentik-secrets',
    key: 'secret-key',
  },
];

local envs = [
  {
    name: 'AUTHENTIK_POSTGRESQL__SSLMODE',
    value: 'disable',
  },
  {
    name: 'AUTHENTIK_POSTGRESQL__READ_REPLICAS__0__SSLMODE',
    value: 'disable',
  },
  {
    name: 'AUTHENTIK_POSTGRESQL__HOST',
    value: cnpgConfig.host.write,
  },
  {
    name: 'AUTHENTIK_POSTGRESQL__READ_REPLICAS__0__HOST',
    value: cnpgConfig.host.readOnly,
  },
  {
    name: 'AUTHENTIK_REDIS__DB',
    value: '1',
  },
  {
    name: 'AUTHENTIK_BOOTSTRAP_PASSWORD',
    value: 'akadmin',
  },
  {
    name: 'AUTHENTIK_BOOTSTRAP_EMAIL',
    value: 'akadmin@%s' % globals.domain,
  },
  {
    name: 'AUTHENTIK_INSECURE',
    value: 'true',
  },
];

[
  k8s.v1.namespace(namespace),
  k8s.secret.externalSecretExtract('authentik-secrets', namespace, key='authentik'),
  k8s.db.database(name, namespace),
  k8s.db.user(name, namespace),
  k8s.argocd.applicationHelm(
    name=name,
    targetnamespace=namespace,
    chart=chart,
    valuesToString=true,
    values={
      authentik: {
        postgresql: null,
      },
      server: {
        ingress: {
          enabled: true,
          ingressClassName: globals.ingress.internal.name,
          hosts: [domain],
          annotations: {
            'cert-manager.io/cluster-issuer': 'kokev-issuer',
          },
          tls: [{
            secretName: 'authentik-tls',
            hosts: [domain],
          }],
        },
      },
      global: {
        env: envs + [
          {
            name: env.name,
            valueFrom: {
              secretKeyRef: {
                name: env.secret,
                key: env.key,
              },
            },

          }
          for env in secret_envs
        ],
      },
      redis: {
        enabled: true,
        master: {
          persistence: {
            enabled: false,
          },
        },
      },
    },
  ),
]
