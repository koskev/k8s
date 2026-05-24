local compiler = import 'lib/utils/compile.libsonnet';
function(type=compiler.types.argocd)
  compiler.build(type, import 'resources.libsonnet', compiler.types.argocd)
