{
  globals+: {
    config+: {
      id: 'home',
      ips: {
        pihole: '192.168.10.2',
        emqx: '192.168.10.5',
        unbound: '192.168.10.6',
        ingress_traefik_external: '192.168.10.4',
        ingress_traefik_internal: '192.168.10.30',
        wireguard: '192.168.10.10',
      },
    },
  },
}
