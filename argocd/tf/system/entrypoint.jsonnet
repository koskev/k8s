local compiler = import 'utils/compile.libsonnet';
compiler.entrypoint(
  (import 'system.libsonnet')
)
