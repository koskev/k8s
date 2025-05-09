local k8s = import 'k8s.libsonnet';
local image = (import 'images.libsonnet').container.ecs;

local name = 'ecs';
local namespace = 'automation';

[
  k8s.builder.apps.deployment
  .new(name, namespace)
  .withContainer(
    k8s.builder.apps.container
    .new(name, image.image, image.tag)
    .withImagePullPolicy('Always')
  ),
]
