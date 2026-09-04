local argocd = import 'argocd.libsonnet';
{
  globals+: {
    config+: {
      id: 'test_minikube',
      branch: 'dev',
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
        pihole: '192.168.40.2',
        emqx: '192.168.40.5',
        unbound: '192.168.40.6',
        ingress_traefik_external: '192.168.40.4',
        ingress_traefik_internal: '192.168.40.30',
        wireguard: '192.168.40.10',
      },
    },
  },
  applications+: {
    metallb_system+: {
      config+: {
        pools: {
          'auto-pool': {
            addresses: ['192.168.40.100-192.168.40.254'],
          },
          'manual-pool': {
            addresses: ['192.168.40.2-192.168.40.99'],
            autoAssign: false,
          },
        },
      },
    },
    immich+: {
      config+: {
        fixed_host: 'minikube-m02',
      },
    },
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
              hostname: 'minikube-m02',
            },
            {
              name: 'psql2',
              sizeGB: 10,
              path: '/var/lib/postgres2',
              hostname: 'minikube-m03',
            },
            {
              name: 'psql3',
              sizeGB: 10,
              path: '/var/lib/postgres3',
              hostname: 'minikube-m04',
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
        argocd.appSettings(name='paperless'),
        argocd.appSettings(name='forgejo'),
        //argocd.appSettings(name='automation', passInput=false),
        argocd.appSettings(name='grafana', exclude='dashboards/*'),
        argocd.appSettings(name='kube-system'),
        argocd.appSettings(name='fittrackee'),
        argocd.appSettings(name='immich'),
        argocd.appSettings(name='borg'),
        argocd.appSettings(name='authelia'),
        argocd.appSettings(name='renovate'),

        argocd.appSettings(name='metallb-system'),
      ],
    },
  },
}
