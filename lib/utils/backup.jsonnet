local k8s = import 'k8s.libsonnet';

local image = (import 'images.libsonnet').container.borgmatic;
local psql_image = (import 'images.libsonnet').container.postgres;

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
    databaseSecrets: [],
    volumes: [],
    repository: {
      path: '',
      passwordPath: '',
      knownHost: '',
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

    withVolumes(volumes):: self {
      volumes+: volumes,
    },

    withPostgresDatabase(secretName):: self {
      assert std.isString(secretName) : 'The secretName needs to be a string!',
      databaseSecrets+: [secretName],
    },

    buildCMD()::
      local repo = self.repository.path;
      std.join(' && ', [
        'echo "%s" >> ~/.ssh/known_hosts' % self.repository.knownHost,
        'borg create %(args)s %(repo)s::{hostname}-{now} %(excludes)s %(dirs)s /postgres' % {
          args: outerSelf.create_arguments,
          repo: repo,
          excludes: std.join(' ', std.map(function(exclude) '--exclude %s' % exclude, outerSelf.excludes)),
          dirs: std.join(' ', std.map(function(dir) '%s/%s' % [mount_prefix, dir], outerSelf.directories)),
        },
        'borg prune %(args)s --keep-hourly=%(hourly)d --keep-daily=%(daily)d --keep-weekly=%(weekly)d --keep-monthly=%(monthly)d --keep-yearly=%(yearly)d %(repo)s' % (self.prune { repo: repo, args: outerSelf.prune_arguments }),
      ]),

    buildPostgresDumpContainers():: [
      k8s.builder.apps.container.new('%s-psql-dump' % self.name, psql_image.image, psql_image.tag)
      .withCommand([
        'bash',
        '-xc',
        'pg_dump --dbname=${POSTGRES_URL} > /postgres/${DATABASE_NAME}.bak',
      ])
      .withEnvFromSecret(secret)
      .withMount('postgres', '/postgres')
      for secret in outerSelf.databaseSecrets
    ],


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
        .withMount('postgres', '/postgres')
        .withExtraSpec({
          volumeMounts+: [
            {
              name: claim.claimName,
              mountPath: '%s/%s' % [mount_prefix, claim.mountName],
            }
            for claim in outerSelf.claims
          ],
        })
        .withExtraSpec({
          volumeMounts+: [
            {
              name: volume.name,
              mountPath: '%s/%s' % [mount_prefix, volume.name],
            }
            for volume in outerSelf.volumes
          ],
        })
      )
      .withInitContainers(outerSelf.buildPostgresDumpContainers())
      .withVolumes(outerSelf.volumes)
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
      )
      .withVolume({
        name: 'postgres',
        emptyDir: {},
      }),
    ],
  },
}
