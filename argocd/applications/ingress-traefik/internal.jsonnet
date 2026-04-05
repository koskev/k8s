local globals = import 'globals.libsonnet';
local ingress = import 'ingress.libsonnet';


local name = 'ingress-traefik-internal';
local namespace = 'ingress-traefik-internal';
ingress.traefik(
  name,
  namespace,
  globals.ips.ingress_traefik_internal,
  globals.ingress.internal.name
)
