local definition = import 'definition.libsonnet';
{
  new(name, namespace):: definition.new(name=name, namespace=namespace, kind='Deployment', apiVersion='apps/v1') {
    spec+: {
      selector+: {
        matchLabels+: {
          app: name,
        },
      },
      template+: {
        metadata+: {
          labels+: {
            app: name,
          },
        },
      },
    },

    withReplicas(replicas)::
      assert std.isNumber(replicas);
      self {
        spec+: {
          replicas: replicas,
        },
      },

    withTemplateSpec(spec)::
      assert std.isObject(spec);
      self {
        spec+: {
          template+: {
            spec+: spec,
          },
        },
      },


    withMaxUnavailable(maxUnavailable)::
      assert std.isString(maxUnavailable) || std.isNumber(maxUnavailable);
      self {
        spec+: {
          strategy: {
            type: 'RollingUpdate',
            rollingUpdate: {
              maxUnavailable: maxUnavailable,
            },
          },
        },
      },

    withContainer(container):: self.withTemplateSpec({
      assert std.isObject(container),
      assert std.objectHas(container, 'name'),
      assert std.objectHas(container, 'image'),
      containers+: [container],
    }),

    withVolume(volume):: self.withTemplateSpec({
      assert std.isObject(volume),
      volumes+: [volume],
    }),
  },
}
