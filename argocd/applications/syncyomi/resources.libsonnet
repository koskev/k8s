function(input=import 'defaultInput.libsonnet')
  local k8s = import 'k8s.libsonnet';
  local images = import 'images.libsonnet';

  local name = 'syncyomi';
  local namespace = 'syncyomi';
  local host = '%s.%s' % [name, input.globals.config.domain];
  local port = 8282;
  [
    k8s.builder.core.namespace.new(namespace),
    k8s.builder.apps.deployment.new(name, namespace).asStatefulSet(name)
    .withContainer(
      k8s.builder.apps.container.new(name, images.container.syncyomi.image, images.container.syncyomi.tag).withMount('config', '/config')
      .withPort(port)
    )
    .withVolume({
      name: 'config',
      secret: {
        secretName: '%s-%s' % [name, name],
      },
    })
    ,
    k8s.builder.core.service.new(name, namespace)
    .withPort(port),
    k8s.networking.ingress(name, namespace, host, port),
    k8s.db.database(name, namespace),
    k8s.db.user(name, namespace, secretTemplate={
      'config.toml': std.manifestTomlEx(
        {
          host: '0.0.0.0',
          port: port,
          checkForUpdates: false,
          databaseType: 'postgres',
          postgresHost: '{{ .Hostname }}',
          postgresPort: '{{ .Port }}',
          postgresUser: '{{ .Role }}',
          postgresPass: '{{ .Password }}',
        },
        ' '
      ),
    }),
  ]
