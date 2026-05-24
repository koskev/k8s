local compiler = import 'lib/utils/compile.libsonnet';
function(type=compiler.types.argocd)
  compiler.build(type, import 'external-secrets.libsonnet', compiler.types.argocd)
