local k8s = import 'k8s.libsonnet';
local chart = (import 'images.libsonnet').helm.teleport;

local name = 'teleport';
local namespace = 'teleport';

local addr = 'teleport.kokev.de';

[
  k8s.storage.localStorageClass(name),
  k8s.storage.localPersistentVolume(
    name=name,
    namespace=namespace,
    sizeGB=10,
    path='/mnt/shared_data/k8s/teleport/data',
    storageclass=name
  ),
  k8s.argocd.applicationHelm(
    name=name,
    targetnamespace=namespace,
    chart=chart,
    releaseName='teleport',
    values={
      proxy: {
        annotations: {
          service: {
            'external-dns.alpha.kubernetes.io/hostname': addr,
          },
        },
      },
      clusterName: addr,
      persistence: {
        enabled: true,
        storageClassName: name,
      },
      operator: {
        enabled: true,
      },
    },
  ),
]
