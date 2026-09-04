function(input=import 'defaultInput.libsonnet')
  local argocd = import 'argocd.libsonnet';
  local chart = (import 'images.libsonnet').helm.metallb;
  local k8s = import 'lib/k8s.libsonnet';

  local namespace = 'metallb-system';

  local addressPool(name, addresses, autoAssign=true) =
    k8s.builder.definition.new('metallb.io/v1beta1', 'IPAddressPool', name, namespace)
    .withWave(2)
    .withSpec({
      addresses: addresses,
      autoAssign: autoAssign,
    });

  [
    k8s.builder.core.namespace.new(namespace),
    k8s.builder.definition.new('metallb.io/v1beta1', 'L2Advertisement', 'example', namespace)
    .withWave(2)
    .withSpec({
      ipAddressPools: std.objectFields(input.applications.metallb_system.config.pools),
    }),
    argocd.applicationHelm(
      name='metallb',
      targetnamespace=namespace,
      chart=chart,
      values={
        controller: {
          priorityClassName: 'system-cluster-critical',
          resources: {
            limits: {
              cpu: '100m',
              memory: '100Mi',
            },
          },
        },
        speaker: {
          priorityClassName: 'system-cluster-critical',
          //  Since most nodes are cp nodes, this needs to be true
          ignoreExcludeLB: true,
          resources: {
            limits: {
              cpu: '100m',
              memory: '200Mi',
            },
          },
        },
      }
    ),
  ] + std.map(function(pool) addressPool(pool.key, pool.value.addresses, std.get(pool.value, 'autoAssign', true)), std.objectKeysValues(input.applications.metallb_system.config.pools))
