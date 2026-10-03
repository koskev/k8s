function(input=import 'defaultInput.libsonnet')
  local k8s = import 'k8s.libsonnet';
  local images = import 'images.libsonnet';
  local name = 'shelfarr';
  local namespace = 'bookorbit';
  local port = 3000;
  local host = '%s.%s' % [name, input.globals.config.domain];
  [
    k8s.builder.apps.deployment.new(name, namespace).asStatefulSet(name)
    .withContainer(
      k8s.builder.apps.container.new(name, images.container.shelfarr.image, images.container.shelfarr.tag)
      .withPort(port)
      .withMount('ebooks', '/ebooks')
      .withMount('comics', '/comics')
      .withMount('audiobooks', '/audiobooks')
      .withEnv('SOLID_QUEUE_IN_PUMA', 1)
    )
    .withVolume({
      name: 'ebooks',
      emptyDir: {},
    })
    .withVolume({
      name: 'comics',
      emptyDir: {},
    })
    .withVolume({
      name: 'audiobooks',
      emptyDir: {},
    })
    ,
    k8s.builder.core.service.new(name, namespace)
    .withPort(port),
    k8s.networking.ingress(name, namespace, host, port),
  ]
