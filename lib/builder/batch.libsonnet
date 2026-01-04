local definition = import 'definition.libsonnet';
{
  cronjob:: {
    new(name, namespace):: definition.new('batch/v1', 'CronJob', name, namespace) {
      spec+: {
        jobTemplate+: {
          spec+: {
            template+: {
              spec+: {
                restartPolicy: 'OnFailure',
              },
            },
          },
        },
      },

      withSchedule(schedule):: self {
        spec+: {
          schedule: schedule,
        },
      },

      withTemplateSpec(spec)::
        assert std.isObject(spec);
        self {
          spec+: {
            jobTemplate+: {
              spec+: {
                template+: {
                  spec+: spec,
                },
              },
            },
          },
        },


      withRestartPolicy(policy):: self.withTemplateSpec(
        {
          restartPolicy: policy,
        }
      ),

      withVolumes(volumes):: self.withTemplateSpec({
        assert std.isArray(volumes),
        volumes+: volumes,
      }),

      withVolume(volume):: self.withTemplateSpec({
        assert std.isObject(volume),
        volumes+: [volume],
      }),

      withInitContainers(containers):: self.withTemplateSpec({
        assert std.isArray(containers) : 'Containers has to be an array of containers',
        initContainers+: containers,
      }),

      withInitContainer(container):: self.withTemplateSpec({
        assert std.isObject(container),
        assert std.objectHas(container, 'name') : 'The container is missing a name',
        assert std.objectHas(container, 'image') : 'The container is missing an image',
        initContainers+: [container],
      }),

      withContainer(container):: self.withTemplateSpec({
        assert std.isObject(container),
        assert std.objectHas(container, 'name') : 'The container is missing a name',
        assert std.objectHas(container, 'image') : 'The container is missing an image',
        containers+: [container],
      }),

      withConcurrencyPolicy(policy):: self {
        assert std.isString(policy),
        assert std.member(['Allow', 'Forbid', 'Replace'], policy) : 'Invalid policy name',
        spec+: {
          concurrencyPolicy: policy,
        },

      },
    },
  },
}
