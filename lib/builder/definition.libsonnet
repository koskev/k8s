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

    withSpec(spec):: self {
      spec+: spec,
    },
  },
}
