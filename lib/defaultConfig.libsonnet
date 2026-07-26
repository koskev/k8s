{ applications+: { postgres+: { cnpg+: { config+: (import 'argocd/applications/postgres/cnpg/config.libsonnet') } } }, argocd+: { config+: (import 'argocd/argocd/config.libsonnet') } }
