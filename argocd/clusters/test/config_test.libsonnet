local argocd = import 'argocd.libsonnet';
{
  globals+: {
    config+: {
      domain: '0--1.nip.io',
      default_issuer: 'internal-issuer',
      ingress: {
        internal: {
          name: 'cloud-provider-kind',
        },
        external: {
          name: 'cloud-provider-kind',
        },
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
              hostname: 'kind-control-plane',
            },
            {
              name: 'psql2',
              sizeGB: 10,
              path: '/var/lib/postgres2',
              hostname: 'kind-control-plane',
            },
            {
              name: 'psql3',
              sizeGB: 10,
              path: '/var/lib/postgres3',
              hostname: 'kind-control-plane',
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
        ////argocd.appSettings(name='ingress-nginx'),
        //argocd.appSettings(name='ingress-traefik'),
        //argocd.appSettings(name='kube-flannel'),
        //argocd.appSettings(name='matrix'),
        //argocd.appSettings(name='metallb-system'),
        //argocd.appSettings(name='monitoring'),
        argocd.appSettings(name='openbao', passInput=true),
        argocd.appSettings(name='postgres', passInput=true),
        //argocd.appSettings(name='emqx'),
        argocd.appSettings(name='reloader'),
        argocd.appSettings(name='navidrome'),
        //// argocd.appSettings(name='trivy'),
        //argocd.appSettings(name='paperless'),
        //argocd.appSettings(name='forgejo'),
        //argocd.appSettings(name='automation'),
        //argocd.appSettings(name='grafana', exclude='dashboards/*'),
        //argocd.appSettings(name='kube-system'),
        //argocd.appSettings(name='fittrackee'),
        //argocd.appSettings(name='immich'),
        //argocd.appSettings(name='borg'),
        ////argocd.appSettings(name='authentik'),
        //argocd.appSettings(name='authelia'),
      ],
    },
  },
}
