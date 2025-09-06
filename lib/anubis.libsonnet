local k8s = import 'k8s.libsonnet';
local image = (import 'images.libsonnet').container.anubis;
{
  anubisServicePort(port, targetPort=port):: {
    protocol: 'TCP',
    port: port,
    targetPort: targetPort,
    name: 'anubis',
  },
  anubisPasswordSecret(name, namespace):: k8s.secret.externalSecretExtract(name, namespace, key='anubis'),
  anubisContainer(name, port, difficulty=4, extraEnv=[]):: {
    name: 'anubis',
    image: '%s:%s' % [image.image, image.tag],
    env: [
      {
        name: 'BIND',
        value: ':%d' % port,
      },
      {
        name: 'DIFFICULTY',
        value: '%d' % difficulty,
      },
      {
        name: 'ED25519_PRIVATE_KEY_HEX',
        valueFrom: {
          secretKeyRef: {
            name: name,
            key: 'anubis-key',
          },
        },
      },
      {
        name: 'METRICS_BIND',
        value: ':9090',
      },
      {
        name: 'SERVE_ROBOTS_TXT',
        value: 'true',
      },
    ] + extraEnv,
    resources: {
      limits: {
        cpu: '750m',
        memory: '256Mi',
      },
      requests: {
        cpu: '250m',
        memory: '256Mi',
      },
    },
    securityContext: {
      runAsUser: 1000,
      runAsGroup: 1000,
      runAsNonRoot: true,
      allowPrivilegeEscalation: false,
      capabilities: {
        drop: [
          'ALL',
        ],
      },
      seccompProfile: {
        type: 'RuntimeDefault',
      },
    },
  },
}
