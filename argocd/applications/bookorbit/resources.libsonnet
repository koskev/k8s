function(input=import 'defaultInput.libsonnet')
  local k8s = import 'k8s.libsonnet';
  local images = import 'images.libsonnet';

  local name = 'bookorbit';
  local namespace = 'bookorbit';
  local host = '%s.%s' % [name, input.globals.config.domain];
  local port = 3000;

  local jwtSecretName = '%s-jwt' % name;
  local initSecretName = '%s-init' % name;
  // TODO: No OIDC until https://togithub.com/bookorbit/bookorbit/issues/802
  [
    k8s.builder.core.namespace.new(namespace),
    k8s.builder.apps.deployment.new(name, namespace).asStatefulSet(name)
    .withContainer(
      k8s.builder.apps.container.new(name, images.container.bookorbit.image, images.container.bookorbit.tag)
      .withPort(port)
      .withEnvFromSecret('%s-%s' % [name, name])
      .withEnvValueFromSecret('JWT_SECRET', jwtSecretName, 'password')
      .withEnvValueFromSecret('SETUP_BOOTSTRAP_TOKEN', initSecretName, 'password')
      .withEnv('HOST', '0.0.0.0')
      .withEnv('PORT', port)
      .withEnv('LIBRARY_BROWSE_ROOT', '/data')
      .withEnv('APP_URL', 'https://%s' % host)
      .withMount('datadir', '/data')
    )
    .withVolume(
      {
        name: 'datadir',
        hostPath: {
          path: '/mnt/shared_data/k8s/bookorbit',
        },
      }

    )
    ,
    k8s.builder.core.service.new(name, namespace)
    .withPort(port),
    k8s.networking.ingress(name, namespace, host, port),

    k8s.secret.passwordSecret(jwtSecretName, namespace, 64),
    k8s.secret.password(initSecretName, namespace, jwtSecretName),
    k8s.db.database(name, namespace, extensions=['vector']),
    k8s.db.user(name, namespace, secretTemplate={
      POSTGRES_HOST: '{{ .Hostname }}',
      POSTGRES_PORT: '{{ .Port }}',
      POSTGRES_USER: '{{ .Role }}',
      POSTGRES_PASSWORD: '{{ .Password }}',
      POSTGRES_DB: '{{ .Database }}',
    }),
  ]
