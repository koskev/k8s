{
  localPersistentVolume(name, namespace, sizeGB, path, storageclass, hostname=null):: {
    apiVersion: 'v1',
    kind: 'PersistentVolume',
    metadata: {
      name: name,
      namespace: namespace,
    },
    spec: {
      accessModes: ['ReadWriteOnce'],
      capacity: {
        storage: '%dGi' % sizeGB,
      },
      'local': {
        path: path,
      },
      storageClassName: storageclass,
    } + if hostname == null then {} else {
      nodeAffinity: {
        required: {
          nodeSelectorTerms: [{
            matchExpressions: [{
              key: 'kubernetes.io/hostname',
              operator: 'In',
              values: [hostname],
            }],
          }],
        },
      },
    },
  },
  localStorageClass(name):: {
    apiVersion: 'storage.k8s.io/v1',
    kind: 'StorageClass',
    metadata: {
      name: name,
    },
    provisioner: 'kubernetes.io/no-provisioner',
    volumeBindingMode: 'WaitForFirstConsumer',
    allowVolumeExpansion: true,
  },
  localPvc():: {},
}
