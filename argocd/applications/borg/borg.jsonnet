local k8s = import 'k8s.libsonnet';
local image = (import 'images.libsonnet').container.borg_server;

local name = 'borg-backup';
local namespace = 'borg';
local sshPort = 22;

local storageClass = 'local-optiplex-borg-storage';
local mountPath = '/mnt/ext_hdd';
local pvcName = 'optiplex-borg-storage';
local configPvcName = '%s-config' % pvcName;

local configStorageClass = '%s-config' % storageClass;

local size = 3 * 1000;

[
  k8s.v1.namespace(namespace),
  k8s.storage.localStorageClass(storageClass),
  k8s.storage.localPersistentVolume(pvcName, namespace, size, '%s/repos' % mountPath, storageClass, 'optiplex'),
  k8s.storage.localPvc(pvcName, namespace, storageClass, size),

  k8s.storage.localStorageClass(configStorageClass),
  k8s.storage.localPersistentVolume(configPvcName, namespace, 1, '%s/config' % mountPath, configStorageClass, 'optiplex'),
  k8s.storage.localPvc(configPvcName, namespace, configStorageClass, 1),

  k8s.secret.externalSecretExtract('borg', namespace),
  k8s.builder.apps.deployment.new(name, namespace)
  .withVolume({
    name: pvcName,
    persistentVolumeClaim: {
      claimName: pvcName,
    },
  })
  .withVolume({
    name: configPvcName,
    persistentVolumeClaim: {
      claimName: configPvcName,
    },
  })
  .withContainer(
    k8s.builder.apps.container.new(name, image.image, image.tag)
    .withMount(pvcName, '/home/borg/backups')
    .withMount(configPvcName, '/var/lib/docker-borg')
    .withEnvFromSecret('borg')
    .withPort(sshPort)
    .withEnv('BORG_UID', '1000')
    .withEnv('BORG_GID', '1000')
  )
  ,
  k8s.v1.service(name, namespace, ports=[sshPort], type='LoadBalancer', annotations={
    'external-dns.alpha.kubernetes.io/hostname': 'borg.kokev.de',
  }),
]
