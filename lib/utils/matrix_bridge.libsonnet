local secret = import 'secret.libsonnet';
local yqgo = (import 'images.libsonnet').container.yqgo;
local k8s = import 'k8s.libsonnet';


local configName(name) = '%s-config' % name;

{
  createMatrixBridge(name, namespace, image, binaryName, port)::
    k8s.secret.secretStoreKubernetes(name, namespace) +
    [
      k8s.db.database(name, namespace),
      k8s.db.user(name, namespace),
      k8s.secret.externalSecretExtract(
        name='%s-database-uri' % name,
        namespace=namespace,
        key='%s-%s' % [name, name],
        templateData={
          'config.yaml':
            |||
              database:
                uri: '{{ .POSTGRES_URL }}?sslmode=disable'
            |||,
        },
        secretStoreRef={
          name: name,
          kind: 'SecretStore',
        }
      ),
      k8s.builder.apps.deployment.new(name, namespace)
      .asStatefulSet()
      .withReplicas(1)
      .withContainer(
        k8s.builder.apps.container.new('prepare-config', yqgo.image, yqgo.tag)
        .withCommand(['/bin/sh'])
        .withArgs([
          '-c',
          "yq eval-all 'select(fileIndex == 0) * select(fileIndex == 1)' /data/config.yaml /db/config.yaml > /out/config.yaml",
        ])
        .withMount(configName(name), '/out/')
        .withMount('%s-config-secret' % name, '/data')
        .withMount('%s-database-uri' % name, '/db'),
        true
      )
      .withContainer(
        k8s.builder.apps.container.new(name, image.image, image.tag)
        .withCommand(['bash', '-c'])
        .withArgs([
          'su-exec $UID:$GID /usr/bin/%s --no-update -c /data/config.yaml' % binaryName,
        ])
        .withPort(port)
        .withMount(configName(name), '/data')
        .withRessources('128Mi')
      )
      .withVolume({
        name: configName(name),
        emptyDir: {},
      })
      .withVolume({
        name: '%s-config-secret' % name,
        secret: {
          secretName: '%s-config' % name,
        },
      })
      .withVolume({
        name: '%s-database-uri' % name,
        secret: {
          secretName: '%s-database-uri' % name,
        },
      }),
      k8s.builder.core.service.new('%s-service' % name, namespace, name)
      .withPort(port, name='bridge')
      .withPort(9090, name='metrics')
      .withClusterIP()
      ,
      secret.externalSecretExtract(configName(name), namespace),
    ],
}
