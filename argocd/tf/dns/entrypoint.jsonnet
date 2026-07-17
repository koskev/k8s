local compiler = import 'utils/compile.libsonnet';
function(type=compiler.types.argocd)
  compiler.build(
    type,
    (import 'dns.libsonnet')
    ,
    compiler.types.argocd
  )
