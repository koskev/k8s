local k8s = import 'k8s.libsonnet';
local image = (import 'images.libsonnet').container.borg_server;

local name = 'borg-backup';
local namespace = 'borg';
local sshPort = 22;

local storageClass = 'local-optiplex-borg-storage';
local mountPath = '/mnt/ext_hdd';
local pvcName = 'optiplex-borg-storage';

local size = 3 * 1000;


local getAuthorizedKeysLine(name, key) = 'restrict,command="borg serve  --restrict-to-path /home/borg/backups/%s" %s' % [name, key];

local authorized_keys = {
  desktop: 'ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIB/TBxpOVXoWVtMV77vC8nUBsG0GpBj6ydjc4P59mChf',
  immich: 'ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIHxeafp9VvH6YgfQuDjZk4yp8P/upoQQoDUiJOqe0ptI',
  paperless: 'ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIF23GaxX2yHM5GG1ch0RjKW38ZolI+GCA6oJpEP0wWJu',
  synapse: 'ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIEKnFyiJ1z2BKw29guPAZGiBMXTFqOAFs0K19H6DwEVj',
};

[
  k8s.v1.namespace(namespace),
  k8s.storage.localStorageClass(storageClass),
  k8s.storage.localPersistentVolume(pvcName, namespace, size, '%s/repos' % mountPath, storageClass, 'optiplex'),
  k8s.storage.localPvc(pvcName, namespace, storageClass, size),

  k8s.v1.configmap('borg-authorized-keys', namespace, {
    authorized_keys:
      std.join(
        '\n',
        [
          getAuthorizedKeysLine(key.key, key.value)
          for key in std.objectKeysValues(authorized_keys)
        ]
      ),
  }),
  k8s.builder.apps.deployment.new(name, namespace)
  .withReloaderAnnotation()
  .withVolume({
    name: pvcName,
    persistentVolumeClaim: {
      claimName: pvcName,
    },
  })
  .withVolume({
    name: 'authorized-keys',
    configMap: {
      name: 'borg-authorized-keys',
    },
  })
  .withVolume(
    {
      name: 'ssh',
      secret: {
        secretName: 'borg-backup',
        defaultMode: std.parseOctal('600'),
      },
    },
  )
  .withContainer(
    k8s.builder.apps.container.new(name, image.image, image.tag)
    .withMount(pvcName, '/home/borg/backups')
    .withMount('ssh', '/var/lib/docker-borg/ssh', readonly=true)
    .withMount('authorized-keys', '/home/borg/.ssh/authorized_keys', 'authorized_keys')
    .withPort(sshPort)
    .withEnv('BORG_UID', '1000')
    .withEnv('BORG_GID', '1000')
  )
  ,
  k8s.secret.externalSecretExtract(name, namespace, 'borg-server'),
  k8s.v1.service(name, namespace, ports=[sshPort], type='LoadBalancer', annotations={
    'external-dns.alpha.kubernetes.io/hostname': 'borg.kokev.de',
  }),
]
