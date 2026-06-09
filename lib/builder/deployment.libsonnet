local definition = import 'definition.libsonnet';
local globals = import 'globals.libsonnet';
{
  new(name, namespace):: definition.new(name=name, namespace=namespace, kind='Deployment', apiVersion='apps/v1') {
    spec+: {
      selector+: {
        matchLabels+: {
          app: name,
        },
      },
      template+: {
        metadata+: {
          labels+: {
            app: name,
          },
        },
      },
    },

    asStatefulSet(serviceName=null, withAntiAffinity=true):: self {
      kind: 'StatefulSet',
      [if serviceName != null then 'spec']+: {
        serviceName: serviceName,
      },
    } + if withAntiAffinity then {
      spec+: {
        template+: {
          spec+: {
            affinity+: {
              nodeAffinity+: {
                requiredDuringSchedulingIgnoredDuringExecution+: {
                  nodeSelectorTerms+: [{
                    matchExpressions+: [{
                      key: 'kubernetes.io/hostname',
                      operator: 'NotIn',
                      values: globals.instable_nodes,
                    }],
                  }],
                },
              },
            },
          },
        },
      },
    } else {},

    withReplicas(replicas)::
      assert std.isNumber(replicas);
      self {
        spec+: {
          replicas: replicas,
        },
      },

    withTemplateSpec(spec)::
      assert std.isObject(spec);
      self {
        spec+: {
          template+: {
            spec+: spec,
          },
        },
      },


    withMaxUnavailable(maxUnavailable)::
      assert std.isString(maxUnavailable) || std.isNumber(maxUnavailable);
      self {
        spec+: {
          strategy: {
            type: 'RollingUpdate',
            rollingUpdate: {
              maxUnavailable: maxUnavailable,
            },
          },
        },
      },

    withContainer(container, init=false):: self.withTemplateSpec({
      assert std.isObject(container),
      assert std.objectHas(container, 'name'),
      assert std.objectHas(container, 'image'),
      [if init then 'initContainers' else 'containers']+: [container],
    }),

    withVolume(volume):: self.withTemplateSpec({
      assert std.isObject(volume),
      volumes+: [volume],
    }),

    withReloaderAnnotation():: self {
      metadata+: {
        annotations+: {
          'reloader.stakater.com/auto': 'true',
        },
      },
    },
  },
}
