{
  local outerSelf = self,
  types: {
    argocd: 'argocd',
    tf: 'tf',
    script: 'script',
  },
  tf: {
    stages: {
      kubernetes: 'kubernetes',
      bootstrap: 'bootstrap',
    },
    defaultStage: self.stages.kubernetes,
  },

  entrypoint(resources, resourceType=outerSelf.types.argocd)::
    function(input=import 'defaultInput.libsonnet', type=resourceType, tfStage=self.tf.defaultStage)
      assert (std.isArray(resources) && std.all(std.map(function(entry) std.isFunction(entry), resources))) || std.isFunction(resources) : 'Resources needs to be an array of functions or a function';
      local resourcesArr = if std.isArray(resources) then resources else [resources];
      outerSelf.build(type, std.map(function(res) res(input), resourcesArr), outerSelf.types.argocd, tfStage),

  build(type=outerSelf.types.argocd, resources, fallback_type=null, tfStage=self.tf.defaultStage)::
    local array_of_types =
      std.filter(
        function(res)
          std.get(res, '_type', fallback_type) == type
          && std.get(res, '_stage', outerSelf.tf.defaultStage) == tfStage
        ,
        std.flattenDeepArray(resources)
      );
    if type == outerSelf.types.tf then
      std.foldl(function(acc, elem) std.mergePatch(acc, elem), array_of_types, {})
    else if type == outerSelf.types.script then
      std.map(function(entry) '%(script)s %(arguments)s' % entry, array_of_types)
    else
      array_of_types,
}
