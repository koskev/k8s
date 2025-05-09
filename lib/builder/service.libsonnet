local definition = import 'definition.libsonnet';
{
  new(name, namespace, app=name):: definition.new('v1', 'Service', name, namespace) {
    spec: {
      selector: {
        app: app,
      },
    },

    withClusterIP(ip):: self {
      assert std.isString(ip),
      spec+: {
        clusterIP: ip,
        type: 'ClusterIP',
      },
    },

    withLoadBalancerIP(ip):: self {
      assert std.isString(ip),
      spec+: {
        loadBalancerIP: ip,
        type: 'LoadBalancer',
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
