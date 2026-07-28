local ingress = import 'ingress.libsonnet';


local name = 'ingress-traefik-external';
local namespace = 'ingress-traefik-external';
function(input=import 'defaultInput.libsonnet')
  ingress.traefik(
    name,
    namespace,
    input.globals.config.ips.ingress_traefik_external,
    input.globals.config.ingress.external.name
  )
