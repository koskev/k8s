{
  local outerSelf = self,
  types: {
    argocd: 'argocd',
    tf: 'tf',
    script: 'script',
  },
  build(type=outerSelf.types.argocd, resources, fallback_type=null)::
    local array_of_types = std.prune(
      std.filter(
        function(res)
          std.get(res, '_type', fallback_type) == type, resources
      )
    );
    if type == outerSelf.types.tf then
      std.foldl(function(acc, elem) std.mergePatch(acc, elem), array_of_types, {})
    else if type == outerSelf.types.script then
      std.map(function(entry) '%(script)s %(arguments)s' % entry, array_of_types)
    else
      array_of_types,
}
