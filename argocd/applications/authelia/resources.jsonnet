local images = import 'images.libsonnet';
local k8s = import 'k8s.libsonnet';

local name = 'authelia';
local namespace = name;

local secretName = 'authelia-secrets';
local secretNameUsers = 'authelia-users';

local secretNamePsql = '%s-%s' % [name, name];

local secret_envs = [
  {
    name: 'POSTGRES_HOST',
    secret: secretNamePsql,
    key: 'HOST',
  },
  {
    name: 'POSTGRES_PORT',
    secret: secretNamePsql,
    key: 'PORT',
  },
  {
    name: 'POSTGRES_PASSWORD',
    secret: secretNamePsql,
    key: 'PASSWORD',
  },
  {
    name: 'POSTGRES_USER',
    secret: secretNamePsql,
    key: 'LOGIN',
  },
  {
    name: 'OIDC_ARGOCD',
    secret: 'oidc-argocd',
    key: 'digest',
  },
  {
    name: 'OIDC_OPENBAO',
    secret: 'oidc-openbao',
    key: 'digest',
  },
];

local authenticApplication(name, env, redirects=[]) =
  {
    client_id: name,
    client_name: name,
    client_secret: '$pbkdf2-sha512${{ env "%s"}}' % env,
    public: false,
    authorization_policy: 'one_factor',
    require_pkce: false,
    pkce_challenge_method: '',
    redirect_uris: redirects,
    scopes: [
      'openid',
      'email',
      'profile',
      'groups',
    ],
    response_types: [
      'code',
    ],
    grant_types: [
      'authorization_code',
    ],
    access_token_signed_response_alg: 'none',
    userinfo_signed_response_alg: 'none',
    token_endpoint_auth_method: 'client_secret_basic',
    consent_mode: 'implicit',
  }
;

[
  k8s.v1.namespace(namespace),
  k8s.db.database(name, namespace),
  k8s.db.user(name, namespace),
  k8s.secret.externalSecretExtract(secretName, namespace),
  k8s.secret.externalSecretExtract('oidc-argocd', namespace, key='oidc/argocd'),
  k8s.secret.externalSecretExtract('oidc-openbao', namespace, key='oidc/openbao'),
  k8s.secret.externalSecretExtract(secretNameUsers, namespace, templateData={
    'users_database.yaml': std.strReplace(std.toString({
      users: {
        kevin: {
          disabled: false,
          displayname: 'kevin',
          password: '{{ index . "kevin.passwordHash" }}',
          email: '{{ index . "kevin.email" }}',
          groups: ['admins'],
        },
      },
    }), '\\"', '"'),  // XXX: Cursed workaround for wrongly escaped quotes

  }),
  k8s.builder.argocd.helm.new(
    name,
    namespace,
    images.helm.authelia,
  )
  .withValues({
    pod: {
      annotations: {
        'reloader.stakater.com/auto': 'true',
      },
      kind: 'Deployment',
      env: [
        {
          name: 'AUTHELIA_STORAGE_POSTGRES_PASSWORD_FILE',
          value: '/authelia-psql-secret/PASSWORD',
        },
        {
          name: 'AUTHELIA_STORAGE_ENCRYPTION_KEY_FILE',
          value: '/authelia-secrets/encryption_key',
        },
      ] + [
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
      extraVolumes: [
        {
          name: secretName,
          secret: {
            secretName: secretName,
          },
        },
        {
          name: secretNamePsql,
          secret: {
            secretName: secretNamePsql,
          },
        },
        {
          name: 'users',
          secret: {
            secretName: secretNameUsers,
          },
        },
        {
          name: name,
          emptyDir: {},
        },
      ],
      extraVolumeMounts: [
        {
          name: secretName,
          mountPath: '/authelia-secrets',
        },
        {
          name: secretNamePsql,
          mountPath: '/authelia-psql-secret',
        },
        {
          name: name,
          mountPath: '/config',
        },
        {
          name: 'users',
          mountPath: '/users',
        },
      ],
    },
    configMap: {
      log: {
        level: 'info',
      },
      storage: {
        encryption_key: {
          disabled: true,
        },
        postgres: {
          enabled: true,
          address: 'tcp://{{ env "POSTGRES_HOST"}}:{{env "POSTGRES_PORT"}}',
          username: '{{ env "POSTGRES_USER"}}',
          password: {
            disabled: true,
          },
        },
      },
      notifier: {
        filesystem: {
          enabled: true,
        },
      },
      authentication_backend: {
        file: {
          enabled: true,
          watch: false,
          path: '/users/users_database.yaml',
        },
      },
      session: {
        cookies: [{
          domain: 'kokev.de',
          subdomain: 'auth',
        }],
      },
      identity_providers: {
        oidc: {
          enabled: true,
          jwks: [{
            key_id: 'default',
            algorithm: 'RS256',
            use: 'sig',
            key: {
              path: '/authelia-secrets/jwt_key',
            },
          }],
          clients: [
            authenticApplication('argocd', 'OIDC_ARGOCD', [
              'https://argocd.kokev.de/api/dex/callback',
              'https://localhost:8085/auth/callback',
            ]),
            authenticApplication('openbao', 'OIDC_OPENBAO', redirects=[
              'https://vault.kokev.de/ui/vault/auth/oidc/oidc/callback',
              'https://vault.kokev.de/oidc/callback',
              'http://localhost:8250/oidc/callback',
            ]),
          ],
        },
      },
    },
    ingress: {
      enabled: true,
      annotations: {
        'cert-manager.io/cluster-issuer': 'kokev-issuer',
      },
      tls: {
        enabled: true,
      },
    },
  }),
]
