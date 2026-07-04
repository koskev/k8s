local compiler = import 'lib/utils/compile.libsonnet';
function(type=compiler.types.argocd)
  compiler.build(
    type,
    (import 'openbao.libsonnet')
    + (import 'pki/pki.libsonnet')
    + (import 'luks/luks.libsonnet')
    ,
    compiler.types.argocd
  )
