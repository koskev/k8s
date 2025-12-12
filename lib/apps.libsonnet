{
  deployment(name, namespace, spec, replicas=1, maxUnavailable='25%', minReadySeconds=0):: {
    assert std.isString(name),
    assert std.isString(namespace),
    assert std.isObject(spec),
    assert std.isNumber(replicas),
    assert std.isNumber(minReadySeconds),
    assert std.isString(maxUnavailable) || std.isNumber(maxUnavailable),
    apiVersion: 'apps/v1',
    kind: 'Deployment',
    metadata: {
      name: name,
      namespace: namespace,
      labels: {
        app: name,
      },
    },
    spec: {
      minReadySeconds: minReadySeconds,
      strategy: {
        type: 'RollingUpdate',
        rollingUpdate: {
          maxUnavailable: maxUnavailable,
        },
      },
      replicas: replicas,
      selector: {
        matchLabels: {
          app: name,
        },
      },
      template: {
        metadata: {
          labels: {
            app: name,
          },
        },
        spec: spec,
      },
    },
  },
  statefulSet(name, namespace, spec, serviceName=name, replicas=1):: {
    assert std.isString(name),
    assert std.isString(namespace),
    assert std.isObject(spec),
    assert std.isString(serviceName),
    assert std.isNumber(replicas),
    apiVersion: 'apps/v1',
    kind: 'StatefulSet',
    metadata: {
      name: name,
      namespace: namespace,
    },
    spec: {
      selector: {
        matchLabels: {
          app: name,
        },
      },
      serviceName: serviceName,
      replicas: replicas,
      template: {
        metadata: {
          labels: {
            app: name,
          },
        },
        spec: spec,
      },
    },
  },
}
