local immich_postgres_image = (import 'images.libsonnet').container.cnpg_vectorchord;
{
  newImmichCluster(name, storageclass, adminSecretName):: self.newCluster(
    name,
    1,
    '1Gi',
    storageclass,
    adminSecretName,
    '%s:%s' % [immich_postgres_image.image, immich_postgres_image.tag],
    {
      postgresql: {
        shared_preload_libraries: [
          'vchord.so',
        ],
      },
      bootstrap: {
        initdb: {
          postInitApplicationSQL: [
            'CREATE EXTENSION vchord CASCADE;',
            'CREATE EXTENSION earthdistance CASCADE;',
          ],
        },
      },
    }
  ),
  newCluster(name, instances, size, storageclass, adminSecretName, imageOverride='', extraSpec={}):: {
    apiVersion: 'postgresql.cnpg.io/v1',
    kind: 'Cluster',
    metadata: {
      name: name,
      namespace: 'postgres',
    },
    spec: {
      instances: instances,
      storage: {
        size: size,
        storageClass: storageclass,
      },
      [if std.length(imageOverride) > 0 then 'imageName']: imageOverride,
      managed:
        {
          roles:
            [
              {
                name: 'admin',
                ensure: 'present',
                comment: 'superuser',
                login: true,
                superuser: true,
                passwordSecret: {
                  name: adminSecretName,
                },
                // These are needed for ArgoCD 3.0
                connectionLimit: -1,
                inherit: true,
              },
            ],
        },
    } + extraSpec,
  },
}
