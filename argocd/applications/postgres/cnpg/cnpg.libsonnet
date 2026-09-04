function(input=import 'defaultInput.libsonnet')
  local argocd = import 'argocd.libsonnet';
  local storage = import 'storage.libsonnet';
  local chart = (import 'images.libsonnet').helm.cnpg;
  local postgres_operator = import 'database/postgres-operator.jsonnet';
  local tf = import 'tf/tf.libsonnet';
  local cnpg = import 'database/cnpg.libsonnet';

  local config = import 'config.libsonnet';

  local cluster = cnpg.newCluster(config.clusterName, 3, '3Gi', config.storageClass, config.secretName, extraSpec={
    postgresql: {
      parameters: {
        max_connections: '200',
        max_slot_wal_keep_size: '10GB',
      },
    },
    monitoring: {
      enablePodMonitor: true,
    },
  });

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
      std.flattenDeepArray([
        tf.providers.kubernetes.resource.kubernetesNamespaceV1.new('cnpg-namespace').addCustomData('metadata', {
          name: config.namespace,
        }),
        tf.kubernetesSecret('cnpg-cluster-admin', config.namespace, 'secrets/postgres/cnpg-cluster-admin.enc.yaml', ['kubernetes_namespace_v1.cnpg-namespace']),
      ]),
    ),

  ]
  + std.map(function(pv)
              storage.localPersistentVolume(pv.name, config.namespace, pv.sizeGB, pv.path, config.storageClass, pv.hostname),
            input.applications.postgres.cnpg.config.localPVs)
  + std.objectValues(config.pools)
