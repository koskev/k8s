local argocd = import 'argocd.libsonnet';
local chart = (import 'images.libsonnet').helm.kube_prometheus;
local secret = import 'secret.libsonnet';
local storage = import 'storage.libsonnet';
local k8s = import 'k8s.libsonnet';
local globals = import 'globals.libsonnet';


local name = 'grafana';
local namespace = 'monitoring';
local storageclassGrafana = 'local-grafana';
local storageclassPrometheus = 'local-prometheus';
[
  k8s.storage.localStorageClass(storageclassGrafana),
  k8s.storage.localStorageClass(storageclassPrometheus),
  storage.localPersistentVolume(
    name='grafana-pv',
    namespace=namespace,
    sizeGB=10,
    path='/mnt/shared_data/k8s/prometheus/grafana_data',
    storageclass=storageclassGrafana,
    labels={
      storage: name,
    },
  ),
  storage.localPersistentVolume(
    name='prometheus-db',
    namespace=namespace,
    sizeGB=10,
    path='/mnt/shared_data/k8s/prometheus/prometheus_data',
    storageclass=storageclassPrometheus
  ),

  secret.externalSecretExtract('prometheus-secret', namespace),
  k8s.db.database(
    name=name,
    namespace=namespace
  ),
  k8s.db.user(
    name=name,
    namespace=namespace,
  ),
  k8s.secret.externalSecretExtract('oidc-grafana', namespace, key='oidc/grafana'),

  argocd.applicationHelm(
    name='kube-prometheus',
    targetnamespace=namespace,
    chart=chart,
    releaseName='prometheus',
    valuesToString=true,
    values={
      namespaceOverride: namespace,
      crds: {
        upgradeJob: {
          enabled: false,
        },
      },
      grafana: {
        envValueFrom: {
          POSTGRES_HOST: {
            secretKeyRef: {
              name: 'grafana-grafana',
              key: 'HOST',
            },
          },
          POSTGRES_DATABASE: {
            secretKeyRef: {
              name: 'grafana-grafana',
              key: 'DATABASE_NAME',
            },
          },
          POSTGRES_USER: {
            secretKeyRef: {
              name: 'grafana-grafana',
              key: 'LOGIN',
            },
          },
          POSTGRES_PASSWORD: {
            secretKeyRef: {
              name: 'grafana-grafana',
              key: 'PASSWORD',
            },
          },
          OIDC_SECRET: {
            secretKeyRef: {
              name: 'oidc-grafana',
              key: 'password',
            },
          },
        },
        smtp: {
          existingSecret: 'prometheus-secret',
          userKey: 'smtp_user',
          passwordKey: 'smtp_password',
        },
        'grafana.ini': {
          database: {
            type: 'postgres',
            host: '$__env{POSTGRES_HOST}',
            name: '$__env{POSTGRES_DATABASE}',
            user: '$__env{POSTGRES_USER}',
            password: '$__env{POSTGRES_PASSWORD}',
            ssl_mode: 'disable',
          },
          server: {
            root_url: 'https://grafana.kokev.de',
          },
          smtp: {
            enabled: true,
            host: 'mail.kokev.de:465',
            from_address: 'grafana@kokev.de',
          },
          'auth.generic_oauth': {
            name: 'authelia',
            enabled: true,
            client_id: name,
            client_secret: '$__env{OIDC_SECRET}',
            scopes: 'openid profile email groups',
            auth_url: '%s/api/oidc/authorization' % globals.urls.auth,
            token_url: '%s/api/oidc/token' % globals.urls.auth,
            api_url: '%s/api/oidc/userinfo' % globals.urls.auth,
            // Optionally map user entitlements to Grafana roles
            // FIXME: Role assignment does not work. Even if hardcoding Admin
            role_attribute_path: "contains(groups[*], 'admin') && 'GrafanaAdmin' || contains(groups[*], 'editor') && 'Editor' || 'Viewer'",
            allow_assign_grafana_admin: true,
            groups_attribute_path: 'groups',
            auth_style: 'InHeader',
          },
        },
        persistence: {
          type: 'sts',
          enabled: true,
          storageClassName: storageclassGrafana,
          selectorLabels: {
            storage: 'grafana',
          },
        },
        ingress: {
          enabled: true,
          ingressClassName: globals.ingress.internal.name,
          annotations: {
            'cert-manager.io/cluster-issuer': 'kokev-issuer',
          },
          paths: [
            '/',
          ],
          hosts: [
            'grafana.kokev.de',
          ],
          tls: [
            {
              hosts: [
                'grafana.kokev.de',
              ],
              secretName: 'grafana-tls',
            },
          ],
        },
      },
      prometheus: {
        prometheusSpec: {
          podMonitorSelectorNilUsesHelmValues: false,
          ruleSelectorNilUsesHelmValues: false,
          serviceMonitorSelectorNilUsesHelmValues: false,
          probeSelectorNilUsesHelmValues: false,
          storageSpec: {
            volumeClaimTemplate: {
              spec: {
                accessModes: [
                  'ReadWriteOnce',
                ],
                volumeName: 'prometheus-db',
                storageClassName: storageclassPrometheus,
                resources: {
                  requests: {
                    storage: '10Gi',
                  },
                },
              },
            },
          },
          additionalScrapeConfigsSecret: {
            enabled: true,
            name: 'prometheus-secret',
            key: 'server_config',
          },
        },
      },
    }
  ),
]
