local argocd = import 'argocd.libsonnet';
local storage = import 'storage.libsonnet';
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
    chart='docker-registry',
    chartUrl='https://helm.twun.io',
    chartVersion='2.2.3',
    releaseName='registry',
    values={
      persistence: {
        storageClass: 'local-registry',
      },
    }
  ),
]
