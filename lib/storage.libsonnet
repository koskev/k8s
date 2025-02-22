{
  localPersistentVolume(name, namespace, sizeGB, path, storageclass, hostname=null, labels={}):: {
    apiVersion: 'v1',
    kind: 'PersistentVolume',
    metadata: {
      name: name,
      namespace: namespace,
      labels: labels,
    },
    spec: {
      accessModes: ['ReadWriteOnce'],
      capacity: {
        storage: '%dGi' % sizeGB,
      },
      storageClassName: storageclass,
    } + if hostname == null then {
      hostPath: {
        path: path,
        type: 'DirectoryOrCreate',
      },
    } else {
      'local': {
        path: path,
      },
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
