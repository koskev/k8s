local compiler = import 'utils/compile.libsonnet';
{
  local outerSelf = self,
  local tf = self,

  providers:: (import 'vendor/_gen/modules.libsonnet'),
  kubernetesSecret(name, namespace, file, dependencies=[])::
    local tfName = 'kubernetes_secret_%s' % name;
    std.objectValues({
      sopsFile: tf.providers.sops.data.sopsFile.new(tfName, file).withDependsOn(dependencies),
      secret: tf.providers.kubernetes.resource.kubernetesSecretV1.new(tfName)
              .withData(self.sopsFile.ref().fields.data())
              .addCustomData(
        'metadata', {
          name: name,
          namespace: namespace,
        }
      ).withDependsOn(dependencies),
    }),
  call(val):: '${ %s }' % val,
  stage(stage, resources)::
    std.map(function(res) res { _stage:: stage }, resources),

  base(type, resource, name, body):: {
    _type:: compiler.types.tf,
    [type]+: {
      [resource]+: { [name]: [body] },
    },
  },
  data(resource, name, body):: outerSelf.base('data', resource, name, body),
  resource(resource, name, body):: outerSelf.base('resource', resource, name, body),
  moved(old, new):: {
    _type:: compiler.types.tf,
    moved+: [{
      from: old,
      to: new,
    }],
  },
  provider(name, body={}):: {
    _type:: compiler.types.tf,
    provider+: { [name]: body },
  },
  sops(name, filename):: outerSelf.data('sops_file', name, { source_file: filename }),
}
