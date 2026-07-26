local compiler = import 'utils/compile.libsonnet';

compiler.entrypoint((import 'app.libsonnet'))
