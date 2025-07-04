local nginx = (import 'images.libsonnet').container.nginx;

local builder = import 'builder/builder.libsonnet';

[
  builder.apps.deployment
  .new('delegation-nginx', 'default')
  .withReplicas(1)
  .withContainer(
    builder.apps.container
    .new('nginx', nginx.image, nginx.tag)
    .withMount('conf', '/etc/nginx/conf.d/default.conf', 'default.conf')
    .withRessources('16Mi')
  )
  .withVolume(
    {
      name: 'conf',
      secret: {
        secretName: 'synapse-delegation-nginx-config',
        items: [
          {
            key: 'default.conf',
            path: 'default.conf',
          },
        ],
      },
    },
  ),
  builder.core.service
  .new('delegation-service', 'default', 'delegation-nginx')
  .withClusterIP('None')
  .withPort(port=80, name='http'),
]