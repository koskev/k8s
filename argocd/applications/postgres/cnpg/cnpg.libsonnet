function(input=import 'defaultInput.libsonnet')
  local argocd = import 'argocd.libsonnet';
  local storage = import 'storage.libsonnet';
  local chart = (import 'images.libsonnet').helm.cnpg;
  local postgres_operator = import 'database/postgres-operator.jsonnet';
  local tf = import 'tf/tf.libsonnet';

  local config = import 'config.libsonnet';

  local cluster = {
    apiVersion: 'postgresql.cnpg.io/v1',
    kind: 'Cluster',
    metadata: {
      name: config.clusterName,
      namespace: config.namespace,
    },
    spec:
      {
        postgresql: {
          parameters: {
            max_connections: '200',
            max_slot_wal_keep_size: '10GB',
          },
        },
        instances: 3,
        storage: {
          size: '3Gi',
          storageClass: config.storageClass,
        },
        monitoring: {
          enablePodMonitor: true,
        },
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
                    name: config.secretName,
                  },
                  // These are needed for ArgoCD 3.0
                  connectionLimit: -1,
                  inherit: true,
                },
              ],
          },
      },
  };

  [
    argocd.applicationHelm(
      name='cloudnative-pg',
      targetnamespace=config.namespace,
      chart=chart,
      values={
        monitoring: {
          podMonitorEnabled: true,
        },
      }
    ),
    cluster,
    storage.localStorageClass(config.storageClass),
    postgres_operator.new('postgres-operator', 'cnpg-cluster-admin', ''),
    tf.stage(
      'bootstrap',
      tf.kubernetesSecret('cnpg-cluster-admin', config.namespace, 'secrets/postgres/cnpg-cluster-admin.enc.yaml'),
    ),

  ]
  + std.map(function(pv)
              storage.localPersistentVolume(pv.name, config.namespace, pv.sizeGB, pv.path, config.storageClass, pv.hostname),
            input.applications.postgres.cnpg.config.localPVs)
  + std.objectValues(config.pools)
