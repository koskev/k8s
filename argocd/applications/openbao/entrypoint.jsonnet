function(type='argocd')
  (import 'lib/utils/compile.libsonnet').build(type, import 'openbao.libsonnet', 'argocd')
