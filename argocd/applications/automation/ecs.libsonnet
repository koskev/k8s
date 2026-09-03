function(input=import 'defaultInput.libsonnet')
  local k8s = import 'k8s.libsonnet';
  local image = (import 'images.libsonnet').container.ecs;

  local name = 'ecs';
  local namespace = input.applications.automation.config.namespace;

  [
    k8s.v1.namespace(namespace),
    k8s.builder.apps.deployment
    .new(name, namespace)
    .withContainer(
      k8s.builder.apps.container
      .new(name, image.image, image.tag)
      .withImagePullPolicy('Always')
    ),
  ]
