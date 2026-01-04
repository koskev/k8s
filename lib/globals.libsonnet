{
  repository: 'https://github.com/koskev/k8s',
  ips: {
    pihole: '192.168.10.2',
    ingress_traefik_external: '192.168.10.4',
    emqx: '192.168.10.5',
    unbound: '192.168.10.6',
    ingress_traefik_internal: '192.168.10.8',
    wireguard: '192.168.10.10',
    ingress_nginx: '192.168.10.30',
  },
  backup: {
    kokev: {
      knownHost: 'borg.kokev.de ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIE9k3PeqhT6K3G+piKPCPfz5bLhVTQCPz+w3Efjs8TTj',
    },
  },
}
