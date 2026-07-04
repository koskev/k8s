local compiler = import 'utils/compile.libsonnet';
function(type=compiler.types.argocd)
  compiler.build(
    type,
    (import 'system.libsonnet')
    + (import 'dns.libsonnet')
    ,
    compiler.types.argocd
  )
