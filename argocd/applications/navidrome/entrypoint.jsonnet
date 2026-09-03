local compiler = import 'lib/utils/compile.libsonnet';
compiler.entrypoint(
  [
    (import 'navidrome.libsonnet'),
  ]
)
