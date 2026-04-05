local globals = import 'globals.libsonnet';
local ingress = import 'ingress.libsonnet';


local name = 'ingress-traefik-external';
local namespace = 'ingress-traefik-external';
ingress.traefik(
  name,
  namespace,
  globals.ips.ingress_traefik_external,
  globals.ingress.external.name
)
