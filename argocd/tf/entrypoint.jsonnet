local compiler = import 'utils/compile.libsonnet';
function(type=compiler.types.argocd)
  compiler.build(
    type,
    (import 'system.libsonnet'),
    compiler.types.argocd
  )
