local compiler = import 'lib/utils/compile.libsonnet';
compiler.entrypoint(import 'external-secrets.libsonnet')
