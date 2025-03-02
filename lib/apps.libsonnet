{
  deployment(name, namespace, spec, replicas=1, maxUnavailable='25%'):: {
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
