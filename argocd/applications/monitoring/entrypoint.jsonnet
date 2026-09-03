local compiler = import 'lib/utils/compile.libsonnet';
compiler.entrypoint(
  [
    (import 'influx.libsonnet'),
    (import 'namespace.libsonnet'),
    (import 'ping-exporter.libsonnet'),
    (import 'prometheus.libsonnet'),
    (import 'telegraf.libsonnet'),
  ]
)
