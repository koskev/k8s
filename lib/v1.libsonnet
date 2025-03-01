{
  service(name, namespace, app=name, ports=[], udpPorts=[], annotations={}, type='ClusterIP')::
    {
      apiVersion: 'v1',
      kind: 'Service',
      metadata: {
        name: name,
        namespace: namespace,
        annotations: annotations,
      },
      spec: {
        type: type,
        selector: {
          app: app,
        },
        ports:
          [
            {
              protocol: 'TCP',
              port: port,
              targetPort: port,
            }
            for port in ports
          ] +
          [
            {
              protocol: 'UDP',
              port: port,
              targetPort: port,
            }
            for port in udpPorts
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
