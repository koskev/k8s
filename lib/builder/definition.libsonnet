{
  new(apiVersion, kind, name, namespace):: {
    assert std.isString(apiVersion),
    assert std.isString(kind),
    assert std.isString(name),
    assert std.isString(namespace),
    apiVersion: apiVersion,
    kind: kind,
    metadata: {
      name: name,
      namespace: namespace,
      labels: {
        app: name,
      },
    },

    withMetadata(metadata):: self {
      metadata+: metadata,
    },

    withWave(wave):: self.withMetadata({
      assert std.isNumber(wave),
      annotations+: {
        'argocd.argoproj.io/sync-wave': '%d' % wave,
      },
    }),

    withSpec(spec):: self {
      spec+: spec,
    },

  },
}
