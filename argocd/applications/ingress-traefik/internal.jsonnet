local ingress = import 'ingress.libsonnet';


local name = 'ingress-traefik-internal';
local namespace = 'ingress-traefik-internal';
function(input=import 'defaultInput.libsonnet')
  if input.globals.config.ingress.internal.name == input.globals.config.ingress.external.name then [] else
    ingress.traefik(
      name,
      namespace,
      input.globals.config.ips.ingress_traefik_internal,
      input.globals.config.ingress.internal.name
    )
