local compiler = import 'lib/utils/compile.libsonnet';
compiler.entrypoint(
  [
    (import 'esphome.libsonnet'),
    (import 'ecs.libsonnet'),
  ]
)
