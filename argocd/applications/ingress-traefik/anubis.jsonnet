local globals = import 'globals.libsonnet';
local k8s = import 'k8s.libsonnet';
local anubis = import 'utils/anubis.libsonnet';


local name = 'anubis';
local namespace = 'anubis';
[
  k8s.networking.ingress(name, namespace, host='anubis.%s' % globals.domain, servicePort=8080, ingressClass='traefik-external'),
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
        value: 'https://anubis.%s' % globals.domain,
      },
      {
        name: 'COOKIE_DOMAIN',
        value: globals.domain,
      },
    ])

  ),
  anubis.anubisPasswordSecret(name, namespace),
  k8s.builder.definition.new('traefik.io/v1alpha1', 'Middleware', 'anubis-auth', namespace).withSpec({
    forwardAuth: {
      address: 'http://%s.%s:8080/.within.website/x/cmd/anubis/api/check' % [name, namespace],
    },
  }),
  k8s.builder.core.namespace.new('anubis'),
]
