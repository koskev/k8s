local argocd = import 'argocd.libsonnet';
{
  globals+: {
    config+: {
      id: 'test',
      domain: '0--1.nip.io',
      default_issuer: 'internal-issuer',
      ingress: {
        internal: {
          name: 'traefik-internal',
        },
        external: {
          name: 'traefik-internal',
        },
      },
      ips: {
        pihole: '10.89.0.2',
        emqx: '10.89.0.5',
        unbound: '10.89.0.6',
        ingress_traefik_external: '10.89.0.4',
        ingress_traefik_internal: '10.89.0.30',
        wireguard: '10.89.0.10',
      },
    },
  },
  applications+: {
    cert_manager+: {
      desec+: {
        config+: {
          enabled: false,
        },
      },
    },
    openbao+: {
      config+: {
        affinity: {},
        unsealWithSecret: true,
      },
    },
    postgres+: {
      cnpg+: {
        config+: {
          localPVs: [
            {
              name: 'psql1',
              sizeGB: 10,
              path: '/var/lib/postgres1',
              hostname: 'kind-worker',
            },
            {
              name: 'psql2',
              sizeGB: 10,
              path: '/var/lib/postgres2',
              hostname: 'kind-worker2',
            },
            {
              name: 'psql3',
              sizeGB: 10,
              path: '/var/lib/postgres3',
              hostname: 'kind-worker3',
            },
          ],
        },
      },
    },
    config+: {
      apps: [
        //argocd.appSettings(name='default', recursive=false),
        argocd.appSettings(name='cert-manager', passInput=true),
        argocd.appSettings(name='external-secrets', passInput=true),
        argocd.appSettings(name='ingress-traefik', passInput=true),
        //argocd.appSettings(name='matrix'),
        argocd.appSettings(name='monitoring', passInput=true),
        argocd.appSettings(name='openbao', passInput=true),
        argocd.appSettings(name='postgres', passInput=true),
        argocd.appSettings(name='emqx', passInput=true),
        argocd.appSettings(name='reloader'),
        argocd.appSettings(name='navidrome', passInput=true),
        //argocd.appSettings(name='paperless'),
        //argocd.appSettings(name='forgejo'),
        //argocd.appSettings(name='automation'),
        argocd.appSettings(name='grafana', exclude='dashboards/*'),
        argocd.appSettings(name='kube-system'),
        //argocd.appSettings(name='fittrackee'),
        //argocd.appSettings(name='immich'),
        //argocd.appSettings(name='borg'),
        argocd.appSettings(name='authelia', passInput=true),
      ],
    },
  },
}
