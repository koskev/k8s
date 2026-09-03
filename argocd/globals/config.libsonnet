{
  local outerSelf = self,
  id: 'test',
  domain: 'kokev.de',
  branch: 'main',
  default_issuer: 'kokev-issuer',
  ingress: {
    internal: {
      name: 'traefik-internal',
    },
    external: {
      name: 'traefik-external',
    },
  },
  ips: {
    pihole: '192.168.10.2',
    emqx: '192.168.10.5',
    unbound: '192.168.10.6',
    ingress_traefik_external: '192.168.10.4',
    ingress_traefik_internal: '192.168.10.30',
    wireguard: '192.168.10.10',
  },
  urls: {
    auth: 'https://auth.%s' % outerSelf.domain,
  },
  backup: {
    kokev: {
      knownHost: 'borg-backup.borg ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIAZKpVGwlYrOwYZ+QSd89RJopO+Iv9f0aIVYgf0tYr0i',
    },
  },
}
