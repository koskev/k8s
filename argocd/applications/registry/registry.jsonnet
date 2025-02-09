local argocd = import 'argocd.libsonnet';
local storage = import 'storage.libsonnet';
local chart = (import 'images.libsonnet').helm.registry;

[
  storage.localStorageClass('local-registry'),
  storage.localPersistentVolume(
    'registry',
    'registry',
    20,
    '/mnt/shared_data/k8s/registry',
    'local-registry'
  ),
  argocd.applicationHelm(
    name='registry',
    targetnamespace='registry',
    chart=chart.chart,
    chartUrl=chart.chartUrl,
    chartVersion=chart.chartVersion,
    releaseName='registry',
    values={
      persistence: {
        storageClass: 'local-registry',
      },
    }
  ),
]
