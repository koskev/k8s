{
  service(name, namespace, app=name, ports=[])::
    {
      apiVersion: 'v1',
      kind: 'Service',
      metadata: {
        name: name,
        namespace: namespace,
      },
      spec: {
        selector: {
          app: app,
        },
        ports: [
          {
            protocol: 'TCP',
            port: port,
            targetPort: port,
          }
          for port in ports
        ],
      },
    },
  namespace(name):: {
    apiVersion: 'v1',
    kind: 'Namespace',
    metadata: {
      name: name,
    },
  },

}
