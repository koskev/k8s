function(input=import 'defaultInput.libsonnet')
  local k8s = import 'k8s.libsonnet';
  local images = import 'images.libsonnet';
  local tf = import 'tf/tf.libsonnet';

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
      .withEnv('OIDC_ALLOW_LOCAL_ISSUERS', true)
      .withEnv('SWAGGER_ENABLED', input.globals.config.type == 'test')
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

    std.objectValues({
      local values = self,
      local getBookorbitRef(name) = input.applications.openbao.secrets.config.secrets.ref().plain('["openbao_secrets/bookorbit.enc.yaml"].data["%s"]' % name),
      local user = getBookorbitRef('username'),
      local password = getBookorbitRef('password'),
      local email = getBookorbitRef('email'),
      local setup_token = getBookorbitRef('setup_token'),
      provider: tf.provider('bookorbit', {
        // vault_kv_secret_v2.secrets["openbao_secrets/telegraf-config.enc.yaml"]
        url: 'https://bookorbit.%s' % input.globals.config.domain,
        username: user,
        password: password,
        email: email,
        setup_token: setup_token,
        //username: values.adminAccount.ref().fields.data('["user"]'),
        //password: values.adminAccount.ref().fields.data('["password"]'),
      }),
      setup: tf.providers.bookorbit.resource.bookorbitSetup.new('%s-setup' % name, email, password, setup_token, user),
      //setup: tf.providers.bookorbit.resource.bookorbitSetup.new('%s-setup' % name, '', values.adminAccount.ref().fields.data('["password"]'), values.initSecret.ref().fields.data(), values.adminAccount.ref().fields.data('["username"]')),
      //initSecret: tf.providers.kubernetes.data.kubernetesSecret.new('%s-init-secret' % name).addCustomData('metadata', {
      //  name: initSecretName,
      //  namespace: namespace,
      //}),
      //adminAccount: tf.providers.vault.ephemeral.vaultKvSecretV2.new('%s-oidc-secret' % name, 'secrets', 'oidc/%s' % name)
      //             .withDependsOn(['vault_kv_secret_v2.secrets']),
      //secret: tf.providers.vault.data.vaultKvSecretV2.new('%s-oidc-secret' % name, 'secrets', 'oidc/%s' % name),
      //oidcProvider: tf.providers.bookorbit.resource.bookorbitOidcProvider.new('%s-oidc' % name, 'authelia', self.secret.ref().fields.data('["password"]'), input.globals.config.urls.auth, 'authelia'),
    }),
  ]
