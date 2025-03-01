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
              name: '%d-tcp' % port,
              protocol: 'TCP',
              port: port,
              targetPort: port,
            }
            for port in ports
          ] +
          [
            {
              // TODO: support name in parameter
              name: '%d-udp' % port,
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
