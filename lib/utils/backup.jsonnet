local k8s = import 'k8s.libsonnet';

local image = (import 'images.libsonnet').container.borgmatic;

{
  new(name, namespace):: {
    local outerSelf = self,
    local mount_prefix = '/backups',

    name: 'backup-%s' % name,
    namespace: namespace,
    schedule: '@hourly',

    claims: [],

    directories: [],
    excludes: [],
    repository: {
      path: '',
      passwordPath: '',
    },
    create_arguments: '-C lzma -v --stats --progress',
    prune_arguments: '--list --stats -v',
    prune: {
      hourly: 12,
      daily: 7,
      weekly: 25,
      monthly: 12,
      yearly: 1,
    },

    withPrune(hourly=0, daily=0, weekly=0, monthly=0, yearly=0):: self {
      prune: {
        hourly: hourly,
        daily: daily,
        weekly: weekly,
        monthly: monthly,
        yearly: yearly,
      },
    },

    withRepository(path, passwordPath, knownHost):: self {
      repository: {
        path: path,
        knownHost: knownHost,
        passwordPath: passwordPath,
      },
    },

    withDirectory(dir):: self {
      assert std.isString(dir),
      directories+: [dir],
    },

    withExclude(pattern):: self {
      excludes+: [pattern],
    },

    withSchedule(schedule):: self {
      schedule: schedule,
    },

    withClaim(claimName, mountName):: self {
      claims+: [{
        claimName: claimName,
        mountName: mountName,
      }],
    },

    buildCMD()::
      local repo = self.repository.path;
      std.join(' && ', [
        'echo "%s" >> ~/.ssh/known_hosts' % self.repository.knownHost,
        'set -x',
        'borg create %(args)s %(repo)s::{hostname}-{now} %(excludes)s %(dirs)s' % {
          args: outerSelf.create_arguments,
          repo: repo,
          excludes: std.join(' ', std.map(function(exclude) '--exclude %s' % exclude, outerSelf.excludes)),
          dirs: std.join(' ', std.map(function(dir) '%s/%s' % [mount_prefix, dir], outerSelf.directories)),
        },
        'borg prune %(args)s --keep-hourly=%(hourly)d --keep-daily=%(daily)d --keep-weekly=%(weekly)d --keep-monthly=%(monthly)d --keep-yearly=%(yearly)d %(repo)s' % (self.prune { repo: repo, args: outerSelf.prune_arguments }),
      ]),

    build():: [
      k8s.secret.externalSecretExtract(self.name, self.namespace, self.repository.passwordPath),
      // Add cronjob with secret mount as BORG_PASSPRASE
      k8s.builder.batch.cronjob.new(self.name, self.namespace)
      .withSchedule(self.schedule)
      .withConcurrencyPolicy('Forbid')
      .withContainer(
        k8s.builder.apps.container.new(self.name, image.image, image.tag)
        .withEnvValueFromSecret('BORG_PASSPHRASE', self.repository.passwordPath, 'BORG_PASSPHRASE')
        .withCommand(['bash', '-c'])
        .withArgs([self.buildCMD()])
        // TODO: Change to not be root
        .withMount('ssh', '/root/.ssh/id_ed25519', 'id_ed25519', readonly=true)
        .withExtraSpec({
          volumeMounts+: [
            {
              name: claim.claimName,
              mountPath: '%s/%s' % [mount_prefix, claim.mountName],
            }
            for claim in outerSelf.claims
          ],
        })
      )
      .withVolumes([
        {
          name: claim.claimName,
          persistentVolumeClaim: {
            claimName: claim.claimName,
          },
        }
        for claim in outerSelf.claims
      ])
      .withVolume(
        {
          name: 'ssh',
          secret: {
            secretName: outerSelf.repository.passwordPath,
            defaultMode: std.parseOctal('600'),
          },
        },
      ),
    ],
  },
}
