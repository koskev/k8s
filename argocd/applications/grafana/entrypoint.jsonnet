local compiler = import 'lib/utils/compile.libsonnet';
compiler.entrypoint(
  [
    (import 'grafana.libsonnet'),
  ]
)
