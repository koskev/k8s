{
  new(name, namespace):: {
    assert std.isString(name),
    assert std.isString(namespace),
    local data = self,
    _name: name,
    _namespace: namespace,
    _spec: {},
    _env: [],


    withReplicas(replicas)::
      assert std.isNumber(replicas);
      self {
        _spec: data._spec {
          replicas: replicas,
        },
      },

    withTemplateSpec(spec)::
      assert std.isObject(spec);
      self {
        _spec: data._spec {
          template+: {
            spec+: spec,
          },
        },
      },


    withMaxUnavailable(maxUnavailable)::
      assert std.isString(maxUnavailable) || std.isNumber(maxUnavailable);
      self {
        _spec: data._spec {
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
      containers+: [container],
    }),

    withVolume(volume):: self.withTemplateSpec({
      assert std.isObject(volume),
      volumes+: [volume],
    }),

    build():: {
      apiVersion: 'apps/v1',
      kind: 'Deployment',
      metadata: {
        name: data._name,
        namespace: data._namespace,
        labels: {
          app: data._name,
        },
      },
      spec: data._spec {
        selector+: {
          matchLabels+: {
            app: data._name,
          },
        },
        template+: {
          metadata+: {
            labels+: {
              app: data._name,
            },
          },
        },
      },
    },
  },
}
