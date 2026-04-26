local builder = import 'builder/builder.libsonnet';
local valkeyImage = (import 'images.libsonnet').container.valkey;
{
  new(name, namespace, port=6379):: [
    builder.apps.deployment.new(name, namespace).withContainer(
      builder.apps.container
      .new(name, valkeyImage.image, valkeyImage.tag)
      .withPort(port)
    ),
    builder.core.service.new(name, namespace).withPort(port),
  ],
}
