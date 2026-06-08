local globals = import 'globals.libsonnet';
local images = import 'images.libsonnet';
local k8s = import 'k8s.libsonnet';
local script = import 'script.libsonnet';

local name = 'authelia';
local namespace = name;

local secretName = 'authelia-secrets';
local secretNameUsers = 'authelia-users';

local secretNamePsql = '%s-%s' % [name, name];

local apps = {
  argocd: {
    redirects: [
      'https://argocd.%s/api/dex/callback' % globals.domain,
      'https://localhost:8085/auth/callback',
    ],
  },
  openbao: {
    redirects: [
      'https://vault.%s/ui/vault/auth/oidc/oidc/callback' % globals.domain,
      'https://vault.%s/oidc/callback' % globals.domain,
      'http://localhost:8250/oidc/callback',
    ],
  },
  paperless: {
    redirects: [
      'https://paperless.%s/accounts/oidc/authelia/login/callback/' % globals.domain,
    ],
  },
  grafana: {
    redirects: [
      'https://grafana.%s/login/generic_oauth' % globals.domain,
    ],
    policy: {
      id_token: ['email', 'name', 'groups', 'preferred_username'],
    },
  },
};

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
] + [
  {
    name: 'OIDC_%s' % std.asciiUpper(app),
    secret: 'oidc-%s' % app,
    key: 'digest',
  }
  for app in std.objectFields(apps)
]
;

local autheliaApplication(name, env=std.asciiUpper('OIDC_%s' % name), redirects=[], additionalData={}, policy=null) =
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
    [if policy != null then 'claims_policy']: policy,
  } + additionalData
;

[
  k8s.v1.namespace(namespace),
  k8s.db.database(name, namespace),
  k8s.db.user(name, namespace),
  k8s.secret.externalSecretExtract(secretName, namespace),
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
          domain: globals.domain,
          subdomain: 'auth',
        }],
      },
      identity_providers: {
        oidc: {
          enabled: true,
          claims_policies: std.foldl(
            function(acc, val) acc + val,
            std.map(function(app) {
                      [app.key]: app.value.policy,
                    },
                    std.filter(function(app) std.get(app.value, 'policy') != null, std.objectKeysValues(apps))),
            {}
          ),
          jwks: [{
            key_id: 'default',
            algorithm: 'RS256',
            use: 'sig',
            key: {
              path: '/authelia-secrets/jwt_key',
            },
          }],
          clients: [
            autheliaApplication(
              app.key,
              redirects=app.value.redirects,
              additionalData=std.get(app.value, 'additionalData', {}),
              policy=if std.get(app.value, 'policy') != null then app.key else null,
            )
            for app in std.objectKeysValues(apps)
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
] + std.flatMap(function(app) [
  k8s.secret.externalSecretExtract('oidc-%s' % app, namespace, key='oidc/%s' % app),
  script.oidcSecret(app),
], std.objectFields(apps))
