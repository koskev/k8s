local k8s = import 'k8s.libsonnet';
local image = (import 'images.libsonnet').container.paperless;
local valkeyImage = (import 'images.libsonnet').container.valkey;
local backup = import 'utils/backup.libsonnet';
local globals = import 'globals.libsonnet';

local name = 'paperless-ngx';
local namespace = 'paperless';
local hostname = 'paperless.%s' % globals.domain;

local port = 8000;

local valkeyName = '%s-valkey' % name;
local valkeyPort = 6379;

local volumes = [
  {
    name: 'data',
    hostPath: {
      path: '/mnt/shared_data/k8s/paperless/data',
    },
  },
  {
    name: 'media',
    hostPath: {
      path: '/mnt/shared_data/k8s/paperless/media',
    },
  },
];
[
  k8s.v1.namespace(namespace),
  k8s.db.database(name, namespace),
  k8s.db.user(name, namespace, secretTemplate={
    PAPERLESS_DBENGINE: 'postgres',
    PAPERLESS_DBHOST: '{{.Host}}',
    PAPERLESS_DBUSER: '{{.Role}}',
    PAPERLESS_DBPASS: '{{.Password}}',
    PAPERLESS_DBNAME: '{{.Database}}',
    PAPERLESS_DBSSLMODE: 'disable',

  }),
  k8s.v1.service(name, namespace, ports=[port]),
  k8s.secret.externalSecretExtract('oidc-paperless', namespace, key='oidc/paperless', templateData={
    PAPERLESS_SOCIALACCOUNT_PROVIDERS: std.toString({
      openid_connect: {
        SCOPE: ['openid', 'profile', 'email'],
        OAUTH_PKCE_ENABLED: true,
        APPS: [
          {
            provider_id: 'authelia',
            name: 'Authelia',
            client_id: 'paperless',
            secret: '{{ .password }}',
            settings: {
              server_url: globals.urls.auth,
              token_auth_method: 'client_secret_basic',
            },
          },
        ],
      },

    }),
  }),
  k8s.apps.statefulSet(name, namespace, spec={
    containers: [
      {
        name: 'paperless',
        image: '%s:%s' % [image.image, image.tag],
        ports: [
          {
            containerPort: port,
          },
        ],
        livenessProbe: {
          httpGet: {
            path: '/',
            port: port,
          },
          initialDelaySeconds: 500,
          periodSeconds: 60,
          timeoutSeconds: 10,
          failureThreshold: 5,
        },
        readinessProbe: {
          httpGet: {
            path: '/',
            port: port,
          },
          initialDelaySeconds: 30,
          periodSeconds: 60,
          timeoutSeconds: 10,
        },
        volumeMounts: [
          {
            name: 'data',
            mountPath: '/usr/src/paperless/data',
          },
          {
            name: 'media',
            mountPath: '/usr/src/paperless/media',
          },
        ],
        env: [
          {
            name: 'PAPERLESS_URL',
            value: 'https://%s' % hostname,
          },
          {
            name: 'PAPERLESS_REDIS',
            value: 'redis://%s:%d' % [valkeyName, valkeyPort],
          },
          {
            name: 'PAPERLESS_APPS',
            value: 'allauth.socialaccount.providers.openid_connect',
          },
          {
            name: 'PAPERLESS_SOCIALACCOUNT_PROVIDERS',
            valueFrom: {
              secretKeyRef: {
                name: 'oidc-paperless',
                key: 'PAPERLESS_SOCIALACCOUNT_PROVIDERS',
              },
            },
          },
        ],
        envFrom: [{
          secretRef: {
            name: '%s-%s' % [name, name],
          },
        }],
      },
    ],
    volumes: volumes,
  }),
  k8s.v1.service(valkeyName, namespace, ports=[valkeyPort]),
  k8s.apps.deployment(valkeyName, namespace, spec={
    containers: [
      {
        name: 'valkey',
        image: '%s:%s' % [valkeyImage.image, valkeyImage.tag],
        ports: [
          {
            containerPort: valkeyPort,
          },
        ],
      },
    ],
  }),
  k8s.networking.ingress(name, namespace, hostname, servicePort=port),
]
+
backup.new(name, namespace)
.withVolumes(volumes)
.withRepository('ssh://borg@borg-backup.borg/./backups/paperless/data', 'backup-%s' % name, globals.backup.kokev.knownHost)
.withDirectory('/data')
.withDirectory('/media')
.withExclude('*/classification_model.pickle')  // The model can be reconstructed from the other data
.withExclude('*/data/log')  // We don't really need the logs in the backup
.withPostgresDatabase('%s-%s' % [name, name])
.build()
