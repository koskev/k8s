local k8s = import 'k8s.libsonnet';
local image = (import 'images.libsonnet').container.wireguard;
local globals = import 'globals.libsonnet';

local name = 'wireguard';
local namespace = 'default';
local port = 51820;

[
  k8s.secret.externalSecretExtract('wg-config', namespace),
  k8s.v1.service(
    name=name,
    namespace=namespace,
    udpPorts=[port],
    type='LoadBalancer',
    loadBalancerIP=globals.ips.wireguard,
  ),
  k8s.builder.apps.deployment.new(name, namespace)
  .withReloaderAnnotation()
  .withContainer(
    k8s.builder.apps.container.new('wireguard', image.image, image.tag)
    .withEnv('PUID', '1000')
    .withEnv('GUID', '1000')
    .withEnv('TZ', 'Europe/Berlin')
    .withMount('wg-config', '/config/wg_confs')
    .withExtraSpec({
      securityContext: {
        capabilities: {
          add: [
            'NET_ADMIN',
          ],
        },
        privileged: true,
      },
    })
    .withMemoryRequest('64Mi')
    .withCpuRequest('100m')
    .withMemoryLimit('256Mi')
  )
  .withVolume({
    name: 'wg-config',
    secret: {
      secretName: 'wg-config',
    },
  }),
]
