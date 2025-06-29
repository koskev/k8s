local k8s = import 'k8s.libsonnet';
local image = (import 'images.libsonnet').container.fittrackee;

local name = 'fittrackee';
local namespace = 'fittrackee';

local host = 'fittrackee.kokev.de';
local port = 5000;

[
  k8s.v1.namespace(namespace),
  k8s.db.database(name, namespace),
  k8s.db.user(name, namespace),
  k8s.v1.service(name, namespace, ports=[port]),
  k8s.networking.ingress(name, namespace, host, servicePort=port),
  k8s.builder.apps.deployment.new(name, namespace)
  .withVolume({
    name: 'uploads',
    hostPath: {
      path: '/mnt/shared_data/k8s/fittrackee/uploads',
    },
  })
  .withVolume({
    name: 'logs',
    emptyDir: {},
  })
  .withContainer(
    k8s.builder.apps.container
    .new(name, image.image, image.tag)
    .withMount('uploads', path='/usr/src/app/uploads')
    .withMount('logs', path='/usr/src/app/logs')
    .withEnv('HOST', host)
    .withEnv('UI_URL', 'https://%s' % host)
    .withEnvValueFromSecret('DATABASE_URL', '%s-%s' % [name, name], 'POSTGRES_URL')
    .withCommand(['sh', 'docker-entrypoint.sh'])
  ),


]
