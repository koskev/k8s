local k8s = import 'k8s.libsonnet';
local chart = (import 'images.libsonnet').helm.authelia;


local name = 'authelia';
local namespace = 'authelia';

local secret_envs = [
  {
    name: 'AUTHELIA_STORAGE_POSTGRES_ADDRESS',
    secret: '%s-%s' % [name, name],
    key: 'HOST',
  },
  {
    name: 'AUTHELIA_STORAGE_POSTGRES_USERNAME',
    secret: '%s-%s' % [name, name],
    key: 'ROLE',
  },
  {
    name: 'AUTHELIA_STORAGE_POSTGRES_DATABASE',
    secret: '%s-%s' % [name, name],
    key: 'DATABASE_NAME',
  },
  {
    name: 'AUTHELIA_STORAGE_POSTGRES_PASSWORD',
    secret: '%s-%s' % [name, name],
    key: 'PASSWORD',
  },
];

[
  k8s.db.database(name, namespace),
  k8s.db.user(name, namespace),
  k8s.argocd.applicationHelm(
    name=name,
    targetnamespace=namespace,
    chart=chart,
    values={
      pod: {
        kind: 'Deployment',
        env: [
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
    },
  ),
]
