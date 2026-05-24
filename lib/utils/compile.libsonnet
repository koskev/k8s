{
  build(type='argocd', resources, fallback_type=null)::
    local array_of_types = std.prune(
      std.filter(
        function(res)
          std.get(res, '_type', fallback_type) == type, resources
      )
    );
    if type == 'tf' then
      std.foldl(function(acc, elem) std.mergePatch(acc, elem), array_of_types, {})
    else
      array_of_types,
}
