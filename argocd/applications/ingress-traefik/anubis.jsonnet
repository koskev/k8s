local anubis = import 'lib/anubis.libsonnet';
local k8s = import 'lib/k8s.libsonnet';

local name = 'anubis';
local namespace = 'anubis';
[
  k8s.networking.ingress(name, namespace, host='anubis.kokev.de', servicePort=8080, ingressClass='traefik-external'),
  k8s.builder.core.service.new(name, namespace).withPort(port=8080, name=name),
  k8s.builder.apps.deployment.new(name, namespace).withContainer(
    anubis.anubisContainer(name, port=8080, extraEnv=[
      {
        name: 'TARGET',
        value: ' ',
      },
      // TODO: activate once globing is merged and released
      //{
      //  name: 'REDIRECT_DOMAINS',
      //  value: '*.kokev.de',
      //},
      {
        name: 'PUBLIC_URL',
        value: 'https://anubis.kokev.de',
      },
      {
        name: 'COOKIE_DOMAIN',
        value: 'kokev.de',
      },
    ])

  ),
  anubis.anubisPasswordSecret(name, namespace),
  {
    apiVersion: 'traefik.io/v1alpha1',
    kind: 'Middleware',
    metadata: {
      name: 'anubis-auth',
      namespace: namespace,
    },
    spec: {
      forwardAuth: {
        address: 'http://%s.%s:8080/.within.website/x/cmd/anubis/api/check' % [name, namespace],
      },
    },
  },
  {
    kind: 'Namespace',
    apiVersion: 'v1',
    metadata: {
      name: 'anubis',
    },
  },

]
