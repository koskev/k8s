local definition = import 'definition.libsonnet';
{
  new(name):: definition.new('v1', 'Namespace', name) {


    withPrivileged():: self {
      metadata+: {
        labels+: {
          'pod-security.kubernetes.io/enforce': 'privileged',
        },
      },
    },
  },
}
