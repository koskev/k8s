local compiler = import 'lib/utils/compile.libsonnet';
compiler.entrypoint(
  [
    (import 'openbao.libsonnet'),
    (import 'pki/pki.libsonnet'),
    (import 'luks/luks.libsonnet'),
    (import 'system/system.libsonnet'),
    (import 'secrets/secrets.libsonnet'),
  ]
)
