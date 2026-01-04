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

      withContainer(container):: self.withTemplateSpec({
        assert std.isObject(container),
        assert std.objectHas(container, 'name'),
        assert std.objectHas(container, 'image'),
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
