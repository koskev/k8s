local definition = import 'definition.libsonnet';
{
  new(name, namespace, app):: definition.new('v1', 'Service', name, namespace) {
    spec: {
      selector: {
        app: app,
      },
    },

    withClusterIP(ip):: self {
      assert std.isNumber(ip) || ip == 'None',
      spec+: {
        clusterIP: ip,
        type: 'ClusterIP',
      },
    },

    withPort(port, targetPort=port, protocol='TCP', name=null):: self {
      spec+: {
        ports+: [{
          port: port,
          protocol: protocol,
          targetPort: targetPort,
          [if name != null then 'name']: name,
        }],
      },
    },
  },
}
