local compiler = import 'lib/utils/compile.libsonnet';
compiler.entrypoint(
  [
    (import 'anubis.libsonnet'),
    (import 'internal.libsonnet'),
    (import 'external.libsonnet'),
  ]
)
