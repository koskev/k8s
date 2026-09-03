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
        //argocd.appSettings(name='default', recursive=false, passInput=false),
        argocd.appSettings(name='cert-manager'),
        argocd.appSettings(name='external-secrets'),
        argocd.appSettings(name='ingress-traefik'),
        //argocd.appSettings(name='matrix', passInput=false),
        argocd.appSettings(name='monitoring'),
        argocd.appSettings(name='openbao'),
        argocd.appSettings(name='postgres'),
        argocd.appSettings(name='emqx'),
        argocd.appSettings(name='reloader'),
        argocd.appSettings(name='navidrome'),
        //argocd.appSettings(name='paperless'),
        argocd.appSettings(name='forgejo'),
        //argocd.appSettings(name='automation', passInput=false),
        argocd.appSettings(name='grafana', exclude='dashboards/*'),
        argocd.appSettings(name='kube-system'),
        //argocd.appSettings(name='fittrackee'),
        //argocd.appSettings(name='immich'),
        //argocd.appSettings(name='borg'),
        argocd.appSettings(name='authelia'),
      ],
    },
  },
}
