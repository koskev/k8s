local k8s = import 'k8s.libsonnet';
local chart = (import 'images.libsonnet').helm.immich;
local immich_image = (import 'images.libsonnet').container.immich;
local cnpg = import 'lib/cnpg.libsonnet';
local postgres_operator = import 'lib/postgres-operator.jsonnet';

local name = 'immich';
local namespace = 'immich';

local database_name = 'immich-db';
local database_admin_secret = 'cnpg-immich-cluster-admin';

local host = 'immich.kokev.de';


local storageclass = 'local-%s' % name;
local storageclassDB = 'local-db-%s' % name;

local immich_storage_size_gb = 20;
[
  k8s.v1.namespace(namespace),
  // XXX: Manually gave "immich-group" superuser
  cnpg.newImmichCluster(database_name, storageclassDB, database_admin_secret),
  postgres_operator.new('postgres-operator-%s' % name, database_admin_secret, database_name),
  k8s.db.database(name, namespace, instance=database_name),
  k8s.db.user(name, namespace, instance=database_name, secretTemplate={
    DB_URL: 'postgresql://{{.Role}}:{{.Password}}@%s-rw.postgres/{{.Database}}?sslmode=disable' % database_name,
  }),
  k8s.storage.localPersistentVolume('postgres-db-optiplex-%s' % name, namespace, 1, '/mnt/hdd_gluster/postgres_data_%s' % name, storageclassDB, 'optiplex'),
  k8s.storage.localStorageClass(storageclassDB),
  k8s.storage.localStorageClass(storageclass),
  k8s.storage.localPersistentVolume(
    name,
    namespace,
    immich_storage_size_gb,
    '/mnt/shared_data/k8s/%s' % name,
    storageclass
  ),
  k8s.storage.localPvc(name, namespace, storageclass, immich_storage_size_gb),
  k8s.builder.argocd.helm.new(
    name=name,
    targetnamespace=namespace,
    releaseName=name,
    chart=chart
  ).withValues(
    {
      valkey: {
        enabled: true,
      },
      controllers: {
        main: {
          containers: {
            main: {
              image: {
                tag: immich_image.tag,
              },
              envFrom: [{
                secretRef: {
                  name: 'immich-immich',
                },
              }],
            },
          },
        },
      },
      immich: {
        persistence: {
          library: {
            existingClaim: name,
          },
        },
      },
      server: {
        persistence: {
          external: {
            enabled: true,
            type: 'hostPath',
            hostPath: '/mnt/shared_data/k8s/immich_external',
           //  XXX: Hardcoded to be the same as the hostpath...
            //mountPath: '/external',
          },
        },
        ingress: {
          main: {
            ingressClassName: 'nginx',
            enabled: true,
            annotations: {
              'cert-manager.io/cluster-issuer': 'kokev-issuer',
            },
            hosts: [{
              host: host,
              paths: [{
                path: '/',
                service: {
                  identifier: 'main',
                },
              }],
            }],
            tls: [
              {
                hosts: [
                  host,
                ],
                secretName: '%s-tls' % name,
              },
            ],
          },
        },
      },
    }
  ),
]
